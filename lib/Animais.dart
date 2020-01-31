import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {

  AudioCache _player = AudioCache(prefix: "audios/");

  _executarSom(String nomeAudio){
    _player.play("$nomeAudio.mp3");
  }

  @override
  void initState() {
    super.initState();
    _player.loadAll([
      "cao.mp3",
      "gato.mp3",
      "leao.mp3",
      "macaco.mp3",
      "ovelha.mp3",
      "vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/cao.png"),
          onTap: (){
            _executarSom("cao");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/gato.png"),
          onTap: (){
            _executarSom("gato");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/leao.png"),
          onTap: (){
            _executarSom("leao");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/macaco.png"),
          onTap: (){
            _executarSom("macaco");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/ovelha.png"),
          onTap: (){
            _executarSom("ovelha");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/vaca.png"),
          onTap: (){
            _executarSom("vaca");
          },
        ),
      ],
    );
  }
}
