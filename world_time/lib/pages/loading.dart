import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
   // Loading({super.key});
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
    //print('Hey There');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Text('$time')
          ],
        ),
      ),
    );
  }
}
