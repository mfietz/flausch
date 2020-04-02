import 'dart:ui';

import 'package:flutter/material.dart';

class ImageCarouselItem extends StatelessWidget {
  final String thumbnailUrl;
  final String imageUrl;

  ImageCarouselItem({this.thumbnailUrl, this.imageUrl});

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
              thumbnailUrl,
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
          child: Image.network(
            imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
