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
  final List<Map<String, dynamic>> _headers = <Map<String, dynamic>>[
    <String, dynamic>{
      "title": "HOME",
      "icon": FontAwesome.house_solid,
      "callback": () {},
      "state": false,
    },
    <String, dynamic>{
      "title": "ARCHIVES",
      "icon": FontAwesome.box_archive_solid,
      "callback": () {},
      "state": false,
    },
    <String, dynamic>{
      "title": "CATEGORIES",
      "icon": FontAwesome.folder_solid,
      "callback": () {},
      "state": false,
    },
    <String, dynamic>{
      "title": "ABOUT",
      "icon": FontAwesome.user_solid,
      "callback": () {},
      "state": false,
    },
  ];

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
                      for (int index = 0; index < _headers.length; index += 1)
                        InkWell(
                          splashColor: transparent,
                          highlightColor: transparent,
                          hoverColor: transparent,
                          onHover: (bool value) => _(() => _headers[index]["state"] = value),
                          onTap: _headers[index]["callback"],
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              AnimatedContainer(
                                duration: 300.ms,
                                margin: index == _headers.length - 1 ? null : const EdgeInsets.only(right: 20),
                                padding: const EdgeInsets.only(bottom: 8),
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: _headers[index]["state"] ? teal : transparent, width: 2))),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(_headers[index]["icon"], color: _headers[index]["state"] ? teal : lightWhite, size: 15),
                                    const SizedBox(width: 10),
                                    AnimatedDefaultTextStyle(
                                      duration: 300.ms,
                                      style: GoogleFonts.itim(letterSpacing: 2, fontSize: 16, fontWeight: FontWeight.w500, color: _headers[index]["state"] ? teal : lightWhite),
                                      child: Text(_headers[index]["title"]),
                                    ),
                                  ],
                                ),
                              ),
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
