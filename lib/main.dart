import 'package:flutter/material.dart';
import 'package:appdate/src/preferencias_usuario/proferencias_usuario.dart';
import 'package:appdate/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
/*
 * 
 * 
 * developed by asalazarj
 */
void main() async {
  
    final prefs = new PreferenciasUsuario();
    WidgetsFlutterBinding.ensureInitialized();
    await prefs.initPrefs();

    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'AppDate',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ], 
          supportedLocales: [
            const Locale('en', 'US'), // English
            const Locale('es', 'ES'), // Spanish
          ],
          initialRoute: 'login', //change
          //initialRoute: 'change',
          routes: getApplicationRoutes(),
          theme: ThemeData(
            primaryColor: Colors.blue
          ),  
    );
  }
}