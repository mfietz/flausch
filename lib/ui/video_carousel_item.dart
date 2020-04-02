import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCarouselItem extends StatefulWidget {
  final String thumbnailUrl;
  final String videoUrl;

  VideoCarouselItem({
    this.thumbnailUrl,
    this.videoUrl,
  });

  @override
  _VideoCarouselItemState createState() => _VideoCarouselItemState();
}

class _VideoCarouselItemState extends State<VideoCarouselItem> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        print(_controller.value.aspectRatio);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      fit: StackFit.expand,
      children: <Widget>[
        Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              widget.thumbnailUrl,
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: _controller.value.initialized
              ? Align(
                  alignment: AlignmentDirectional.center,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                )
              : Container(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
