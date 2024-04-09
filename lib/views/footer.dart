import 'dart:async';
import 'dart:math';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ysp/utils/shared.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool _hafedh = false;

  late Timer _timelineTimer;

  final GlobalKey<State<StatefulBuilder>> _timelineKey = GlobalKey<State<StatefulBuilder>>();

  bool _visitorCountState = false;
  int _visitorCount = 0;
  bool _totalPageViewsState = false;
  int _totalPageViews = 0;

  List<String> _formatDuration(Duration duration) {
    final String days = duration.inDays.toString();
    final String hours = (duration.inHours % 24).toString();
    final String minutes = (duration.inMinutes % 60).toString();
    final String seconds = (duration.inSeconds % 60).toString();
    return <String>['$days days', '$hours hrs', '$minutes min', '$seconds sec'];
  }

  @override
  void initState() {
    _timelineTimer = Timer.periodic(1.seconds, (Timer timer) => _timelineKey.currentState!.setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _timelineTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: dark, border: Border(top: BorderSide(color: lightWhite))),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("POWERED BY", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
                  const SizedBox(width: 10),
                  const Icon(FontAwesome.hackerrank_brand, color: teal, size: 15),
                  const SizedBox(width: 5),
                  StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) _) {
                      return InkWell(
                        splashColor: transparent,
                        highlightColor: transparent,
                        hoverColor: transparent,
                        onHover: (bool value) => _(() => _hafedh = value),
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AnimatedDefaultTextStyle(
                              duration: 300.ms,
                              style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _hafedh ? teal : lightWhite),
                              child: const Text("Hafedh"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text("VERSION 1.0.0", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("© 2023 - 2024", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
                  const SizedBox(width: 10),
                  const Icon(FontAwesome.heart_solid, color: red, size: 15)
                      .animate(
                        onComplete: (AnimationController controller) => controller.repeat(reverse: true),
                      )
                      .scaleXY(begin: 1.3, end: 1, duration: 500.milliseconds),
                  const SizedBox(width: 10),
                  StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) _) {
                      return InkWell(
                        splashColor: transparent,
                        highlightColor: transparent,
                        hoverColor: transparent,
                        onHover: (bool value) => _(() => _hafedh = value),
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AnimatedDefaultTextStyle(
                              duration: 300.ms,
                              style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _hafedh ? teal : lightWhite),
                              child: const Text("Yassine SAHLI"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Blog up for", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
                  const SizedBox(width: 10),
                  StatefulBuilder(
                    key: _timelineKey,
                    builder: (BuildContext context, void Function(void Function()) _) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          for (final String dur in _formatDuration(DateTime.now().difference(blogUp)))
                            AnimatedFlipCounter(
                              duration: 500.ms,
                              value: int.parse(dur.split(" ").first),
                              suffix: " ${dur.split(" ").last}\t\t",
                              textStyle: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite),
                            ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("VISITOR COUNT", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
                  const SizedBox(width: 10),
                  StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) _) {
                      return InkWell(
                        splashColor: transparent,
                        highlightColor: transparent,
                        hoverColor: transparent,
                        onHover: (bool value) => _(() => _visitorCountState = value),
                        onTap: () => _(() => _visitorCount = Random().nextInt(1025)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AnimatedFlipCounter(
                              duration: 500.ms,
                              value: _visitorCount,
                              textStyle: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _visitorCountState ? teal : lightWhite),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("TOTAL PAGE VIEWS", style: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: darkWhite)),
                  const SizedBox(width: 10),
                  StatefulBuilder(
                    builder: (BuildContext context, void Function(void Function()) _) {
                      return InkWell(
                        splashColor: transparent,
                        highlightColor: transparent,
                        hoverColor: transparent,
                        onHover: (bool value) => _(() => _totalPageViewsState = value),
                        onTap: () => _(() => _totalPageViews = Random().nextInt(1025)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            AnimatedFlipCounter(
                              duration: 500.ms,
                              value: _totalPageViews,
                              textStyle: GoogleFonts.itim(fontSize: 18, fontWeight: FontWeight.w500, color: _totalPageViewsState ? teal : lightWhite),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
