import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
  ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Hi World', author: 'Arthur'),
    Quote(text: 'Micah!!!!', author: 'Rip Van Winkle'),
    Quote(text: 'Whoa', author: 'Morgan Arthur'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:const Text(
            'Awesome Quote',
          style: TextStyle(
            fontSize: 20
          ),
         ),
        centerTitle: true,
        titleTextStyle: const TextStyle(

        ),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: quotes.map((e) => QuoteCard(
            e: e,
            delete: (){
              setState(() {
                quotes.remove(e);
              });
            }
          )).toList(),
    ),
      )
    );}
}


