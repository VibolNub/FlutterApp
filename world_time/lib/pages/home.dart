import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   centerTitle: true,
      //   title: Text('Red'),
      // ),
      
      body: SafeArea(
      child: TextButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, '/location');
          },
          icon: Icon(Icons.edit_location),
          label: Text('Choose Location')),
      ),
    );
  }
}
