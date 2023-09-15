import 'package:flutter/material.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainPagesetup(
              test: "TV -Dramas",
            ),
            MainPagesetup(test: "Trending now"),
            MainPagesetup(test: "Top 10"),
            MainPagesetup(test: "Top picks")
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
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg")))),
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
