import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote e;
  final Function delete;
  QuoteCard({required this.e, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16,16,16,0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              e.text,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              e.author,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 15,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
              child: Divider(height: 10,color: Colors.black54),
            ),
            TextButton.icon(
              onPressed: (){
                delete();
              },
              icon: const Icon(
              Icons.delete,
              color: Colors.red,),
              label: const Text(
              'Remove',
              style: TextStyle(
                color: Colors.red,
              ),
              ),
            )
          ],
        ),
      ),

    );
  }
}