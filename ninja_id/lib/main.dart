import 'package:flutter/material.dart';

void main() =>  runApp(const MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ninja ID Card'),
        backgroundColor: Colors.grey.shade700,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/chun-li.jpg'),
              ),
            ),
            const Divider(
              height: 70,
              color: Colors.white,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0,),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: 50,
                ),
                Text(
                  'chun-li@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}