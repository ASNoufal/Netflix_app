import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/presentation/mainpage/widgets/Mainpagefirstsection.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';
import 'package:netflix/widgets/appbar_.dart';

ValueNotifier valueNotifier = ValueNotifier(true);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ValueListenableBuilder(
          valueListenable: valueNotifier,
          builder: (context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                print(direction);
                if (direction == ScrollDirection.reverse) {
                  valueNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  valueNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      const Mainpagefirstsection(),
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
                  valueNotifier.value
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: const Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP0pTHA8VVWihO6CtPWTTNgPBlQGsQJtySkafuSi1Jd1Pap6t6cwkeQXc_jLIZe2a5VWc&usqp=CAU"),
                                    ),
                                  ),
                                  Expanded(child: AppbarWidget()),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Tv Shows",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Movies",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text("Categories",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            );
          }),
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
