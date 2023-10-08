import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/constant/constant.dart';

class CommingSoonTitle extends StatelessWidget {
  final String day;
  final String date;
  final String posterpath;
  final String title;
  final String description;

  const CommingSoonTitle(
      {super.key,
      required this.day,
      required this.date,
      required this.posterpath,
      required this.title,
      required this.description});

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
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("$imageurl$posterpath")))),
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
            SizedBox(
              width: 200,
              child: Text(
                title,
                style: GoogleFonts.fuggles(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
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
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            maxLines: 4,
          )),
      const SizedBox(
        height: 10,
      )
    ]);
  }
}
