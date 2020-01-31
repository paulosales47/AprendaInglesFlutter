import 'package:flutter/material.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {

  @override
  Widget build(BuildContext context) {

    double _largura = MediaQuery.of(context).size.width;
    double _altura = MediaQuery.of(context).size.height;
    print(_altura);
    print(_largura);
    print(MediaQuery.of(context).size.aspectRatio);

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          child: Image.asset("assets/images/gato.png"),
        ),
      ],
    );
  }
}
