import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:http/http.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Loading(),
  // initialRoute: '/location',
  // routes: {
  //   '/':(context) => Loading(),
  //   '/home':(context) => Home(),
  //   '/location':(context) => ChooseLocation(),
  // },
));


