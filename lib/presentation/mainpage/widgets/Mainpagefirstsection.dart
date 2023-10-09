import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ValueNotifier value = ValueNotifier(false);

class Mainpagefirstsection extends StatelessWidget {
  const Mainpagefirstsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
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
                    const Icon(
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
                    const Icon(
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
    );
  }
}
