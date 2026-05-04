import 'package:ada_app/pages/hero_img/hero_img.dart';
import 'package:ada_app/shared/hero_img_circular.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  HeroPage({super.key});

  final urlList = [
    "https://i.ytimg.com/vi/YvYGA1tRooE/hq720.jpg",
    "https://www.torredevigilancia.com/wp-content/uploads/2020/08/patrick-star-wallpaper.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjHQbVU-aUKCx-HJss9UhhjkRARVDSM3Br2A&s",
    "https://www.torredevigilancia.com/wp-content/uploads/2020/08/patrick-star-wallpaper.jpg",
    "https://i.ytimg.com/vi/YvYGA1tRooE/hq720.jpg",
    "https://www.torredevigilancia.com/wp-content/uploads/2020/08/patrick-star-wallpaper.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: urlList.length,
          itemBuilder: (context, index) {
            return HeroImgCircular(
              tag: "$index",
              img1: urlList[index],
              text: "Asdasdasd",
            );
          },
        ),
      ),
    );
  }
}
