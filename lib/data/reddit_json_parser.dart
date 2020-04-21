import 'dart:convert';

import 'package:flausch/data/reddit_response_models.dart';

class RedditJsonParser {
  static Root parse(String contents) {
    return Root.fromJson(json.decode(contents));
  }
}
