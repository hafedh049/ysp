import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ysp/views/footer.dart';

import '../utils/helpers/social_media.dart';
import '../utils/shared.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _typewrites = const <String>['Through Pixels and Code', 'Our Cyber Stories Unfold.', 'SecuriNets for life.'];

  bool _categoriesState = false;

  bool _certifState = false;

  final String _review = "CRTP Overview Hello Everyone, I am Foued SAIDI. I work as a Security Engineer @Security Impossible.I have just passed the Cer...";

  bool _readMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Hello, I'm Yassine SAHLI", style: GoogleFonts.itim(fontSize: 45, fontWeight: FontWeight.w500, color: yellow)),
                      const SizedBox(width: 10),
                      const Icon(FontAwesome.hands_clapping_solid, size: 35, color: Colors.yellowAccent),
                    ],
                  ),
                  const SizedBox(height: 30),
                  AnimatedTextKit(
                    animatedTexts: <AnimatedText>[
                      for (final String typew in _typewrites) TypewriterAnimatedText(typew, textStyle: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: yellow), speed: 70.ms),
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
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Center(
              child: SizedBox(
                height: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: dark, border: Border.all(width: .3, color: lightWhite)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(child: Center(child: Text("Yassine SAHLI's Blog", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)))),
                              const Divider(thickness: .5, height: .5, color: lightWhite),
                              Expanded(
                                child: Center(
                                  child: StatefulBuilder(
                                    builder: (BuildContext context, void Function(void Function()) _) {
                                      return InkWell(
                                        highlightColor: transparent,
                                        hoverColor: transparent,
                                        splashColor: transparent,
                                        onHover: (bool value) => _(() => _categoriesState = value),
                                        onTap: () {},
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(FontAwesome.folder_solid, size: 20, color: _categoriesState ? teal : lightWhite),
                                            const SizedBox(width: 10),
                                            AnimatedDefaultTextStyle(
                                              duration: 300.ms,
                                              style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _categoriesState ? teal : lightWhite),
                                              child: const Text("Categories"),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: dark, border: Border.all(width: .3, color: lightWhite)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset("assets/images/logo.png", width: 80, height: 80)),
                                const SizedBox(height: 10),
                                Text("Yassine SAHLI", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)),
                                const SizedBox(height: 10),
                                Text("LvL 1", style: GoogleFonts.itim(fontSize: 12, fontWeight: FontWeight.w500, color: lightWhite)),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("0", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)),
                                        const SizedBox(height: 10),
                                        Text("Tags", style: GoogleFonts.itim(fontSize: 14, fontWeight: FontWeight.w500, color: lightWhite)),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("1", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)),
                                        const SizedBox(height: 10),
                                        Text("Categories", style: GoogleFonts.itim(fontSize: 14, fontWeight: FontWeight.w500, color: lightWhite)),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("1", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)),
                                        const SizedBox(height: 10),
                                        Text("Posts", style: GoogleFonts.itim(fontSize: 14, fontWeight: FontWeight.w500, color: lightWhite)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: dark, border: Border.all(width: .5, color: lightWhite)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                StatefulBuilder(
                                  builder: (BuildContext context, void Function(void Function()) _) {
                                    return InkWell(
                                      highlightColor: transparent,
                                      hoverColor: transparent,
                                      splashColor: transparent,
                                      onHover: (bool value) => _(() => _certifState = value),
                                      onTap: () {},
                                      child: Row(
                                        children: <Widget>[
                                          Flexible(
                                            child: AnimatedDefaultTextStyle(
                                              duration: 300.ms,
                                              style: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.bold, color: _certifState ? teal : lightWhite),
                                              child: const Text("Certified Red Team Professional (CRTP) - Review"),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Icon(FontAwesome.rocket_solid, size: 20, color: _certifState ? teal : red),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 20),
                                Text("${_review.split(" ").take(15).join(" ")}...", style: GoogleFonts.itim(fontSize: 16, fontWeight: FontWeight.w500, color: lightWhite)),
                                const SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        const Icon(FontAwesome.calendar, size: 20, color: lightWhite),
                                        const SizedBox(width: 10),
                                        Text("2023-12-22", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: lightWhite)),
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    StatefulBuilder(
                                      builder: (BuildContext context, void Function(void Function()) _) {
                                        return InkWell(
                                          highlightColor: transparent,
                                          hoverColor: transparent,
                                          splashColor: transparent,
                                          onHover: (bool value) => _(() => _categoriesState = value),
                                          onTap: () {},
                                          child: Row(
                                            children: <Widget>[
                                              Icon(FontAwesome.folder_tree_solid, size: 20, color: _categoriesState ? teal : lightWhite),
                                              const SizedBox(width: 10),
                                              Text("Certifications", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _categoriesState ? teal : lightWhite)),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(width: 20),
                                    const Spacer(),
                                    StatefulBuilder(
                                      builder: (BuildContext context, void Function(void Function()) _) {
                                        return InkWell(
                                          highlightColor: transparent,
                                          hoverColor: transparent,
                                          splashColor: transparent,
                                          onHover: (bool value) => _(() => _readMore = value),
                                          onTap: () {},
                                          child: Row(
                                            children: <Widget>[
                                              AnimatedDefaultTextStyle(
                                                duration: 300.ms,
                                                style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _readMore ? teal : lightWhite),
                                                child: const Text("Read more"),
                                              ),
                                              const SizedBox(width: 5),
                                              Icon(FontAwesome.chevron_right_solid, size: 15, color: _readMore ? teal : lightWhite),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: AnimatedContainer(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              duration: 300.ms,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: teal),
                              child: Text("1", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.bold, color: dark)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Footer()
        ],
      ),
    );
  }
}
