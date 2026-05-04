import 'package:ada_app/pages/hero_img/hero_img.dart';
import 'package:flutter/material.dart';

class HeroImgCircular extends StatelessWidget {
  final String img1;
  final String text;
  final String tag;
  const HeroImgCircular({
    super.key,
    required this.img1,
    required this.text,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(
              seconds: 1,
            ), // Aqui você controla o tempo real
            pageBuilder: (context, animation, secondaryAnimation) =>
                HeroImg(tag: tag, urlImg: img1, textoDescricao: text),
          ),
        );
      },
      child: Hero(
        tag: 'img$tag',
        child: ClipOval(
          child: Image.network(img1, height: 150, width: 150, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
