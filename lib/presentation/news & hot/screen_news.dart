import 'package:flutter/material.dart';

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
        body: TabBarView(children: [commingSoon(), everyoneWatching()]),
      ),
    );
  }
}

everyoneWatching() {
  return Container(
    child: Text("Every one waching"),
  );
}

commingSoon() {
  return Container(
    child: Text("comming soon"),
  );
}
