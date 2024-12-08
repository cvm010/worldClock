import 'package:flutter/material.dart';
import 'package:weather/pages/choose_location.dart';
import 'package:weather/pages/loading.dart';
import 'pages/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));