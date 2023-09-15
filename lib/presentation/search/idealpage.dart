import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/mainpage/widgets/Maintitletest.dart';

const image =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/9ZlGiEKmcYrrxmiQEJDhjeT2kEW.jpg";

class Idealpage extends StatelessWidget {
  const Idealpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const maintexttitle(test: "Top Search"),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.38,
                        height: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  image,
                                ),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Movie Name",
                          style: GoogleFonts.montserrat(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.arrowtriangle_right_circle,
                            size: 40,
                            color: Colors.white,
                          ))
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 30,
                  );
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
