import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Column(
        children: [

        ],

      ),
    );
  }
}
