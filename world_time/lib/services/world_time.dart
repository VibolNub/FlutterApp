import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location,required this.flag, required this.url});

  Future<void> getTime() async {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    print(datetime);
    print(offset);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

    //set time property
    time = now.toString();
  }
}

