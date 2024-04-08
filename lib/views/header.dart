import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ysp/utils/shared.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final List<bool> _states = List<bool>.generate(4, (int index) => false);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Row(
            children: <Widget>[
              const Spacer(),
              Text("Yassine Sahli's Blog", style: GoogleFonts.itim(fontSize: 22, fontWeight: FontWeight.w500, color: lightWhite)),
              const Spacer(),
              StatefulBuilder(
                builder: (BuildContext context, void Function(void Function()) _) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        splashColor: transparent,
                        highlightColor: transparent,
                        hoverColor: transparent,
                        onHover: (bool value) => _(() => _states[0] = value),
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Icon(FontAwesome.house_solid, color: teal, size: 15),
                                const SizedBox(width: 10),
                                AnimatedDefaultTextStyle(
                                  duration: 300.ms,
                                  style: GoogleFonts.itim(
                                    letterSpacing: 2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: _states[0] ? teal : lightWhite,
                                  ),
                                  child: const Text("HOME"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            AnimatedContainer(duration: 300.ms, height: .5, color: teal, width: 50),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
