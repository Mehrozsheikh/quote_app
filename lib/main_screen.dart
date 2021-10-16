import 'package:flutter/material.dart';
import 'box_component.dart';
import 'model.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<ImageModel> listImages = [
    ImageModel(
        title: '“Everything you can imagine is real.”',
        url: "assets/images/img1.jpg"),
    ImageModel(
        title: '“Whatever you are, be a good one.”',
        url: "assets/images/img2.jpg"),
    ImageModel(
        title: '“Impossible is just an opinion.”',
        url: "assets/images/img3.jpg"),
    ImageModel(
        title: '“Hold the vision, trust the process.”',
        url: "assets/images/img4.jpg"),
    ImageModel(
        title: '“One day or day one. You decide.”',
        url: "assets/images/img5.jpg"),
    ImageModel(
        title: '“Hustle in silence and let your success make the noise.”',
        url: "assets/images/img6.jpg"),
    ImageModel(
        title: '“Leaders can let you fail and yet not let you be a failure.”',
        url: "assets/images/img7.jpg"),
    ImageModel(
        title: '“Start where you are. Use what you have. Do what you can.”',
        url: "assets/images/img8.jpg"),
    ImageModel(
        title: '“What defines us is how well we rise after falling.”',
        url: "assets/images/img9.jpg"),
    ImageModel(
        title: '“Doubt kills more dreams than failure ever will.”',
        url: "assets/images/img10.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Quote App",
          style: TextStyle(fontSize: 26),
        ),
        leading: const Icon(
          Icons.home,
          size: 33,
        ),
      ),
      body: ListView.builder(
          itemCount: listImages.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: BoxComponent(
                title: listImages[index].title,
                url: listImages[index].url,
                key: UniqueKey(),
              ),
            );
          }),
    );
  }
}
