import 'package:appdate/src/activities/home_activity.dart';
import 'package:appdate/src/activities/login_activity.dart';
import 'package:flutter/material.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {

      'login'         : ( BuildContext context ) => LogInActivity(),  
      'home'         : ( BuildContext context ) => HomeActivity(),
  };

}
