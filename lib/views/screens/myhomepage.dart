import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  List<MessageCard> items = [
    MessageCard(front: 'Front', back: 'Back'),
    MessageCard(front: "Hi", back: 'Xin chào'),
    MessageCard(front: "1", back: "2")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              fill: Fill.fillBack,
              alignment: Alignment.center,
              direction: FlipDirection.HORIZONTAL,
              side: CardSide.FRONT,
              // front of the card
              front: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 200,
                child: Text(items[i].front),
              ),
              // back of the card
              back: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(items[i].back),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.navigate_before,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // ...
                    setState(() {
                      i = (i - 1 >= 0) ? i - 1 : items.length - 1;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // ...
                    setState(() {
                      i = (i + 1 < items.length) ? i + 1 : 0;
                    });
                  },
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}

class MessageCard {
  final String front;
  final String back;

  MessageCard({
    required this.front,
    required this.back,
  });
}
