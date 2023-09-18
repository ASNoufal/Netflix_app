import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/news%20&%20hot/widget/CommingSoontitle.dart';
import 'package:netflix/presentation/news%20&%20hot/widget/Everyonewatchingtitle.dart';

class NewsandHot extends StatelessWidget {
  const NewsandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kDefaultIconDarkColor,
          title: const Text(
            "New & Hot",
            style: TextStyle(color: kDefaultIconLightColor),
          ),
          actions: [
            const Icon(
              Icons.cast,
              size: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                width: 30,
                height: 30,
              ),
            ),
          ],
          bottom: const TabBar(
              indicatorWeight: 2,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.black,
              automaticIndicatorColorAdjustment: false,
              indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              labelColor: kDefaultIconDarkColor,
              unselectedLabelColor: kDefaultIconLightColor,
              tabs: [
                Tab(
                  text: "🍿 Comming Soon",
                ),
                Tab(text: "👀 Everyone's Watching")
              ]),
        ),
        body: TabBarView(children: [commingSoon(context), Everyonewatching()]),
      ),
    );
  }
}

Widget commingSoon(BuildContext context) {
  return ListView.builder(
      itemCount: 10, itemBuilder: ((context, index) => CommingSoonTitle()));
}

Widget Everyonewatching() {
  return ListView.builder(
      itemCount: 10, itemBuilder: (context, index) => EveryonewatchingTitle());
}
