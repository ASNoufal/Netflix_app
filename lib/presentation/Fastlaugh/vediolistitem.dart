import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/constant/constant.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/presentation/Fastlaugh/screen_fastlaugh.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

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
        Fastlaughvedioplayer(
          index: index,
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
                const FastLaughIcons(
                    icons: Icons.emoji_emotions_rounded, name: "LoL"),
                const FastLaughIcons(icons: Icons.add, name: "My List"),
                GestureDetector(
                  // onTap: () async {
                  //   if (posterpath != null) {
                  //     await Share.share(posterpath);
                  //   }
                  // },
                  child: const FastLaughIcons(
                      icons: Icons.navigation_outlined, name: "Share"),
                ),
                const FastLaughIcons(icons: Icons.play_arrow, name: "Play")
              ],
            ),
          ),
        )
      ],
    );
  }
}

final List dummyvedio = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
];

class Fastlaughvedioplayer extends StatefulWidget {
  final int index;
  const Fastlaughvedioplayer({super.key, required this.index});

  @override
  State<Fastlaughvedioplayer> createState() => _FastlaughvedioplayerState();
}

class _FastlaughvedioplayerState extends State<Fastlaughvedioplayer> {
  late VideoPlayerController _playerController;
  @override
  void initState() {
    _playerController = VideoPlayerController.networkUrl(
        Uri.parse(dummyvedio[widget.index % 2]));
    _playerController.initialize().then((value) {
      setState(() {});
      _playerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _playerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _playerController.value.aspectRatio,
                child: VideoPlayer(_playerController),
              )
            : const Center(child: CircularProgressIndicator()));
  }
}
