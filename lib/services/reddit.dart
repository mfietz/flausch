import 'dart:convert';

import 'package:flausch/services/reddit_response.dart';
import 'package:http/http.dart' as http;

class RedditService {
  static Future<Root> getMedia(String subreddit) async {
    var response =
        await http.get('https://www.reddit.com/r/$subreddit.json?limit=100');
    if (response.statusCode != 200) {
      throw Exception('Failed to load album');
    }
    return Root.fromJson(json.decode(response.body));
  }
}
