import 'package:flutter/material.dart';

class EveryonewatchingTitle extends StatelessWidget {
  const EveryonewatchingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text("Friends", style: TextStyle(fontSize: 20)),
        const SizedBox(
          height: 20,
        ),
        const Text(
            "The hit sitcome follow the merry misadvantage of something pais as they navigate the pitfalls of work lifed live"),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w250_and_h141_face/9t0tJXcOdWwwxmGTk112HGDaT0Q.jpg")))),
        Row(
          children: [
            Spacer(),
            Iconswithname("share", Icons.share),
            Iconswithname("Add", Icons.add),
            Iconswithname("Play", Icons.play_arrow)
          ],
        )
      ],
    );
  }

  Widget Iconswithname(String title, IconData icons) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icons,
            size: 25,
            color: kDefaultIconLightColor,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
