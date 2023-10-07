import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constant/constant.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/presentation/Fastlaugh/screen_fastlaugh.dart';

class VedioListItemINHERITEDWIDGET extends InheritedWidget {
  const VedioListItemINHERITEDWIDGET(
      {super.key, required this.widget, required this.moviedata})
      : super(child: widget);
  final Widget widget;
  final Downloads moviedata;

  @override
  bool updateShouldNotify(covariant VedioListItemINHERITEDWIDGET oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static VedioListItemINHERITEDWIDGET? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VedioListItemINHERITEDWIDGET>();
  }
}

class VedioListItems extends StatelessWidget {
  const VedioListItems({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final posterpath =
        VedioListItemINHERITEDWIDGET.of(context)?.moviedata.posterPath;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CircleAvatar(
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.volume_off)),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: posterpath == null
                      ? null
                      : NetworkImage("$imageurl$posterpath"),
                ),
                FastLaughIcons(
                    icons: Icons.emoji_emotions_rounded, name: "LoL"),
                FastLaughIcons(icons: Icons.add, name: "My List"),
                FastLaughIcons(icons: Icons.navigation_outlined, name: "Share"),
                FastLaughIcons(icons: Icons.play_arrow, name: "Play")
              ],
            ),
          ),
        )
      ],
    );
  }
}
