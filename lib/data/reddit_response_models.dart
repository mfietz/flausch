class Root {
  Data data;

  Root({
    this.data,
  });

  factory Root.fromJson(Map<String, dynamic> json) => Root(
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int dist;
  List<Child> children;
  String after;
  String before;

  Data({
    this.dist,
    this.children,
    this.after,
    this.before,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        dist: json["dist"],
        children: List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        after: json["after"],
        before: json["before"],
      );
}

class Child {
  ChildData data;

  Child({
    this.data,
  });

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        data: ChildData.fromJson(json["data"]),
      );
}

class ChildData {
  String title;
  int thumbnailHeight;
  int thumbnailWidth;
  String name;
  int score;
  String thumbnail;
  PostHint postHint;
  Domain domain;
  Preview preview;
  String id;
  String author;
  String permalink;
  String url;
  double createdUtc;
  Media media;
  bool isVideo;

  ChildData({
    this.title,
    this.thumbnailHeight,
    this.name,
    this.thumbnailWidth,
    this.score,
    this.thumbnail,
    this.postHint,
    this.domain,
    this.preview,
    this.id,
    this.author,
    this.permalink,
    this.url,
    this.createdUtc,
    this.media,
    this.isVideo,
  });

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        title: json["title"],
        thumbnailHeight: json["thumbnail_height"],
        name: json["name"],
        thumbnailWidth: json["thumbnail_width"],
        score: json["score"],
        thumbnail: json["thumbnail"],
        postHint: postHintValues.map[json["post_hint"]],
        domain: domainValues.map[json["domain"]],
        preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
        id: json["id"],
        author: json["author"],
        permalink: json["permalink"],
        url: json["url"],
        createdUtc: json["created_utc"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        isVideo: json["is_video"],
      );
}

class ResizedIcon {
  String url;
  int width;
  int height;

  ResizedIcon({
    this.url,
    this.width,
    this.height,
  });

  factory ResizedIcon.fromJson(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );
}

enum Domain { V_REDD_IT, GFYCAT_COM, I_REDD_IT, IMGUR_COM }

final domainValues = EnumValues({
  "gfycat.com": Domain.GFYCAT_COM,
  "imgur.com": Domain.IMGUR_COM,
  "i.redd.it": Domain.I_REDD_IT,
  "v.redd.it": Domain.V_REDD_IT
});

class Media {
  RedditVideo redditVideo;
  Domain type;

  Media({
    this.redditVideo,
    this.type,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        redditVideo: json["reddit_video"] == null ? null : RedditVideo.fromJson(json["reddit_video"]),
        type: json["type"] == null ? null : domainValues.map[json["type"]],
      );
}

class RedditVideo {
  int height;
  int width;
  String dashUrl;
  int duration;
  bool isGif;
  String fallbackUrl;

  RedditVideo({
    this.height,
    this.width,
    this.dashUrl,
    this.duration,
    this.isGif,
    this.fallbackUrl,
  });

  factory RedditVideo.fromJson(Map<String, dynamic> json) => RedditVideo(
        height: json["height"],
        width: json["width"],
        dashUrl: json["dash_url"],
        duration: json["duration"],
        isGif: json["is_gif"],
        fallbackUrl: json["fallback_url"],
      );
}

enum PostHint { HOSTED_VIDEO, RICH_VIDEO, IMAGE, LINK }

final postHintValues = EnumValues({
  "hosted:video": PostHint.HOSTED_VIDEO,
  "image": PostHint.IMAGE,
  "link": PostHint.LINK,
  "rich:video": PostHint.RICH_VIDEO
});

class Preview {
  List<RedditImage> images;
  bool enabled;
  RedditVideo redditVideoPreview;

  Preview({
    this.images,
    this.enabled,
    this.redditVideoPreview,
  });

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        images: List<RedditImage>.from(json["images"].map((x) => RedditImage.fromJson(x))),
        enabled: json["enabled"],
        redditVideoPreview:
            json["reddit_video_preview"] == null ? null : RedditVideo.fromJson(json["reddit_video_preview"]),
      );
}

class RedditImage {
  ResizedIcon source;
  List<ResizedIcon> resolutions;
  String id;

  RedditImage({
    this.source,
    this.resolutions,
    this.id,
  });

  factory RedditImage.fromJson(Map<String, dynamic> json) => RedditImage(
        source: ResizedIcon.fromJson(json["source"]),
        resolutions: List<ResizedIcon>.from(json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
        id: json["id"],
      );
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
