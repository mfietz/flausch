import 'package:flausch/ui/carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageCarouselItem extends StatelessWidget {
  final String id;
  final String thumbnailUrl;
  final String imageUrl;

  ImageCarouselItem({
    required this.id,
    required this.thumbnailUrl,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselItem(
      id: id,
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
