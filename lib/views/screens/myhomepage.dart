import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagesList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Z8_7pdaPIfBaleVjJYFL1CDbFn5mwl218g&usqp=CAU',
    'https://cdn4.sharechat.com/meOwMeoWpOoNaKuTty..%E2%9C%A8_2d0b6163_1643369035652_sc_cmprsd_40.jpg?tenant=sc&referrer=tag-service&f=rsd_40.jpg',
    'https://yt3.googleusercontent.com/Cc9oFJwyV5MVxUiETypkoo7MEtRwkhFhqabQKigJftVs6IiPIK3rZVZMLhsdCcXPzwQIYgsN=s900-c-k-c0x00ffffff-no-rj'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
        ),
        items: imagesList
            .map(
              (item) => Container(
                child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            )
            .toList(),
      )
      ]),
    );
  }
}
