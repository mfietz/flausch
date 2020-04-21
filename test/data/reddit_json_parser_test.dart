import 'dart:io';

import 'package:flausch/data/reddit_json_parser.dart';
import 'package:flausch/data/reddit_response_models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Root root;

  group('Parser', () {
    setUp(() {
      String contents = new File('./test/data/aww.json').readAsStringSync();
      root = RedditJsonParser.parse(contents);
    });
    test('root is parsed', () {
      expect(root, isNotNull);
    });
    test('root data is parsed', () {
      expect(root.data, isNotNull);
      expect(root.data.dist, isNotNull);
      expect(root.data.children, isNotEmpty);
      expect(root.data.after, isNotNull);
    });
  });
}
