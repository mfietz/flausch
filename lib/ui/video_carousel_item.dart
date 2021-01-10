import 'package:flausch/ui/carousel_item.dart';
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
        _controller.setVolume(0.0);
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return CarouselItem(
      thumbnailUrl: widget.thumbnailUrl,
      child: _controller.value.initialized
          ? Align(
              alignment: AlignmentDirectional.center,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
