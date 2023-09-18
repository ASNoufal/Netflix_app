import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommingSoonTitle extends StatelessWidget {
  const CommingSoonTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          SizedBox(
              width: 70,
              height: 200,
              child: ListTile(
                title: Text(
                  "FEB",
                  style: TextStyle(fontSize: 30, color: Colors.grey[350]),
                ),
                subtitle: const Text(
                  "11",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )),
          Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 70,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.themoviedb.org/t/p/w250_and_h141_face/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg")))),
              Positioned(
                right: 10,
                bottom: 10,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(.50),
                  child: const Icon(
                    Icons.volume_off,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Text(
              "Tall Girls 2",
              style: GoogleFonts.fuggles(
                  fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Column(
              children: [
                Icon(
                  Icons.lock_clock,
                  color: Colors.white,
                  size: 30,
                ),
                Text("Remind me")
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            const Column(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 30,
                ),
                Text("Info")
              ],
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
            "Landing the lead in the school musicial is a dream come true for jodi,until the pressure sends her coorfidence"),
      )
    ]);
  }
}
