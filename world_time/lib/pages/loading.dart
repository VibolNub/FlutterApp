import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
   // Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Bangkok'));
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    print(datetime);
    print(offset);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
    //print('Hey There');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(onPressed: (){
              getTime();
            }, icon: Icon(Icons.play_circle), label: Text('Run'))
          ],
        ),
      ),
    );
  }
}
