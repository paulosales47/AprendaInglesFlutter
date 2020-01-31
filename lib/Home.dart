import 'package:aprendendo_ingles/Animais.dart';
import 'package:aprendendo_ingles/Numeros.dart';
import 'package:aprendendo_ingles/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprendendo inglês"),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          //indicatorColor: Colors.white,
          //labelColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[
            Tab(
              text: "Animais",
            ),
            Tab(
              text: "Números",
            ),
            Tab(
              text: "Vogais",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Animais(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
