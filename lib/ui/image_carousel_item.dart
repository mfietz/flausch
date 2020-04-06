import 'package:flausch/ui/carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageCarouselItem extends StatelessWidget {
  final String thumbnailUrl;
  final String imageUrl;

  ImageCarouselItem({this.thumbnailUrl, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CarouselItem(
      thumbnailUrl: thumbnailUrl,
      child: FadeInImage.memoryNetwork(
        fadeInDuration: Duration(milliseconds: 100),
        placeholder: kTransparentImage,
        image: imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}
