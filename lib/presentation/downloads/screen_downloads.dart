import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/widgets/appbar_.dart';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(
            title: "Downloads",
          )),
      body: ListView(
        children: [
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: kDefaultIconLightColor,
                size: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Smart download',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text("Introducting Downloads for You",
                style: GoogleFonts.montserrat(
                    fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          Text(
            "We'll download a personaised selection of \nmovies and shows for you, so thers's \n always something to watch on \nyour device.",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size.width,
                height: size.width,
                color: Colors.black,
              ),
              CircleAvatar(
                radius: size.width * 0.42,
                backgroundColor: Colors.grey[900],
              ),
              image(
                  size,
                  0,
                  20,
                  const EdgeInsets.only(
                    left: 190,
                    bottom: 70,
                  ),
                  0.4,
                  0.58),
              image(
                  size,
                  1,
                  -20,
                  const EdgeInsets.only(
                    right: 200,
                    bottom: 70,
                  ),
                  0.4,
                  0.58),
              image(size, 2, 0, const EdgeInsets.only(), 0.48, 0.70)
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text(
                "Set Up",
                style: TextStyle(color: kDefaultIconLightColor, fontSize: 26),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 4),
            child: MaterialButton(
              onPressed: () {},
              color: kDefaultIconLightColor,
              child: const Text(
                "See What you can download",
                style: TextStyle(color: kDefaultIconDarkColor, fontSize: 22),
              ),
            ),
          )
        ],
      ),
    );
  }

  Transform image(Size size, int number, int angle, EdgeInsets margin,
      double width, double height) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * width,
        height: size.width * height,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            image: DecorationImage(image: NetworkImage(photo[number]))),
      ),
    );
  }
}

List photo = [
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg",
  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/6oH378KUfCEitzJkm07r97L0RsZ.jpg",
];
