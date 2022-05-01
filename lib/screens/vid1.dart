import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_netflix_responsive_ui/screens/screens.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Vid1());
}

class Vid1 extends StatefulWidget{
  const Vid1({Key? key}) : super(key:key);

  @override
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<Vid1> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'tcodrIK2P_I',
      params: const YoutubePlayerParams(
        playlist: [
          'dMnDkFktGF4',
          'JWtnJjn6ng0',
          '7pyIxz8Qg',
          'MczMB8nU1sY',
          '85z53bAebsI',
          'Ub_lfN2VMIo',
          'dMnDkFktGF4',
          'dM0krSvAQuw',
          'LTpmw0Ac6Zs',
        ],
        startAt: const Duration(minutes: 0, seconds: 12),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => NavScreen()));
    };
  }
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,
      child: RawMaterialButton(fillColor: const Color(0x55FF0000),
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
        onPressed: () async {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavScreen()));

        },

        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (kIsWeb && constraints.maxWidth > 800) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(child: player),
                    const SizedBox(
                      width: 500,
                      child: SingleChildScrollView(
                        // child: Controls(),
                      ),
                    ),
                  ],
                );
              }
              return ListView(
                children: [
                  Stack(
                    children: [
                      player,
                      Positioned.fill(
                        child: YoutubeValueBuilder(
                          controller: _controller,
                          builder: (context, value) {
                            return AnimatedCrossFade(
                              firstChild: const SizedBox.shrink(),
                              secondChild: Material(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        YoutubePlayerController.getThumbnail(
                                          videoId:
                                          _controller.params.playlist.first,
                                          quality: ThumbnailQuality.medium,
                                        ),
                                      ),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              ),
                              crossFadeState: value.isReady
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 300),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  //const Controls(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
