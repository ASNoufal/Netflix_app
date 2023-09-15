import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/search/idealpage.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(
                10,
                (index) => Container(
                      color: Colors.accents[index],
                    ))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CircleAvatar(
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.volume_off)),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg"),
                ),
                FastLaughIcons(
                    icons: Icons.emoji_emotions_rounded, name: "LoL"),
                FastLaughIcons(icons: Icons.add, name: "My List"),
                FastLaughIcons(icons: Icons.navigation_outlined, name: "Share"),
                FastLaughIcons(icons: Icons.play_arrow, name: "Play")
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FastLaughIcons extends StatelessWidget {
  const FastLaughIcons({
    super.key,
    required this.icons,
    required this.name,
  });
  final IconData icons;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Icon(
            icons,
            color: Colors.white,
            size: 30,
          ),
          Text(
            name,
            style: GoogleFonts.montserrat(fontSize: 16),
          )
        ],
      ),
    );
  }
}
