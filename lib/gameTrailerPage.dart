import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GameTrailerPage extends StatefulWidget {
  const GameTrailerPage({Key? key}) : super(key: key);

  @override
  State<GameTrailerPage> createState() => _GameTrailerPageState();
}

class _GameTrailerPageState extends State<GameTrailerPage> {
  VideoPlayerController videoController =
      VideoPlayerController.asset("assets/video/MiniWarriors2Trailer.mp4");

  @override
  void initState() {
    videoController.setLooping(false);
    videoController.initialize();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      AspectRatio(
          aspectRatio: MediaQuery.of(context).size.width / 360,
          child: VideoPlayer(videoController)),
      ElevatedButton(
        onPressed: () {
          setState(() {
            videoController.value.isPlaying
                ? videoController.pause()
                : videoController.play();
          });
        },
        child: videoController.value.isPlaying
            ? const Icon(Icons.pause, size: 60)
            : const Icon(Icons.play_arrow, size: 60),
      )
    ]);
  }
}
