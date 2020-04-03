import 'package:carousel_slider/carousel_slider.dart';
import 'package:flausch/services/reddit.dart';
import 'package:flausch/services/reddit_response.dart';
import 'package:flausch/ui/image_carousel_item.dart';
import 'package:flausch/ui/video_carousel_item.dart';
import 'package:flutter/material.dart';
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
  List<Media> media = [];

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => loadImages(),
      ),
      body: Container(
        child:
            media.isEmpty ? buildCircularProgressIndicator() : buildCarousel(),
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

  Widget buildCarousel() {
    return CarouselSlider.builder(
        viewportFraction: 1.0,
        height: double.infinity,
        itemCount: media.length,
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
        });
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
