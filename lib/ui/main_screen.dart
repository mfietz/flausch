import 'dart:math';

import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flausch/data/reddit_response_models.dart';
import 'package:flausch/data/reddit_service.dart';
import 'package:flausch/ui/constants.dart';
import 'package:flausch/ui/image_carousel_item.dart';
import 'package:flausch/ui/video_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:html_character_entities/html_character_entities.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SwiperController swipeController = SwiperController();
  final ScrollController scrollController = ScrollController();
  final FocusNode focusNode = FocusNode();

  List<Media> media = [];
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    loadImages();
  }

  void loadImages() {
    RedditService.getMedia("aww").then((value) {
      setState(() {
        media = [
          for (var child in value.data.children)
            if (toMedia(child) != null) toMedia(child)!
        ];
      });
    });
  }

  Media? toMedia(Child child) {
    var data = child.data;
    if (data.postHint == PostHint.IMAGE) {
      var image = smallestPreviewImage(data);
      if (image != null) {
        return Media(
          id: data.id,
          type: MediaType.Image,
          thumbnailUrl: HtmlCharacterEntities.decode(image.url),
          mediaUrl: data.url,
        );
      }
    }
    if (data.postHint == PostHint.HOSTED_VIDEO && data.media != null && data.media!.redditVideo != null) {
      var image = smallestPreviewImage(data);
      if (image != null) {
        return Media(
          id: data.id,
          type: MediaType.Video,
          thumbnailUrl: HtmlCharacterEntities.decode(image.url),
          mediaUrl: data.media!.redditVideo!.fallbackUrl,
        );
      }
    }
    if (data.postHint == PostHint.LINK && data.domain == Domain.IMGUR_COM) {
      var videoUrl = data.url.replaceAll(RegExp('gifv'), 'mp4');
      return Media(
        id: data.id,
        type: MediaType.Video,
        thumbnailUrl: data.thumbnail,
        mediaUrl: videoUrl,
      );
    }
    return null;
  }

  ResizedIcon? smallestPreviewImage(ChildData data) {
    if (data.preview == null) {
      return null;
    }
    var mainImage = data.preview!.images[0];
    var resolutions = List.of(mainImage.resolutions);
    resolutions.sort((a, b) => a.height.compareTo(b.height));
    return resolutions[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedFloatingActionButton(
        //Fab list
        fabButtons: <Widget>[
          autoPlayButton(),
          refreshButton(),
        ],
        animatedIconData: AnimatedIcons.menu_close,
      ),
      body: Container(
        child: media.isEmpty ? buildCircularProgressIndicator() : buildCarousel(context),
      ),
    );
  }

  Widget buildCircularProgressIndicator() {
    return Container(
      color: Colors.grey,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  Widget buildCarousel(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return RawKeyboardListener(
      autofocus: true,
      focusNode: focusNode,
      onKey: _handleKeyEvent,
      child: Swiper(
        viewportFraction: 1.0,
        itemCount: media.length,
        controller: swipeController,
        autoplay: false,
        autoplayDelay: 10000,
        onIndexChanged: (value) {
          setState(() {
            activeIndex = value;
          });
          var offset = (activeIndex + 0.5) * PREVIEW_SIZE - screenWidth / 2;
          scrollController.animateTo(
            max(0, offset),
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        itemBuilder: (context, index) {
          var m = media[index];
          switch (m.type) {
            case MediaType.Image:
              return ImageCarouselItem(
                id: m.id,
                thumbnailUrl: m.thumbnailUrl,
                imageUrl: m.mediaUrl,
              );
            case MediaType.Video:
              return VideoCarouselItem(
                id: m.id,
                thumbnailUrl: m.thumbnailUrl,
                videoUrl: m.mediaUrl,
              );
            default:
              return Placeholder();
          }
        },
        pagination: SwiperCustomPagination(
          builder: (context, config) => buildPreviewBar(),
        ),
      ),
    );
  }

  Widget buildPreviewBar() {
    return SafeArea(
      child: Container(
        height: PREVIEW_SIZE,
        child: buildThumbnailBarList(),
      ),
    );
  }

  Widget buildThumbnailBarList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        itemCount: media.length,
        itemBuilder: (context, index) {
          var image = Image.network(
            media[index].thumbnailUrl,
            fit: BoxFit.cover,
          );
          return Opacity(
            opacity: activeIndex == index ? 1.0 : 0.5,
            child: image,
          );
        });
  }

  Widget autoPlayButton() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (swipeController.autoplay != null && swipeController.autoplay) {
              swipeController.stopAutoplay();
            } else {
              swipeController.startAutoplay();
            }
          });
        },
        child: Icon(swipeController.autoplay != null && swipeController.autoplay ? Icons.pause : Icons.play_arrow),
      ),
    );
  }

  Widget refreshButton() {
    return Container(
      child: FloatingActionButton(
        onPressed: () => loadImages(),
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
      swipeController.next();
    } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      swipeController.previous();
    }
  }
}

class Media {
  final String id;
  final MediaType type;
  final String thumbnailUrl;
  final String mediaUrl;

  Media({
    required this.id,
    required this.type,
    required this.thumbnailUrl,
    required this.mediaUrl,
  });
}

enum MediaType { Video, Image }
