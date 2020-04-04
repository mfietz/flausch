import 'dart:math';

import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flausch/services/reddit.dart';
import 'package:flausch/services/reddit_response.dart';
import 'package:flausch/ui/image_carousel_item.dart';
import 'package:flausch/ui/video_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:html_character_entities/html_character_entities.dart';

const SUPPORTED_IMAGE_EXTENSIONS = ['jpg', 'gif', 'png'];
const SUPPORTED_VIDEO_EXTENSIONS = ['jpg', 'gif', 'png'];
const SUPPORTED_EXTENSIONS = SUPPORTED_IMAGE_EXTENSIONS;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const PREVIEW_SIZE = 50.0;

  final SwiperController swipeController = SwiperController();
  final ScrollController scrollController = ScrollController();

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
        media = value.data.children
            .map(toMedia)
            .where((element) => element != null)
            .toList();
      });
    });
  }

  Media toMedia(Child child) {
    var data = child.data;
    if (data.postHint == PostHint.IMAGE) {
      var mainImage = data.preview.images[0];
      var resolutions = List.of(mainImage.resolutions);
      resolutions.sort((a, b) => a.height.compareTo(b.height));
      return Media(
        type: MediaType.Image,
        thumbnailUrl: HtmlCharacterEntities.decode(resolutions[0].url),
        mediaUrl: data.url,
      );
    }
    if (data.postHint == PostHint.HOSTED_VIDEO) {
      return Media(
        type: MediaType.Video,
        thumbnailUrl: data.thumbnail,
        mediaUrl: data.media.redditVideo.dashUrl,
      );
    }
    if (data.postHint == PostHint.LINK && data.domain == Domain.IMGUR_COM) {
      var videoUrl = data.url.replaceAll(RegExp('gifv'), 'mp4');
      return Media(
        type: MediaType.Video,
        thumbnailUrl: data.thumbnail,
        mediaUrl: videoUrl,
      );
    }
    return null;
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
        child: media.isEmpty
            ? buildCircularProgressIndicator()
            : buildCarousel(context),
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

  Widget buildCarousel(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var offset = (activeIndex + 1.5) * PREVIEW_SIZE - screenWidth / 2;
    return Swiper(
        viewportFraction: 1.0,
        itemCount: media.length,
        controller: swipeController,
        autoplay: false,
        autoplayDelay: 10000,
        onIndexChanged: (value) {
          setState(() {
            activeIndex = value;
          });
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
                thumbnailUrl: m.thumbnailUrl,
                imageUrl: m.mediaUrl,
              );
            case MediaType.Video:
              return VideoCarouselItem(
                thumbnailUrl: m.thumbnailUrl,
                videoUrl: m.mediaUrl,
              );
            default:
              return Placeholder();
          }
        },
        pagination: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
          return buildPreviewBar();
        }));
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
          if (activeIndex != index) {
            return Container(
              width: PREVIEW_SIZE,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.dstIn,
                ),
                child: image,
              ),
            );
          } else {
            return Container(
              width: PREVIEW_SIZE,
              child: image,
            );
          }
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
        child: Icon(swipeController.autoplay != null && swipeController.autoplay
            ? Icons.pause
            : Icons.play_arrow),
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
}

class Media {
  final MediaType type;
  final String thumbnailUrl;
  final String mediaUrl;

  Media({
    @required this.type,
    @required this.thumbnailUrl,
    @required this.mediaUrl,
  });
}

enum MediaType { Video, Image }
