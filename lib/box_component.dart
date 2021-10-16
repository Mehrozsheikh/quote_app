import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BoxComponent extends StatelessWidget {
  String title = "abc";
  String url = "abc";
  BoxComponent({
    Key? key,
    this.title = "abc",
    this.url = "assets/images/img1.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints.expand(height: 650, width: 400),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(url), fit: BoxFit.fitHeight),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 35,
              fontStyle: FontStyle.italic),
        )));
  }
}
