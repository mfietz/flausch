import 'package:flausch/data/reddit_json_parser.dart';
import 'package:flausch/data/reddit_response_models.dart';
import 'package:http/http.dart' as http;

class RedditService {
  static Future<Root> getMedia(String subreddit) async {
    var uri = Uri.parse('https://www.reddit.com/r/$subreddit.json?limit=100');
    var response = await http.get(uri);
    if (response.statusCode != 200) {
      throw Exception('Failed to load album');
    }
    return RedditJsonParser.parse(response.body);
  }
}
