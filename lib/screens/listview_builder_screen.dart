import 'dart:math';

import 'package:flutter/material.dart';

class LisviewBuilderScreen extends StatefulWidget {
  const LisviewBuilderScreen({super.key});

  @override
  State<LisviewBuilderScreen> createState() => _LisviewBuilderScreenState();
}

class _LisviewBuilderScreenState extends State<LisviewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
//print('${(scrollController.position.pixels)}, ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        controller: scrollController,
        itemCount: imagesIds.length,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage("assets/carga.gif"),
              image: NetworkImage(
                  'https://picsum.photos/500/300?image=${imagesIds[index]}'));
        },
      ),
    ));
  }
}
