import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';

class Home extends StatefulWidget {
  static const String id="home";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final PodPlayerController controller;

  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(
        'https://firebasestorage.googleapis.com/v0/b/my-project-7341b.appspot.com/o/Before.I.Wake.2016%20%5B%40eng_movie%5D.mkv?alt=media&token=83a877c7-689d-40f1-99c3-893e464add63',
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  bool fullscreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PodVideoPlayer(controller: controller),

        ],
      ),
    );
  }
}
