import 'package:flutter/material.dart';

class HeroImg extends StatelessWidget {
  final String urlImg;
  final String textoDescricao;
  final String tag;
  const HeroImg({
    super.key,
    required this.urlImg,
    required this.textoDescricao,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero IMG"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Hero(tag: 'img$tag', child: Image.network(urlImg)),
            SizedBox(height: 20),
            Text(textoDescricao),
          ],
        ),
      ),
    );
  }
}
