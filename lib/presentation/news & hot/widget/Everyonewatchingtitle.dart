import 'package:flutter/material.dart';
import 'package:netflix/constant/constant.dart';

class EveryonewatchingTitle extends StatelessWidget {
  final String title;
  final String description;
  final String posterpath;

  const EveryonewatchingTitle(
      {super.key,
      required this.title,
      required this.description,
      required this.posterpath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(title, style: const TextStyle(fontSize: 20)),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          maxLines: 2,
        ),
        const SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("$imageurl$posterpath"),
                ))),
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
        ),
        Row(
          children: [
            Spacer(),
            iconswithname("share", Icons.share),
            iconswithname("Add", Icons.add),
            iconswithname("Play", Icons.play_arrow)
          ],
        )
      ],
    );
  }

  Widget iconswithname(String title, IconData icons) {
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
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
