import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
  ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibol First App'),
        centerTitle: true,
        backgroundColor: Colors.purple[500],
      ),
      body: Container(
        child:Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Hello 1'),
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Hello 2'),
                color: Colors.green,
              ),
            ),Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Hello 3'),
                color: Colors.blue,
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('+'),
        backgroundColor: Colors.purple[500],
      ),
    );
  }
}