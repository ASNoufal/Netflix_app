import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart';
import 'package:netflix/constant/constant.dart';
import 'package:netflix/presentation/mainpage/widgets/Mainpagefirstsection.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';
import 'package:netflix/widgets/appbar_.dart';

ValueNotifier valueNotifier = ValueNotifier(true);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.top10());
      context.read<HomeBloc>().add(const HomeEvent.tvdramasevent());
      context
          .read<DownloadsBloc>()
          .add(const DownloadsEvent.getdownloadsimage());
      context.read<HotandnewBloc>().add(const HotandnewEvent.commingSoon());
    });
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
                        test: "TV-Dramas",
                      ),
                      const TrendingScreen(test: "Trending Now"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const maintexttitle(test: "Top 10"),
                          LimitedBox(
                            maxHeight: 200,
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                if (state.isloading) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (state.isError) {
                                  return const Text("eroor");
                                } else if (state.toptendatas.isEmpty) {
                                  return const Text("Nodata");
                                }
                                return ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                      (state.toptendatas.length),
                                      (index) => Topten.tvdrama(
                                            index: index,
                                            posterpath: state
                                                .toptendatas[index].posterpath,
                                          )),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      const Toppicksscreen(test: "Top picks")
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
  final String posterpath;
  const Movie_background_image({super.key, required this.posterpath});
  const Movie_background_image.trendingnow(
      {super.key, required this.posterpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.325,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage("$imageurl$posterpath"),
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
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isloading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return Center(
                  child: Text("error"),
                );
              } else if (state.tvdramasdatas.isEmpty) {
                return Center(
                  child: Text("nodata"),
                );
              }
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    state.tvdramasdatas.length,
                    (index) => Movie_background_image(
                          posterpath: state.tvdramasdatas[index].posterpath,
                        )),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Topten extends StatelessWidget {
  final String posterpath;
  const Topten.tvdrama(
      {super.key, required this.index, required this.posterpath});
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
                  image: DecorationImage(
                      image: NetworkImage('$imageurl$posterpath'))),
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

class TrendingScreen extends StatelessWidget {
  final String test;
  const TrendingScreen({super.key, required this.test});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        maintexttitle(test: test),
        LimitedBox(
          maxHeight: 200,
          child: BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              if (state.isloading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return Center(
                  child: Text("error"),
                );
              } else if (state.downloads.isEmpty) {
                return Center(
                  child: Text("nodata"),
                );
              }
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    state.downloads.length,
                    (index) => Movie_background_image(
                          posterpath: state.downloads[index].posterPath!,
                        )),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Toppicksscreen extends StatelessWidget {
  final String test;
  const Toppicksscreen({super.key, required this.test});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        maintexttitle(test: test),
        LimitedBox(
          maxHeight: 200,
          child: BlocBuilder<HotandnewBloc, HotandnewState>(
            builder: (context, state) {
              if (state.isloading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return Center(
                  child: Text("error"),
                );
              } else if (state.commingsoon.isEmpty) {
                return Center(
                  child: Text("nodata"),
                );
              }
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    state.commingsoon.length,
                    (index) => Movie_background_image(
                          posterpath: state.commingsoon[index].posterpath,
                        )),
              );
            },
          ),
        ),
      ],
    );
  }
}
