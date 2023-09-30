import 'package:flutter/material.dart';
import 'package:netflix/presentation/Fastlaugh/screen_fastlaugh.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/mainpage/bottom_bar.dart';
import 'package:netflix/presentation/mainpage/homepage.dart';
import 'package:netflix/presentation/news%20&%20hot/screen_news.dart';
import 'package:netflix/presentation/search/screensearch.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  final widget = const [
    HomePage(),
    NewsandHot(),
    Fastlaugh(),
    ScreenSearch(),
    Downloadsscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexvalue,
            builder: (context, newvalue, _) {
              return widget[newvalue];
            }),
        bottomNavigationBar: const BottomNavigation());
  }
}
