import 'dart:ui' as ui;

import 'package:flausch/ui/constants.dart';
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    DEFAULT_PADDING,
                    PREVIEW_SIZE + DEFAULT_PADDING,
                    DEFAULT_PADDING,
                    DEFAULT_PADDING,
                  ),
                  child: Image.network(
                    widget.thumbnailUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    DEFAULT_PADDING,
                    PREVIEW_SIZE + DEFAULT_PADDING,
                    DEFAULT_PADDING,
                    DEFAULT_PADDING,
                  ),
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
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
