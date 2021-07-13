import 'dart:ui' as ui;

import 'package:flausch/ui/constants.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String id;
  final String thumbnailUrl;
  final Widget child;

  CarouselItem(
      {required this.id, required this.thumbnailUrl, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(thumbnailUrl),
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
                    thumbnailUrl,
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
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
