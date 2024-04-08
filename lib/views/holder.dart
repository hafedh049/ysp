import 'package:flutter/material.dart';
import 'package:ysp/views/header.dart';
import 'package:ysp/views/home.dart';

class Holder extends StatefulWidget {
  const Holder({super.key});

  @override
  State<Holder> createState() => _HolderState();
}

class _HolderState extends State<Holder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Home(),
          const Header(),
        ],
      ),
    );
  }
}
