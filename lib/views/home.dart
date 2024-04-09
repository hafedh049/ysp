import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ysp/views/footer.dart';

import '../utils/helpers/social_media.dart';
import '../utils/shared.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/home_bg.png"), fit: BoxFit.cover),
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Hello, I'm Yassine SAHLI 👋", style: GoogleFonts.itim(fontSize: 45, fontWeight: FontWeight.w500, color: yellow)),
                  const SizedBox(height: 30),
                  AnimatedTextKit(
                    animatedTexts: <AnimatedText>[
                      TypewriterAnimatedText(
                        'Through Pixels and Code',
                        textStyle: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: yellow),
                        speed: 70.ms,
                      ),
                      TypewriterAnimatedText(
                        'Our Cyber Stories Unfold.',
                        textStyle: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: yellow),
                        speed: 70.ms,
                      ),
                      TypewriterAnimatedText(
                        'SecuriNets for life.',
                        textStyle: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: yellow),
                        speed: 70.ms,
                      ),
                    ],
                    repeatForever: true,
                    pause: 1.seconds,
                  ),
                  const SizedBox(height: 30),
                  const Center(child: SocialMedia()),
                ],
              ),
            ),
          ),
          const Footer()
        ],
      ),
    );
  }
}
