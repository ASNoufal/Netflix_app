import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hotandnew/hotandnew_bloc.dart';
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
        body: const TabBarView(
            children: [CommingSoonscreen(), Everyonewatchingscreen()]),
      ),
    );
  }
}

class CommingSoonscreen extends StatelessWidget {
  const CommingSoonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HotandnewBloc>().add(const HotandnewEvent.commingSoon());
    });
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text("Error"),
          );
        } else if (state.commingsoon.isEmpty) {
          return const Center(
            child: Text("no item found"),
          );
        }
        return ListView.builder(
            itemCount: state.commingsoon.length,
            itemBuilder: ((context, index) {
              final datedata =
                  DateTime.tryParse(state.commingsoon[index].releasedate);

              var date = DateFormat.yMMMMd('en_US').format(datedata!);

              return CommingSoonTitle(
                  day: date.split(' ').first.substring(0, 3).toUpperCase(),
                  date: state.commingsoon[index].releasedate.split('-')[2],
                  posterpath: state.commingsoon[index].posterpath,
                  title: state.commingsoon[index].title,
                  description: state.commingsoon[index].overview);
            }));
      },
    );
  }
}

class Everyonewatchingscreen extends StatelessWidget {
  const Everyonewatchingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<HotandnewBloc>()
          .add(const HotandnewEvent.everyonewatching());
    });
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text("Error in the data"),
          );
        }
        return ListView.builder(
            itemCount: state.everyonewaching.length,
            itemBuilder: (context, index) => EveryonewatchingTitle(
                title: state.everyonewaching[index].title,
                description: state.everyonewaching[index].overview,
                posterpath: state.everyonewaching[index].posterpath));
      },
    );
  }
}
