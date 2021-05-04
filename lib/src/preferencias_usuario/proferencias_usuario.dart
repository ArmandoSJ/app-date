import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET del nombre
  get usuarioid {
    return _prefs.getString('usuarioid') ?? '';
  }

  set usuarioid ( String value ) {
    _prefs.setString('usuarioid', value);
  }
  
  get usuarios {
    return _prefs.getStringList('usuarios') ?? '';
  }

  set usuarios ( List<String> usuarios ) {
    _prefs.setStringList('usuarios', usuarios);
  }

  /*
   * get and set email 
   */
  set setEmail (String email){
    _prefs.setString('email', email);
  }

  get getEmail{
    return _prefs.getString('email') ?? 'sinCorreo';
  }

  // GET y SET de la última página
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'login';
  }

  set ultimaPagina( String value ) {
    _prefs.setString('ultimaPagina', value);
  }


    // GET y SET del _colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario( bool value ) {
    _prefs.setBool('colorSecundario', value);
  }




}