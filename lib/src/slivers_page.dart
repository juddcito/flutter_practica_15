

import 'dart:math';

import 'package:flutter/material.dart';

class SliversPage extends StatelessWidget {

  final rnd = new Random();
  final List<Color> colores = [
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.grey,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.lime
  ];

  SliversPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> items = List.generate(70, (index) => Container(
      height: 100,
      color: colores[rnd.nextInt(this.colores.length)],
      width: double.infinity,
    ));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Práctica 15 - Slivers'),
            centerTitle: true,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: Image.network(
              "https://64.media.tumblr.com/13f2b32ca1910eaaa32923af309247b8/20cdf3e1aa04bf87-dc/s400x600/2923aba36268703d14e647f0e4647398d95469b9.png",
              fit: BoxFit.cover
            )
          ),
          SliverList(
            delegate: SliverChildListDelegate(items)
          )
        ],
      ),
    );
  }
}