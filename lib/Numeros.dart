import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  AudioCache _player = AudioCache(prefix: "audios/");

  _executarSom(String nomeAudio){
    _player.play("$nomeAudio.mp3");
  }


  @override
  void initState() {
    super.initState();
    _player.loadAll([
      "1.mp3",
      "2.mp3",
      "3.mp3",
      "4.mp3",
      "5.mp3",
      "6.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/1.png"),
          onTap: (){
            _executarSom("1");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/2.png"),
          onTap: (){
            _executarSom("2");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/3.png"),
          onTap: (){
            _executarSom("3");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/4.png"),
          onTap: (){
            _executarSom("4");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/5.png"),
          onTap: (){
            _executarSom("5");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/6.png"),
          onTap: (){
            _executarSom("6");
          },
        ),
      ],
    );
  }
}
