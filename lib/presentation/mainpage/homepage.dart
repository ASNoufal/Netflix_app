import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 650,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  left: 10,
                  bottom: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            "My List",
                            style: GoogleFonts.montserrat(fontSize: 18),
                          )
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(
                          "Play",
                          style: GoogleFonts.montserrat(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            "Info",
                            style: GoogleFonts.montserrat(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const MainPagesetup(
              test: "TV -Dramas",
            ),
            const MainPagesetup(test: "Trending now"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const maintexttitle(test: "Top 10"),
                LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => Topten(
                              index: index,
                            )),
                  ),
                )
              ],
            ),
            const MainPagesetup(test: "Top picks")
          ],
        ),
      ),
    );
  }
}

class Movie_background_image extends StatelessWidget {
  const Movie_background_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.325,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(
                "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg"),
          ),
        ),
      ),
    );
  }
}

class MainPagesetup extends StatelessWidget {
  const MainPagesetup({super.key, required this.test});
  final String test;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        maintexttitle(test: test),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
                List.generate(10, (index) => const Movie_background_image()),
          ),
        ),
      ],
    );
  }
}

class Topten extends StatelessWidget {
  const Topten({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 60,
              height: 200,
            ),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.themoviedb.org/t/p/w220_and_h330_face/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg'))),
            ),
          ],
        ),
        Positioned(
          left: 20,
          bottom: -40,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 5,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 140,
              ),
            ),
          ),
        )
      ],
    );
  }
}
