import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 300.ms,
    );
  }
}
