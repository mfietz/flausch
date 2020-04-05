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
        children:
            List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
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
  int downs;
  int ups;
  int thumbnailHeight;
  int thumbnailWidth;
  String name;
  Media secureMedia;
  bool isRedditMediaDomain;
  dynamic category;
  int score;
  String thumbnail;
  PostHint postHint;
  Domain domain;
  bool over18;
  Preview preview;
  bool mediaOnly;
  bool canGild;
  String id;
  String author;
  String permalink;
  String url;
  double createdUtc;
  Media media;
  bool isVideo;

  ChildData({
    this.title,
    this.downs,
    this.ups,
    this.thumbnailHeight,
    this.name,
    this.thumbnailWidth,
    this.secureMedia,
    this.category,
    this.score,
    this.thumbnail,
    this.postHint,
    this.domain,
    this.over18,
    this.preview,
    this.mediaOnly,
    this.canGild,
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
        downs: json["downs"],
        ups: json["ups"],
        thumbnailHeight: json["thumbnail_height"],
        name: json["name"],
        thumbnailWidth: json["thumbnail_width"],
        secureMedia: json["secure_media"] == null
            ? null
            : Media.fromJson(json["secure_media"]),
        category: json["category"],
        score: json["score"],
        thumbnail: json["thumbnail"],
        postHint: postHintValues.map[json["post_hint"]],
        domain: domainValues.map[json["domain"]],
        over18: json["over_18"],
        preview:
            json["preview"] == null ? null : Preview.fromJson(json["preview"]),
        mediaOnly: json["media_only"],
        canGild: json["can_gild"],
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
  Oembed oembed;
  Domain type;

  Media({
    this.redditVideo,
    this.oembed,
    this.type,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        redditVideo: json["reddit_video"] == null
            ? null
            : RedditVideo.fromJson(json["reddit_video"]),
        oembed: json["oembed"] == null ? null : Oembed.fromJson(json["oembed"]),
        type: json["type"] == null ? null : domainValues.map[json["type"]],
      );
}

class Oembed {
  String description;
  String title;
  int height;
  int width;
  String html;
  int thumbnailWidth;
  String thumbnailUrl;
  String type;
  int thumbnailHeight;
  String url;

  Oembed({
    this.description,
    this.title,
    this.height,
    this.width,
    this.thumbnailWidth,
    this.thumbnailUrl,
    this.type,
    this.thumbnailHeight,
    this.url,
  });

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
        description: json["description"],
        title: json["title"],
        height: json["height"],
        width: json["width"],
        thumbnailWidth: json["thumbnail_width"],
        thumbnailUrl: json["thumbnail_url"],
        type: json["type"],
        thumbnailHeight: json["thumbnail_height"],
        url: json["url"] == null ? null : json["url"],
      );
}

class RedditVideo {
  String fallbackUrl;
  int height;
  int width;
  String scrubberMediaUrl;
  String dashUrl;
  int duration;
  String hlsUrl;
  bool isGif;

  RedditVideo({
    this.fallbackUrl,
    this.height,
    this.width,
    this.scrubberMediaUrl,
    this.dashUrl,
    this.duration,
    this.hlsUrl,
    this.isGif,
  });

  factory RedditVideo.fromJson(Map<String, dynamic> json) => RedditVideo(
        fallbackUrl: json["fallback_url"],
        height: json["height"],
        width: json["width"],
        scrubberMediaUrl: json["scrubber_media_url"],
        dashUrl: json["dash_url"],
        duration: json["duration"],
        hlsUrl: json["hls_url"],
        isGif: json["is_gif"],
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
        images: List<RedditImage>.from(
            json["images"].map((x) => RedditImage.fromJson(x))),
        enabled: json["enabled"],
        redditVideoPreview: json["reddit_video_preview"] == null
            ? null
            : RedditVideo.fromJson(json["reddit_video_preview"]),
      );
}

class RedditImage {
  ResizedIcon source;
  List<ResizedIcon> resolutions;
  Variants variants;
  String id;

  RedditImage({
    this.source,
    this.resolutions,
    this.variants,
    this.id,
  });

  factory RedditImage.fromJson(Map<String, dynamic> json) => RedditImage(
        source: ResizedIcon.fromJson(json["source"]),
        resolutions: List<ResizedIcon>.from(
            json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
        variants: Variants.fromJson(json["variants"]),
        id: json["id"],
      );
}

class Variants {
  Gif gif;
  Gif mp4;

  Variants({
    this.gif,
    this.mp4,
  });

  factory Variants.fromJson(Map<String, dynamic> json) => Variants(
        gif: json["gif"] == null ? null : Gif.fromJson(json["gif"]),
        mp4: json["mp4"] == null ? null : Gif.fromJson(json["mp4"]),
      );
}

class Gif {
  ResizedIcon source;
  List<ResizedIcon> resolutions;

  Gif({
    this.source,
    this.resolutions,
  });

  factory Gif.fromJson(Map<String, dynamic> json) => Gif(
        source: ResizedIcon.fromJson(json["source"]),
        resolutions: List<ResizedIcon>.from(
            json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
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
