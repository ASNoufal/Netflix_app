import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/constant/constant.dart';
import 'package:netflix/widgets/appbar_.dart';

class Downloadsscreen extends StatelessWidget {
  const Downloadsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //       .add(const DownloadsEvent.getdownloadsimage());
    // });
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getdownloadsimage());
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
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              state.isloading ? CircularProgressIndicator() : print("object");
              print(state);
              print("---");
              print(state.downloads[0].posterPath.toString());
              return SizedBox(
                child: Stack(
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
                    Transform.rotate(
                      angle: 20 * pi / 180,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 190,
                          bottom: 70,
                        ),
                        width: size.width * 0.4,
                        height: size.width * 0.58,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "$imageurl${state.downloads[0].posterPath}"))),
                      ),
                    ),
                    Transform.rotate(
                      angle: -20 * pi / 180,
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 200,
                          bottom: 70,
                        ),
                        width: size.width * 0.4,
                        height: size.width * 0.58,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '$imageurl${state.downloads[1].posterPath}'))),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0 * pi / 180,
                      child: Container(
                        margin: const EdgeInsets.only(),
                        width: size.width * 0.48,
                        height: size.width * 0.70,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "$imageurl${state.downloads[2].posterPath}"))),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              height: 45,
              onPressed: () {},
              color: Colors.blueAccent[700],
              child: const Text(
                "Set Up",
                style: TextStyle(color: kDefaultIconLightColor, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 4),
            child: MaterialButton(
              height: 45,
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
}

List photo = [
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg",
  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/6oH378KUfCEitzJkm07r97L0RsZ.jpg",
];
