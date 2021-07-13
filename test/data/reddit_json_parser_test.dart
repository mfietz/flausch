import 'package:flausch/data/reddit_json_parser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Parser', () {
    var root = RedditJsonParser.parse(json);
    test('root is parsed', () {
      expect(root, isNotNull);
    });
    test('root data is parsed', () {
      expect(root.data, isNotNull);
      expect(root.data.children, isNotEmpty);
      expect(root.data.after, isNotNull);
    });
  });
}

final json = """
{
  "kind": "Listing",
  "data": {
    "modhash": "efx7t26nbb73007246fe191b7467daa8c7acb182a8b1ad1a13",
    "dist": 25,
    "children": [
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_15f6s1",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Pausing to salute these baby welders who are doing their part to keep key industries running.",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 93,
          "hide_score": false,
          "name": "t3_g0bivx",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": "",
          "subreddit_type": "public",
          "ups": 17493,
          "total_awards_received": 2,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 17493,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/38WFZN5zqEqhENLPQwI-qMsRJP9gMpIfVYRmtvqR95Y.jpg",
          "edited": false,
          "author_flair_css_class": "k",
          "author_flair_richtext": [],
          "gildings": {
            "gid_2": 1
          },
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586779385.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": "confidence",
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/x2u615pmeis41.jpg?auto=webp&amp;s=90adda941e47e85bca2db48d5b2583f82e93457e",
                  "width": 1200,
                  "height": 802
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=02d51720e8a8eff985c140cc4cd0ebba32aaccb4",
                    "width": 108,
                    "height": 72
                  },
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=774eb5e080c7907edb65a7df0e4134bbbef47065",
                    "width": 216,
                    "height": 144
                  },
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=4ce132393a285cc947dea880096fe976917130f6",
                    "width": 320,
                    "height": 213
                  },
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=dfdb357a9e1d5e96b12720f14ea76d7ce001b450",
                    "width": 640,
                    "height": 427
                  },
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=6f77fb97a0b117a274069209d922c420d274f069",
                    "width": 960,
                    "height": 641
                  },
                  {
                    "url": "https://preview.redd.it/x2u615pmeis41.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;s=7bac864d8d7ec4c9a8cbec9dc12d9a6ea27eaaed",
                    "width": 1080,
                    "height": 721
                  }
                ],
                "variants": {},
                "id": "LH5hFrLrW69EGSMMOLyZRgLj8rERfQ6D1zUPkS6ZmYU"
              }
            ],
            "enabled": true
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 50,
              "id": "award_b1b44fa1-8179-4d84-a9ed-f25bb81f1c5f",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png?width=16&amp;height=16&amp;auto=webp&amp;s=d06b7de23ce8b8ea0f3e7cfd15033ac4893b72f0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png?width=32&amp;height=32&amp;auto=webp&amp;s=9c08ea897b5caa9a70e315e13df5b4a3ba33246e",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png?width=48&amp;height=48&amp;auto=webp&amp;s=3971718e2c95e4869756cbdbe9e996719ed2dcc2",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png?width=64&amp;height=64&amp;auto=webp&amp;s=37daf6131baa13b786daeb564ef67963874bdce0",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/ey2iodron2s41_Facepalm.png?width=128&amp;height=128&amp;auto=webp&amp;s=696adda035a7fd96e7688edeea93ad1b16d4ab1a",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "*Lowers face into palm*",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Facepalm",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0bivx",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "Lowcrbnaman",
          "discussion_type": null,
          "num_comments": 147,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": "dark",
          "permalink": "/r/aww/comments/g0bivx/pausing_to_salute_these_baby_welders_who_are/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/x2u615pmeis41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586750585.0,
          "num_crossposts": 3,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_z4rtw",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Parenting done right",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0840z",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 49625,
          "total_awards_received": 3,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/ndplpcktbhs41/DASH_480?source=fallback",
              "height": 480,
              "width": 384,
              "scrubber_media_url": "https://v.redd.it/ndplpcktbhs41/DASH_96",
              "dash_url": "https://v.redd.it/ndplpcktbhs41/DASHPlaylist.mpd",
              "duration": 20,
              "hls_url": "https://v.redd.it/ndplpcktbhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 49625,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/kcenaC0smBcssUlWvbw1_9FB6mxoKX0IDZiWJbYEeDU.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_2": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586766332.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/NXmpZ7tP8q4DFl296nfHefvr3uyzF8sexttHSZE6lV0.png?format=pjpg&amp;auto=webp&amp;s=5c15200e6cd02f019ad76d6eae98fda068aee4fb",
                  "width": 458,
                  "height": 574
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/NXmpZ7tP8q4DFl296nfHefvr3uyzF8sexttHSZE6lV0.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=319ec016063c490ce6030f4d8113a50c68beed81",
                    "width": 108,
                    "height": 135
                  },
                  {
                    "url": "https://external-preview.redd.it/NXmpZ7tP8q4DFl296nfHefvr3uyzF8sexttHSZE6lV0.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=a9d02b257182ec05d9e09cbb27ae57533db7fa8e",
                    "width": 216,
                    "height": 270
                  },
                  {
                    "url": "https://external-preview.redd.it/NXmpZ7tP8q4DFl296nfHefvr3uyzF8sexttHSZE6lV0.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=e86ce18df5225377715dfcd085befa163e13f50a",
                    "width": 320,
                    "height": 401
                  }
                ],
                "variants": {},
                "id": "UuB7uDwx8ZO7acdNPFvPtPc7cGxPeGgY_fM7ji4K9o8"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 400,
              "id": "award_84276b1e-cc8f-484f-a19c-be6c09adc1a5",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_512.png",
              "days_of_premium": 0,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/SnooClapping_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "An amazing showing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Bravo!",
              "icon_format": "APNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 125,
              "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=48&amp;height=48&amp;auto=webp&amp;s=febdf28b6f39f7da7eb1365325b85e0bb49a9f63",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=64&amp;height=64&amp;auto=webp&amp;s=b4406a2d88bf86fa3dc8a45aacf7e0c7bdccc4fb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=128&amp;height=128&amp;auto=webp&amp;s=19555b13e3e196b62eeb9160d1ac1d1b372dcb0b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0840z",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "ReyJuan",
          "discussion_type": null,
          "num_comments": 287,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0840z/parenting_done_right/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/ndplpcktbhs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586737532.0,
          "num_crossposts": 12,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/ndplpcktbhs41/DASH_480?source=fallback",
              "height": 480,
              "width": 384,
              "scrubber_media_url": "https://v.redd.it/ndplpcktbhs41/DASH_96",
              "dash_url": "https://v.redd.it/ndplpcktbhs41/DASHPlaylist.mpd",
              "duration": 20,
              "hls_url": "https://v.redd.it/ndplpcktbhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_3u82nqnr",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Baby barn owl hearing thunder for the first time",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 78,
          "hide_score": false,
          "name": "t3_g06thl",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 42036,
          "total_awards_received": 4,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/mwmplcg4xgs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 1920,
              "scrubber_media_url": "https://v.redd.it/mwmplcg4xgs41/DASH_96",
              "dash_url": "https://v.redd.it/mwmplcg4xgs41/DASHPlaylist.mpd",
              "duration": 22,
              "hls_url": "https://v.redd.it/mwmplcg4xgs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 42036,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/xU_S8xBSFZwLT71xQGnTIVc-cCHvUFrs4rPiEqI8EfM.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_2": 1,
            "gid_3": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586761415.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?format=pjpg&amp;auto=webp&amp;s=16d215ab2b5638b0511b8fbb9e784da96b9ba566",
                  "width": 1920,
                  "height": 1080
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=72ea9517a619f2a65faf714ef3119eebc1c44304",
                    "width": 108,
                    "height": 60
                  },
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=110e27aba581c64c24b5a83a50a815cec798249e",
                    "width": 216,
                    "height": 121
                  },
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=39bb5c9ec4eb6a22f97330adfef7031be2d574eb",
                    "width": 320,
                    "height": 180
                  },
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=2c6c71d259df4f7183b4c70682c57c64c38a79a2",
                    "width": 640,
                    "height": 360
                  },
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=4bb4d734044e1a781f9e72ec23ec0b05d2a53281",
                    "width": 960,
                    "height": 540
                  },
                  {
                    "url": "https://external-preview.redd.it/yks-tYCpXLgSjeZlRn-AMUR-Ghf26d4JGkM-SeY0cFM.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=cb9c8698d97b64e6ab78e72088680d77845bfc37",
                    "width": 1080,
                    "height": 607
                  }
                ],
                "variants": {},
                "id": "7lZBfX2icEOa1zIfgYXBHJUWQLR1GDc5Xapcf-QldU0"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 31,
              "coin_price": 1800,
              "id": "gid_3",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/platinum_512.png",
              "days_of_premium": 31,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/platinum_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/platinum_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/platinum_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/platinum_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/platinum_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a month of Reddit Premium, which includes %{coin_symbol}700 Coins for that month, and shows a Platinum Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Platinum",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "award_1f0462ee-18f5-4f33-89cf-f1f79336a452",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=16&amp;height=16&amp;auto=webp&amp;s=3ca7dc1f4e12ca386a561446e72f772d38ba49d8",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=32&amp;height=32&amp;auto=webp&amp;s=c19d1e661e4aa6a9326a9f0b74b3ebf5d9f7a75e",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=48&amp;height=48&amp;auto=webp&amp;s=ed063580825e72b0ae63fe30c807b453b1362694",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=64&amp;height=64&amp;auto=webp&amp;s=7176b4b72b850e3e052138fe8b3967c4c5b52dae",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=128&amp;height=128&amp;auto=webp&amp;s=f7b307840995777f9ae04699d019740658ba0e77",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing. Gives %{coin_symbol}100 Coins to both the author and the community.",
              "end_date": null,
              "subreddit_coin_reward": 100,
              "count": 1,
              "name": "Wholesome (Pro)",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 50,
              "id": "award_4f907089-55d0-4b08-885c-59739ce5d6e9",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=16&amp;height=16&amp;auto=webp&amp;s=6c9fe79eec2c68c3be1c91eeb4e29f31bd4d963c",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=32&amp;height=32&amp;auto=webp&amp;s=9c47f06a92d02831c36fc7510b42f80874473a47",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=48&amp;height=48&amp;auto=webp&amp;s=96a58bc91a28d35484bdac77b6a509c02c674bfa",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=64&amp;height=64&amp;auto=webp&amp;s=87de016319d99eea2d594f2c115b81b2b9ea58a0",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=128&amp;height=128&amp;auto=webp&amp;s=6ad3ac89ebba6c973572635a845930f5c6b5a964",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "Cozy at home.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Hygge",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g06thl",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "FukkinShytUp",
          "discussion_type": null,
          "num_comments": 400,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g06thl/baby_barn_owl_hearing_thunder_for_the_first_time/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/mwmplcg4xgs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586732615.0,
          "num_crossposts": 19,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/mwmplcg4xgs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 1920,
              "scrubber_media_url": "https://v.redd.it/mwmplcg4xgs41/DASH_96",
              "dash_url": "https://v.redd.it/mwmplcg4xgs41/DASHPlaylist.mpd",
              "duration": 22,
              "hls_url": "https://v.redd.it/mwmplcg4xgs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_gpf0g",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Penelope the porcupine. I\u2019ve worked with her since she came to us at 1 month old and she\u2019ll be 4 years old next week!",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 78,
          "hide_score": false,
          "name": "t3_g0bhmn",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 4255,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/x1ngyl0vdis41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 1920,
              "scrubber_media_url": "https://v.redd.it/x1ngyl0vdis41/DASH_96",
              "dash_url": "https://v.redd.it/x1ngyl0vdis41/DASHPlaylist.mpd",
              "duration": 50,
              "hls_url": "https://v.redd.it/x1ngyl0vdis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 4255,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/OD1ty6GoiAd49pJJscZjMGcuW63gMccrES8TISN4P5U.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586779236.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?format=pjpg&amp;auto=webp&amp;s=77d20ef68e01298fecc133649db7bd760c3e5752",
                  "width": 1920,
                  "height": 1080
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=9e0a9b3ad774b62c60827f4af14b7d237b123785",
                    "width": 108,
                    "height": 60
                  },
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=b130c508d5f402663e8f96d9ba6de5b6e337a1e4",
                    "width": 216,
                    "height": 121
                  },
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=4ca9d7b1f5589b30fc9f8ec8c638aaabac34be88",
                    "width": 320,
                    "height": 180
                  },
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=160c17050266635dcc2745486b5c0513fa3e2450",
                    "width": 640,
                    "height": 360
                  },
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=f121d43db91fcceb8f08b002d513934f9d92f4d8",
                    "width": 960,
                    "height": 540
                  },
                  {
                    "url": "https://external-preview.redd.it/wTxNL5_2S7TOflA4bHkzGuHjLR7nQEaROSdJXMd7ubY.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=caf89fb830d8b41ecdbaf057ce2586ce389b5388",
                    "width": 1080,
                    "height": 607
                  }
                ],
                "variants": {},
                "id": "MQB5in-lYfVLnblu0HjLDE-uYbfV2X8m_67t4Matg-E"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0bhmn",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "aquanite",
          "discussion_type": null,
          "num_comments": 121,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0bhmn/penelope_the_porcupine_ive_worked_with_her_since/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/x1ngyl0vdis41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586750436.0,
          "num_crossposts": 0,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/x1ngyl0vdis41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 1920,
              "scrubber_media_url": "https://v.redd.it/x1ngyl0vdis41/DASH_96",
              "dash_url": "https://v.redd.it/x1ngyl0vdis41/DASHPlaylist.mpd",
              "duration": 50,
              "hls_url": "https://v.redd.it/x1ngyl0vdis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_2xf0jofg",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Being a kitten is pretty exhausting..",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g069ux",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": "",
          "subreddit_type": "public",
          "ups": 41170,
          "total_awards_received": 6,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/7jqt8pl2rgs41/DASH_720?source=fallback",
              "height": 720,
              "width": 720,
              "scrubber_media_url": "https://v.redd.it/7jqt8pl2rgs41/DASH_96",
              "dash_url": "https://v.redd.it/7jqt8pl2rgs41/DASHPlaylist.mpd",
              "duration": 36,
              "hls_url": "https://v.redd.it/7jqt8pl2rgs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 41170,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/Kpa5J-d8zrgvYD_t78syMJWuC4mvvTRGuIQYlIyFbRY.jpg",
          "edited": false,
          "author_flair_css_class": "k",
          "author_flair_richtext": [],
          "gildings": {
            "gid_1": 2,
            "gid_2": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586759417.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": "confidence",
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/DVoHYAJ6x9nL92pKEtNtCX99b2MO9cAYfqyV7ZEzNJE.png?format=pjpg&amp;auto=webp&amp;s=4788d37214bff07b6bc491f2ec838473dcd29b6a",
                  "width": 720,
                  "height": 720
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/DVoHYAJ6x9nL92pKEtNtCX99b2MO9cAYfqyV7ZEzNJE.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=df05d5d9e5780cb956ea5945243eee3d9f142e55",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://external-preview.redd.it/DVoHYAJ6x9nL92pKEtNtCX99b2MO9cAYfqyV7ZEzNJE.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=88d63a27cf1bbb715abf98a42122448d101b2b8d",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://external-preview.redd.it/DVoHYAJ6x9nL92pKEtNtCX99b2MO9cAYfqyV7ZEzNJE.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=2b5ab045f90683f1e0334bdc3c7320490c4ec5de",
                    "width": 320,
                    "height": 320
                  },
                  {
                    "url": "https://external-preview.redd.it/DVoHYAJ6x9nL92pKEtNtCX99b2MO9cAYfqyV7ZEzNJE.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=414990b7a7c4c53a4f45985828ef38d690594a26",
                    "width": 640,
                    "height": 640
                  }
                ],
                "variants": {},
                "id": "IdhqaZHcOfClHDdotQIzxy9m2DvLWzDi6GS-dGO-GrA"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 50,
              "id": "award_c4b2e438-16bb-4568-88e7-7893b7662944",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=16&amp;height=16&amp;auto=webp&amp;s=1a331be5cf6d754b4cb7ed2ca3706f70d5260a57",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=32&amp;height=32&amp;auto=webp&amp;s=6d0a6351d4080286095df432f95a103cdf4188f2",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=48&amp;height=48&amp;auto=webp&amp;s=913e99a6f6688f26c08dcb411f043f71b17df931",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=64&amp;height=64&amp;auto=webp&amp;s=e3ad9900371bf1f91eb422b4d000b3a1c0d5a9c4",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=128&amp;height=128&amp;auto=webp&amp;s=4cc281fbace61e034477d2bdb7b158913457863d",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "A glittering stamp for a feel-good thing",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome Seal of Approval",
              "icon_format": null,
              "award_sub_type": "PREMIUM",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 125,
              "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=48&amp;height=48&amp;auto=webp&amp;s=febdf28b6f39f7da7eb1365325b85e0bb49a9f63",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=64&amp;height=64&amp;auto=webp&amp;s=b4406a2d88bf86fa3dc8a45aacf7e0c7bdccc4fb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=128&amp;height=128&amp;auto=webp&amp;s=19555b13e3e196b62eeb9160d1ac1d1b372dcb0b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 100,
              "id": "gid_1",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/silver_512.png",
              "days_of_premium": 0,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Shows the Silver Award... and that's it.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 2,
              "name": "Silver",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 50,
              "id": "award_4f907089-55d0-4b08-885c-59739ce5d6e9",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=16&amp;height=16&amp;auto=webp&amp;s=6c9fe79eec2c68c3be1c91eeb4e29f31bd4d963c",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=32&amp;height=32&amp;auto=webp&amp;s=9c47f06a92d02831c36fc7510b42f80874473a47",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=48&amp;height=48&amp;auto=webp&amp;s=96a58bc91a28d35484bdac77b6a509c02c674bfa",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=64&amp;height=64&amp;auto=webp&amp;s=87de016319d99eea2d594f2c115b81b2b9ea58a0",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/76ug1xmtn2s41_Hygge.png?width=128&amp;height=128&amp;auto=webp&amp;s=6ad3ac89ebba6c973572635a845930f5c6b5a964",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "Cozy at home.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Hygge",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g069ux",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "d3333p7",
          "discussion_type": null,
          "num_comments": 234,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": "dark",
          "permalink": "/r/aww/comments/g069ux/being_a_kitten_is_pretty_exhausting/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/7jqt8pl2rgs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586730617.0,
          "num_crossposts": 16,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/7jqt8pl2rgs41/DASH_720?source=fallback",
              "height": 720,
              "width": 720,
              "scrubber_media_url": "https://v.redd.it/7jqt8pl2rgs41/DASH_96",
              "dash_url": "https://v.redd.it/7jqt8pl2rgs41/DASHPlaylist.mpd",
              "duration": 36,
              "hls_url": "https://v.redd.it/7jqt8pl2rgs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_u4on434",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Hope this makes your day better.",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0b7jx",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 4120,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 4120,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/AQumhX-AvqVu9GvIcGyg4klVH8txmuj3P1RXbPXNbTw.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586778148.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/e70ysgjyais41.jpg?auto=webp&amp;s=9361431a09c6248f0f285b97657d7e32568fa5a8",
                  "width": 640,
                  "height": 640
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/e70ysgjyais41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=bf32a72a51ea60ffed3a298490033bb29d44b87d",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://preview.redd.it/e70ysgjyais41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=d7dce9bf4886acff199feb31d864ebc7bdf0e070",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://preview.redd.it/e70ysgjyais41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=d6d549191d1289e7055a8c11f8e2ef4435130856",
                    "width": 320,
                    "height": 320
                  },
                  {
                    "url": "https://preview.redd.it/e70ysgjyais41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=e33932b1875255f04df405061521f9eeded86d56",
                    "width": 640,
                    "height": 640
                  }
                ],
                "variants": {},
                "id": "XIL61KfqB_mmz9-DmwxHXfSiBCHMAfsCMHRdQe68ges"
              }
            ],
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0b7jx",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "0utcazt",
          "discussion_type": null,
          "num_comments": 47,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0b7jx/hope_this_makes_your_day_better/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/e70ysgjyais41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586749348.0,
          "num_crossposts": 1,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_15pdxq",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Alpacas should be mandatory to keep as pets",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g09yp8",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 6128,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/yztu2tw8xhs41/DASH_480?source=fallback",
              "height": 480,
              "width": 270,
              "scrubber_media_url": "https://v.redd.it/yztu2tw8xhs41/DASH_96",
              "dash_url": "https://v.redd.it/yztu2tw8xhs41/DASHPlaylist.mpd",
              "duration": 12,
              "hls_url": "https://v.redd.it/yztu2tw8xhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 6128,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/iNDaV_aZ_-oG6TS8Be9zbC4Im-Vr7oRsfyyPa4B0Mys.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586773538.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/xR7seFX_2v9mh4TgYFtljPI3wStrTfPF9u9tHzAeg0Q.png?format=pjpg&amp;auto=webp&amp;s=424cd75cee57e359baf3a340e634e177c7be8cbe",
                  "width": 270,
                  "height": 480
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/xR7seFX_2v9mh4TgYFtljPI3wStrTfPF9u9tHzAeg0Q.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=3fb09f10c6fe762c96cd2a693ac6bc0abbbaf65e",
                    "width": 108,
                    "height": 192
                  },
                  {
                    "url": "https://external-preview.redd.it/xR7seFX_2v9mh4TgYFtljPI3wStrTfPF9u9tHzAeg0Q.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=5e3c46cc2eb8faeefbfa1cc7f3d89427bec6f907",
                    "width": 216,
                    "height": 384
                  }
                ],
                "variants": {},
                "id": "d4Z5x9j1Tn_Z588dIT6ZAkrYPn4PTZBQMKDBGm4kWts"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g09yp8",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "kaneki23_",
          "discussion_type": null,
          "num_comments": 96,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g09yp8/alpacas_should_be_mandatory_to_keep_as_pets/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/yztu2tw8xhs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586744738.0,
          "num_crossposts": 1,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/yztu2tw8xhs41/DASH_480?source=fallback",
              "height": 480,
              "width": 270,
              "scrubber_media_url": "https://v.redd.it/yztu2tw8xhs41/DASH_96",
              "dash_url": "https://v.redd.it/yztu2tw8xhs41/DASHPlaylist.mpd",
              "duration": 12,
              "hls_url": "https://v.redd.it/yztu2tw8xhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_4ak36ko1",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "he's very excited",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0cyb1",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": "",
          "subreddit_type": "public",
          "ups": 2229,
          "total_awards_received": 1,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/4536ljg9xis41/DASH_480?source=fallback",
              "height": 480,
              "width": 480,
              "scrubber_media_url": "https://v.redd.it/4536ljg9xis41/DASH_96",
              "dash_url": "https://v.redd.it/4536ljg9xis41/DASHPlaylist.mpd",
              "duration": 14,
              "hls_url": "https://v.redd.it/4536ljg9xis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 2229,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/IJc2T-Zvvn_QZe2Aon5YqRgrxOW-ius-ue9OzSzDcYU.jpg",
          "edited": false,
          "author_flair_css_class": "k",
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586785650.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": "confidence",
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/Ka7sau2k81p9ZV1nJcqV4ZF0-qHcOt2X-RVVIs8byic.png?format=pjpg&amp;auto=webp&amp;s=2c2d91bbc82b449a83591d06c81caa808c983c1d",
                  "width": 640,
                  "height": 640
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/Ka7sau2k81p9ZV1nJcqV4ZF0-qHcOt2X-RVVIs8byic.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=434aef6e5004b20e8020457d1174142186ff133b",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://external-preview.redd.it/Ka7sau2k81p9ZV1nJcqV4ZF0-qHcOt2X-RVVIs8byic.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=44d730f93b3d8c56ac98c199f5a9e48807823156",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://external-preview.redd.it/Ka7sau2k81p9ZV1nJcqV4ZF0-qHcOt2X-RVVIs8byic.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=c84c7c0806c7bd2031a2af5ac7d8098498ee26eb",
                    "width": 320,
                    "height": 320
                  },
                  {
                    "url": "https://external-preview.redd.it/Ka7sau2k81p9ZV1nJcqV4ZF0-qHcOt2X-RVVIs8byic.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=72d521d6484cf476ac3ae9a4ceb8bfc59db26f9a",
                    "width": 640,
                    "height": 640
                  }
                ],
                "variants": {},
                "id": "J2qLVhRDXJ_mRFUie1UUeIdqV1DPXgiHQ9x2I9akCoc"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 125,
              "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=48&amp;height=48&amp;auto=webp&amp;s=febdf28b6f39f7da7eb1365325b85e0bb49a9f63",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=64&amp;height=64&amp;auto=webp&amp;s=b4406a2d88bf86fa3dc8a45aacf7e0c7bdccc4fb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=128&amp;height=128&amp;auto=webp&amp;s=19555b13e3e196b62eeb9160d1ac1d1b372dcb0b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0cyb1",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "KH93b",
          "discussion_type": null,
          "num_comments": 23,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": "dark",
          "permalink": "/r/aww/comments/g0cyb1/hes_very_excited/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/4536ljg9xis41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586756850.0,
          "num_crossposts": 5,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/4536ljg9xis41/DASH_480?source=fallback",
              "height": 480,
              "width": 480,
              "scrubber_media_url": "https://v.redd.it/4536ljg9xis41/DASH_96",
              "dash_url": "https://v.redd.it/4536ljg9xis41/DASHPlaylist.mpd",
              "duration": 14,
              "hls_url": "https://v.redd.it/4536ljg9xis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_j63hc",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 2,
          "clicked": false,
          "title": "Our rescue Cooper\u2019s first meal was a sandwich he stole from the table. Fast forward 5 years later and now he has his very own sandwich shop",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g03uft",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 32883,
          "total_awards_received": 6,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 32883,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/x9F--n242DshxKNMg7YYqCWI4munuHYLN-doQKY_sBI.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_1": 1,
            "gid_2": 2
          },
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586751204.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?auto=webp&amp;s=2b325e7935df3bf632260bf85299f7e6ec7c7fac",
                  "width": 3024,
                  "height": 4032
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=2a7528e7e12b6800cbf3d3efdcde132f0f4db3b0",
                    "width": 108,
                    "height": 144
                  },
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=23ec7cc076d8618db3844cb761ef0092a6bd4c6f",
                    "width": 216,
                    "height": 288
                  },
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=604666573aafc33ebc3858ab3e2279f89fe7c495",
                    "width": 320,
                    "height": 426
                  },
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=dc67e1625a50652ffbe2ada98b94ca791c0ad2da",
                    "width": 640,
                    "height": 853
                  },
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=2065a33f176fe5a9e8e68781d7a803d2300c9cae",
                    "width": 960,
                    "height": 1280
                  },
                  {
                    "url": "https://preview.redd.it/qnf2auqo2gs41.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;s=3e051dd33265bb4f2a2f14f92d5544ae416b0bb6",
                    "width": 1080,
                    "height": 1440
                  }
                ],
                "variants": {},
                "id": "aCFNfRLVFnIc33Q-8D5Ntcmj14XUCgqLzLtdpoFbGkI"
              }
            ],
            "enabled": true
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "award_1f0462ee-18f5-4f33-89cf-f1f79336a452",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=16&amp;height=16&amp;auto=webp&amp;s=3ca7dc1f4e12ca386a561446e72f772d38ba49d8",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=32&amp;height=32&amp;auto=webp&amp;s=c19d1e661e4aa6a9326a9f0b74b3ebf5d9f7a75e",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=48&amp;height=48&amp;auto=webp&amp;s=ed063580825e72b0ae63fe30c807b453b1362694",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=64&amp;height=64&amp;auto=webp&amp;s=7176b4b72b850e3e052138fe8b3967c4c5b52dae",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=128&amp;height=128&amp;auto=webp&amp;s=f7b307840995777f9ae04699d019740658ba0e77",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing. Gives %{coin_symbol}100 Coins to both the author and the community.",
              "end_date": null,
              "subreddit_coin_reward": 100,
              "count": 1,
              "name": "Wholesome (Pro)",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 2,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 250,
              "id": "award_a3c1ccbb-45ed-44d4-bc46-2cd29e512ac9",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=16&amp;height=16&amp;auto=webp&amp;s=6705c0f5e744551f6254cf0deb82f844149c7316",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=32&amp;height=32&amp;auto=webp&amp;s=fe212fbc05a8f58fbb49682ad3704ed1a5d461cf",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=48&amp;height=48&amp;auto=webp&amp;s=fa34c1777ec2194aeef3fe290e23fd1fa91416a9",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=64&amp;height=64&amp;auto=webp&amp;s=75d7bcd098d9cb9622d873d0cdd3901aee491442",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=128&amp;height=128&amp;auto=webp&amp;s=cc61c29c0435779cdad2983dc8277b77654237ec",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When the love is out of control.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Super Heart Eyes",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 100,
              "id": "gid_1",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/silver_512.png",
              "days_of_premium": 0,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Shows the Silver Award... and that's it.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Silver",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 30,
              "id": "award_cc091963-e271-45aa-ba23-b5150e565520",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png?width=16&amp;height=16&amp;auto=webp&amp;s=d4e4b3cfbecad87c56ffab318d80e02cdffe8966",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png?width=32&amp;height=32&amp;auto=webp&amp;s=43352d662591ae102753c993c789657de972f58e",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png?width=48&amp;height=48&amp;auto=webp&amp;s=85098196df26658027c56256f4f1af30f64d2814",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png?width=64&amp;height=64&amp;auto=webp&amp;s=54ceb80aea498998e8c0d51ee7d081df46864fcb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qq73pijkm3p41_SafeSocial.png?width=128&amp;height=128&amp;auto=webp&amp;s=537008818079f88ec2a14fccbd44abc515ba0832",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "Connecting together responsibly",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Safe &amp; Social",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g03uft",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "Melflorez",
          "discussion_type": null,
          "num_comments": 426,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g03uft/our_rescue_coopers_first_meal_was_a_sandwich_he/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/qnf2auqo2gs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586722404.0,
          "num_crossposts": 5,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_dauglgy",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "A different Easter bunny",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g08wv8",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 4616,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 4616,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/c5gY8Nc_ugR0SLBYeZFi3vlmM598ptPBEwSu8f7VkRg.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586769480.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?auto=webp&amp;s=c211b35e85d52cee3e4b382a504827a80546f488",
                  "width": 960,
                  "height": 960
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=7407c430a4f03e61ab68ef16103433f12929a44a",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=f368032462a92682c65a7521003cc2ff09e62e0a",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=81c5a92486c00bcce394e1f5aa3202ca3d63f116",
                    "width": 320,
                    "height": 320
                  },
                  {
                    "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=346bbd1c6adf3850d5f01981abc74291451e45b2",
                    "width": 640,
                    "height": 640
                  },
                  {
                    "url": "https://preview.redd.it/krn7y9p6lhs41.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=00c50c11550db52dcbeaaef1e963bfdb90268ba1",
                    "width": 960,
                    "height": 960
                  }
                ],
                "variants": {},
                "id": "xP16TRH8qOa7AgPLZ1hFga80aMqVdVwq8m4grPkfPYk"
              }
            ],
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g08wv8",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "mustbeaweasley94",
          "discussion_type": null,
          "num_comments": 47,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g08wv8/a_different_easter_bunny/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/krn7y9p6lhs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586740680.0,
          "num_crossposts": 2,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_avj7dd6",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Work From Home Done Right",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 77,
          "hide_score": false,
          "name": "t3_g03ch2",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 49690,
          "total_awards_received": 1,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": false,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 49690,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://a.thumbs.redditmedia.com/0eQ7jqkewnofrdU9PhTBiN6kko9FT5AlP5CuOcU4vV8.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_2": 1
          },
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586749524.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.imgur.com",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?auto=webp&amp;s=9c4278f093ac4228f0499fbf1a46d0a9de5bbc21",
                  "width": 1080,
                  "height": 600
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=4cd33fe40320447313811a6a76c61ef729788b76",
                    "width": 108,
                    "height": 60
                  },
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=0e982ff706b0f157bdb01c50342332d931178476",
                    "width": 216,
                    "height": 120
                  },
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=92aa7490e8f5cdf75b129d5bf15aa57f0a32e986",
                    "width": 320,
                    "height": 177
                  },
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=8e9398e465b468245b878ba5d0e44e246dc66b6d",
                    "width": 640,
                    "height": 355
                  },
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=44c7eede86e61b1351ab039ab7775e17169f9924",
                    "width": 960,
                    "height": 533
                  },
                  {
                    "url": "https://external-preview.redd.it/Y9pV2YAcMDaJM4FFJwBtEQmL46AovXW5u_vp_XkNO2E.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;s=080bddad0a2d3571b41d25a455050fa247c9200b",
                    "width": 1080,
                    "height": 600
                  }
                ],
                "variants": {},
                "id": "Zi8ITvsTdhxiiZOvJsey3lzfx8IXLQFeUj4h8UJGBJM"
              }
            ],
            "enabled": true
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g03ch2",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "IndianaRN",
          "discussion_type": null,
          "num_comments": 314,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g03ch2/work_from_home_done_right/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.imgur.com/TipgU9i.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586720724.0,
          "num_crossposts": 10,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_3t7lf8qp",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Happiest Easter Bunny",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g04zin",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 17411,
          "total_awards_received": 2,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/li86d89wdgs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 864,
              "scrubber_media_url": "https://v.redd.it/li86d89wdgs41/DASH_96",
              "dash_url": "https://v.redd.it/li86d89wdgs41/DASHPlaylist.mpd",
              "duration": 9,
              "hls_url": "https://v.redd.it/li86d89wdgs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 17411,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://a.thumbs.redditmedia.com/6DxtZwpBUtTCEOBfy9asENNqjuy9bMari2fG8SsFd44.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_1": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586754966.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?format=pjpg&amp;auto=webp&amp;s=3a31c42775acc536f101125d8ca6b61d20fb26e3",
                  "width": 1080,
                  "height": 1350
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=035d099f23756759e0ea767eb3864f68b1036c8d",
                    "width": 108,
                    "height": 135
                  },
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=decdb0efbda77a65b415c8e69b32c4918e46d86a",
                    "width": 216,
                    "height": 270
                  },
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=d68fb0e01cfa8adc6ebe04d58730104cf6341954",
                    "width": 320,
                    "height": 400
                  },
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=ceaa106a2df5510f3576ac8bfeb2bd1b3672d4a9",
                    "width": 640,
                    "height": 800
                  },
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=023f84a6fd90f5a768808abfcbe01dad2399f81d",
                    "width": 960,
                    "height": 1200
                  },
                  {
                    "url": "https://external-preview.redd.it/fH_d9EXIqRkwLzM6ttfPhuEFbD2P3FjX5mDl7OtzMVU.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=15c10be8c05c3fb57e380a8e3ee9af7b1434ca0d",
                    "width": 1080,
                    "height": 1350
                  }
                ],
                "variants": {},
                "id": "kFHFZMqukasgIZbSSuSZaqddxZ3dZcN_hH8TcOwB-jM"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 125,
              "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=48&amp;height=48&amp;auto=webp&amp;s=febdf28b6f39f7da7eb1365325b85e0bb49a9f63",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=64&amp;height=64&amp;auto=webp&amp;s=b4406a2d88bf86fa3dc8a45aacf7e0c7bdccc4fb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=128&amp;height=128&amp;auto=webp&amp;s=19555b13e3e196b62eeb9160d1ac1d1b372dcb0b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 100,
              "id": "gid_1",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/silver_512.png",
              "days_of_premium": 0,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Shows the Silver Award... and that's it.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Silver",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g04zin",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "BabyBearYuki",
          "discussion_type": null,
          "num_comments": 66,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g04zin/happiest_easter_bunny/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/li86d89wdgs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586726166.0,
          "num_crossposts": 4,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/li86d89wdgs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 864,
              "scrubber_media_url": "https://v.redd.it/li86d89wdgs41/DASH_96",
              "dash_url": "https://v.redd.it/li86d89wdgs41/DASHPlaylist.mpd",
              "duration": 9,
              "hls_url": "https://v.redd.it/li86d89wdgs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_10cae8",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "My husband and I don\u2019t have kids, so we decided to have an Easter egg hunt for our dogs",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g05bx2",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 12308,
          "total_awards_received": 3,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/r8y8byryggs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/r8y8byryggs41/DASH_96",
              "dash_url": "https://v.redd.it/r8y8byryggs41/DASHPlaylist.mpd",
              "duration": 97,
              "hls_url": "https://v.redd.it/r8y8byryggs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 12308,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/HmRO6P3h3ABP4Pq_uybeKsrm8qhqqxcBa9LTJy-uzVc.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_2": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586756130.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?format=pjpg&amp;auto=webp&amp;s=ac2bcc0c3e5627260bd9194e53c0a58333ef6923",
                  "width": 1080,
                  "height": 1920
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=0848ef43f0e92c032f3d6c23a7f71fb8ccf8c638",
                    "width": 108,
                    "height": 192
                  },
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=5d36a992f01c77ed585389e0ac4394ee398fed82",
                    "width": 216,
                    "height": 384
                  },
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=c09019f1e8901576db91dd7e547120ff9407cd74",
                    "width": 320,
                    "height": 568
                  },
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=2851c497d9ce2c20059bba128538c887485d04f8",
                    "width": 640,
                    "height": 1137
                  },
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=57baf06aaee07d0d26298c66c6dca06f2dd5c045",
                    "width": 960,
                    "height": 1706
                  },
                  {
                    "url": "https://external-preview.redd.it/DbLCSz14BWxgLOkwoE1sqsM7i_VHxiEKYhdeDE6BkI0.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=206e17fb97af528250d45c1466c97b196978d55c",
                    "width": 1080,
                    "height": 1920
                  }
                ],
                "variants": {},
                "id": "nPgChFRIWUcpeh7E2idzKx4QB3jO_7ttVze1G9YqxGg"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 50,
              "id": "award_c4b2e438-16bb-4568-88e7-7893b7662944",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=16&amp;height=16&amp;auto=webp&amp;s=1a331be5cf6d754b4cb7ed2ca3706f70d5260a57",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=32&amp;height=32&amp;auto=webp&amp;s=6d0a6351d4080286095df432f95a103cdf4188f2",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=48&amp;height=48&amp;auto=webp&amp;s=913e99a6f6688f26c08dcb411f043f71b17df931",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=64&amp;height=64&amp;auto=webp&amp;s=e3ad9900371bf1f91eb422b4d000b3a1c0d5a9c4",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/b9ks3a5k7jj41_WholesomeSealofApproval.png?width=128&amp;height=128&amp;auto=webp&amp;s=4cc281fbace61e034477d2bdb7b158913457863d",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "A glittering stamp for a feel-good thing",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome Seal of Approval",
              "icon_format": null,
              "award_sub_type": "PREMIUM",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 250,
              "id": "award_a3c1ccbb-45ed-44d4-bc46-2cd29e512ac9",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=16&amp;height=16&amp;auto=webp&amp;s=6705c0f5e744551f6254cf0deb82f844149c7316",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=32&amp;height=32&amp;auto=webp&amp;s=fe212fbc05a8f58fbb49682ad3704ed1a5d461cf",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=48&amp;height=48&amp;auto=webp&amp;s=fa34c1777ec2194aeef3fe290e23fd1fa91416a9",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=64&amp;height=64&amp;auto=webp&amp;s=75d7bcd098d9cb9622d873d0cdd3901aee491442",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/trfyx0qv67g41_SuperHeartEyes.png?width=128&amp;height=128&amp;auto=webp&amp;s=cc61c29c0435779cdad2983dc8277b77654237ec",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When the love is out of control.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Super Heart Eyes",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g05bx2",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "ntrepany",
          "discussion_type": null,
          "num_comments": 183,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g05bx2/my_husband_and_i_dont_have_kids_so_we_decided_to/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/r8y8byryggs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586727330.0,
          "num_crossposts": 1,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/r8y8byryggs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/r8y8byryggs41/DASH_96",
              "dash_url": "https://v.redd.it/r8y8byryggs41/DASHPlaylist.mpd",
              "duration": 97,
              "hls_url": "https://v.redd.it/r8y8byryggs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_63af5dq8",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Baby laughs hysterically as mother fake sneezes.",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0c1q2",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 1619,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/vhermbx3lis41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/vhermbx3lis41/DASH_96",
              "dash_url": "https://v.redd.it/vhermbx3lis41/DASHPlaylist.mpd",
              "duration": 57,
              "hls_url": "https://v.redd.it/vhermbx3lis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 1619,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://a.thumbs.redditmedia.com/3jrMqYeI2R4iNkkxsCz-IE6V21M716wO0vWVXz9uCG8.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586781622.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?format=pjpg&amp;auto=webp&amp;s=8001128c87bb9a58b9586a8921b9af3be7f4c818",
                  "width": 1080,
                  "height": 1920
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=a71711b0a7035ce5a3b613ebaa3004d92e61803a",
                    "width": 108,
                    "height": 192
                  },
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=d2b6696a5cabcec0215e2323410ba9703927625e",
                    "width": 216,
                    "height": 384
                  },
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=7f89d0a265278bda7242d37e4a1e1262e43420fb",
                    "width": 320,
                    "height": 568
                  },
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=500e85c48d4011876ce3acef0a06437704758b43",
                    "width": 640,
                    "height": 1137
                  },
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=8833e9be3c69aaa1ca84fd0a8f91fb79163a414a",
                    "width": 960,
                    "height": 1706
                  },
                  {
                    "url": "https://external-preview.redd.it/8LHbu6GuhLZY2XmiTPyOt5ZnepDWx_FWdiwRRklS-bA.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=4f3a12d63556175a5155255dbf9d7cf18e588950",
                    "width": 1080,
                    "height": 1920
                  }
                ],
                "variants": {},
                "id": "cGbx0_PA-2AWDlAxlckJCHuOdyiIkxA32MS2u3RHy_o"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0c1q2",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "EsotericAstronaut",
          "discussion_type": null,
          "num_comments": 45,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0c1q2/baby_laughs_hysterically_as_mother_fake_sneezes/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/vhermbx3lis41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586752822.0,
          "num_crossposts": 3,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/vhermbx3lis41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/vhermbx3lis41/DASH_96",
              "dash_url": "https://v.redd.it/vhermbx3lis41/DASHPlaylist.mpd",
              "duration": 57,
              "hls_url": "https://v.redd.it/vhermbx3lis41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_ltl6a",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Local fox decided my backyard shed was the right place to raise her kits.",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 93,
          "hide_score": false,
          "name": "t3_g086m9",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 4219,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 4219,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/XgMZRmYhwcY4ydk_FmNENxETpuDhmdAKWxLNZvzyFtI.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586766613.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/6l0r43qnchs41.jpg?auto=webp&amp;s=1801d29b1d3ddc9665883f9bfe5312fb09eeb38c",
                  "width": 2304,
                  "height": 1536
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=de0514f28c76a87373d02e9cc271194c9f01f255",
                    "width": 108,
                    "height": 72
                  },
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=63bba88ad99ec56b85f57380ed3f5a55b997f8a5",
                    "width": 216,
                    "height": 144
                  },
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=952c312ad8fe89265075e460a6c63aaaf985e86b",
                    "width": 320,
                    "height": 213
                  },
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=f706b8ea012040734b82480591df460c18ab030e",
                    "width": 640,
                    "height": 426
                  },
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=eb4b5d20235623a595f92de7dfb41f1786ff9960",
                    "width": 960,
                    "height": 640
                  },
                  {
                    "url": "https://preview.redd.it/6l0r43qnchs41.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;s=2a280d195edee7126ebb49570083e7e9da4dae8d",
                    "width": 1080,
                    "height": 720
                  }
                ],
                "variants": {},
                "id": "1SBUKk7CpExxGb5E__enyulxpylQKLiNi4hbgmSZEWw"
              }
            ],
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g086m9",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "therealvertical",
          "discussion_type": null,
          "num_comments": 39,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g086m9/local_fox_decided_my_backyard_shed_was_the_right/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/6l0r43qnchs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586737813.0,
          "num_crossposts": 0,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_5wevmfgz",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "This is my life now",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g03v1t",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 13708,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/kg2zjauw2gs41/DASH_720?source=fallback",
              "height": 720,
              "width": 490,
              "scrubber_media_url": "https://v.redd.it/kg2zjauw2gs41/DASH_96",
              "dash_url": "https://v.redd.it/kg2zjauw2gs41/DASHPlaylist.mpd",
              "duration": 16,
              "hls_url": "https://v.redd.it/kg2zjauw2gs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 13708,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://a.thumbs.redditmedia.com/biN8rQ2T3RrBe-LiVjcXyLN0zjYtGqInqMfIwDuK-o8.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586751262.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/nvrGeQK0lGWAQAMohy7b5xYw5UOcvD3VdyH_HW5OcG0.png?format=pjpg&amp;auto=webp&amp;s=1e9fa378a53021cd965b865e0209eeac82627a0b",
                  "width": 540,
                  "height": 792
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/nvrGeQK0lGWAQAMohy7b5xYw5UOcvD3VdyH_HW5OcG0.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=2253199decc74ad00d8a3ab901db7b88a1b27864",
                    "width": 108,
                    "height": 158
                  },
                  {
                    "url": "https://external-preview.redd.it/nvrGeQK0lGWAQAMohy7b5xYw5UOcvD3VdyH_HW5OcG0.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=94f0c4f3a0162b9057daa34ee2511f40a3780bba",
                    "width": 216,
                    "height": 316
                  },
                  {
                    "url": "https://external-preview.redd.it/nvrGeQK0lGWAQAMohy7b5xYw5UOcvD3VdyH_HW5OcG0.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=48b82741eb00e1db32902f22419b8a1339044555",
                    "width": 320,
                    "height": 469
                  }
                ],
                "variants": {},
                "id": "phn5wzo_0kHLGdnZQtBXoHiXfVFUkefnYaRrz99Bxxg"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g03v1t",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "masteroogway324",
          "discussion_type": null,
          "num_comments": 99,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g03v1t/this_is_my_life_now/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/kg2zjauw2gs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586722462.0,
          "num_crossposts": 3,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/kg2zjauw2gs41/DASH_720?source=fallback",
              "height": 720,
              "width": 490,
              "scrubber_media_url": "https://v.redd.it/kg2zjauw2gs41/DASH_96",
              "dash_url": "https://v.redd.it/kg2zjauw2gs41/DASHPlaylist.mpd",
              "duration": 16,
              "hls_url": "https://v.redd.it/kg2zjauw2gs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_27lqafux",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "One year ago this went viral!",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g090o9",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 2715,
          "total_awards_received": 1,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/ou0yck8emhs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/ou0yck8emhs41/DASH_96",
              "dash_url": "https://v.redd.it/ou0yck8emhs41/DASHPlaylist.mpd",
              "duration": 10,
              "hls_url": "https://v.redd.it/ou0yck8emhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 2715,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/ZOd9p_1zXbXPnX9QkXASioQmYP6SADx2W5nRW8ARRIA.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586769897.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/UVr7xueBgfzgY2-uSPJYVBi0T7Y6BSzYknTSFIMTl_k.png?format=pjpg&amp;auto=webp&amp;s=e96c9585614419a66209b810557c88d301733ce0",
                  "width": 720,
                  "height": 1280
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/UVr7xueBgfzgY2-uSPJYVBi0T7Y6BSzYknTSFIMTl_k.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=d0e504403480eefea3981cd58b37ec1edf8bc356",
                    "width": 108,
                    "height": 192
                  },
                  {
                    "url": "https://external-preview.redd.it/UVr7xueBgfzgY2-uSPJYVBi0T7Y6BSzYknTSFIMTl_k.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=7b590bac795e51bd7fc9d3f142db792380a6c5d9",
                    "width": 216,
                    "height": 384
                  },
                  {
                    "url": "https://external-preview.redd.it/UVr7xueBgfzgY2-uSPJYVBi0T7Y6BSzYknTSFIMTl_k.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=611ea518c6e99966cab8bcc396475b5f4a80f468",
                    "width": 320,
                    "height": 568
                  },
                  {
                    "url": "https://external-preview.redd.it/UVr7xueBgfzgY2-uSPJYVBi0T7Y6BSzYknTSFIMTl_k.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=087fedb61baac702f9f51d63df1785233e59288d",
                    "width": 640,
                    "height": 1137
                  }
                ],
                "variants": {},
                "id": "BS7QEG8gTGnYZONMAuTL-BvK_lj32-IRHwTlOuDLRCw"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "award_1f0462ee-18f5-4f33-89cf-f1f79336a452",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=16&amp;height=16&amp;auto=webp&amp;s=3ca7dc1f4e12ca386a561446e72f772d38ba49d8",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=32&amp;height=32&amp;auto=webp&amp;s=c19d1e661e4aa6a9326a9f0b74b3ebf5d9f7a75e",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=48&amp;height=48&amp;auto=webp&amp;s=ed063580825e72b0ae63fe30c807b453b1362694",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=64&amp;height=64&amp;auto=webp&amp;s=7176b4b72b850e3e052138fe8b3967c4c5b52dae",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/0o2j782f00e41_WholesomeSuperpro.png?width=128&amp;height=128&amp;auto=webp&amp;s=f7b307840995777f9ae04699d019740658ba0e77",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing. Gives %{coin_symbol}100 Coins to both the author and the community.",
              "end_date": null,
              "subreddit_coin_reward": 100,
              "count": 1,
              "name": "Wholesome (Pro)",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g090o9",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "emmimei",
          "discussion_type": null,
          "num_comments": 32,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g090o9/one_year_ago_this_went_viral/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/ou0yck8emhs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586741097.0,
          "num_crossposts": 0,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/ou0yck8emhs41/DASH_1080?source=fallback",
              "height": 1080,
              "width": 608,
              "scrubber_media_url": "https://v.redd.it/ou0yck8emhs41/DASH_96",
              "dash_url": "https://v.redd.it/ou0yck8emhs41/DASHPlaylist.mpd",
              "duration": 10,
              "hls_url": "https://v.redd.it/ou0yck8emhs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_17awdnk1",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "This is how you do it",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g07jo5",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": "",
          "subreddit_type": "public",
          "ups": 3745,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/dfgab76f5hs41/DASH_360?source=fallback",
              "height": 360,
              "width": 360,
              "scrubber_media_url": "https://v.redd.it/dfgab76f5hs41/DASH_96",
              "dash_url": "https://v.redd.it/dfgab76f5hs41/DASHPlaylist.mpd",
              "duration": 6,
              "hls_url": "https://v.redd.it/dfgab76f5hs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 3745,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://a.thumbs.redditmedia.com/qPK7n2Q_7TzextZyU2wyyLiutScWGox19IHKIo0_ys8.jpg",
          "edited": false,
          "author_flair_css_class": "k",
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586764181.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": "confidence",
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/VOCxa8MEuwjDzXvgDd_Ja5hBiw1jyZ9CBe7KJPeHndw.png?format=pjpg&amp;auto=webp&amp;s=a95e0640518c9a11d4c19f0197556936118371db",
                  "width": 400,
                  "height": 400
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/VOCxa8MEuwjDzXvgDd_Ja5hBiw1jyZ9CBe7KJPeHndw.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=98fde57cb0df828b1775da69554cbfbc44e7f272",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://external-preview.redd.it/VOCxa8MEuwjDzXvgDd_Ja5hBiw1jyZ9CBe7KJPeHndw.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=8c7bcaeaa4d03182b82b0e7bcdef86568b729644",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://external-preview.redd.it/VOCxa8MEuwjDzXvgDd_Ja5hBiw1jyZ9CBe7KJPeHndw.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=51f295a9eb387d7b5506bef58cca23608aaade87",
                    "width": 320,
                    "height": 320
                  }
                ],
                "variants": {},
                "id": "cHR6O5Li0nmCklH2RZMYsGZawpwo0tkkhBU3ZQW8e5A"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g07jo5",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "SurpriseThere1",
          "discussion_type": null,
          "num_comments": 44,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": "dark",
          "permalink": "/r/aww/comments/g07jo5/this_is_how_you_do_it/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/dfgab76f5hs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586735381.0,
          "num_crossposts": 2,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/dfgab76f5hs41/DASH_360?source=fallback",
              "height": 360,
              "width": 360,
              "scrubber_media_url": "https://v.redd.it/dfgab76f5hs41/DASH_96",
              "dash_url": "https://v.redd.it/dfgab76f5hs41/DASHPlaylist.mpd",
              "duration": 6,
              "hls_url": "https://v.redd.it/dfgab76f5hs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_2cfvzpzq",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "A crossing guard making sure a family of ducks cross the road safely",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g090ra",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": "",
          "subreddit_type": "public",
          "ups": 2131,
          "total_awards_received": 0,
          "media_embed": {
            "content": "&lt;iframe class=\\"embedly-embed\\" src=\\"https://cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fgfycat.com%2Fifr%2Fsparsefarflungdavidstiger&amp;display_name=Gfycat&amp;url=https%3A%2F%2Fgfycat.com%2Fsparsefarflungdavidstiger&amp;image=https%3A%2F%2Fthumbs.gfycat.com%2FSparseFarflungDavidstiger-size_restricted.gif&amp;key=2aa3c4d5f3de4f5b9120b660ad850dc9&amp;type=text%2Fhtml&amp;schema=gfycat\\" width=\\"600\\" height=\\"600\\" scrolling=\\"no\\" title=\\"Gfycat embed\\" frameborder=\\"0\\" allow=\\"autoplay; fullscreen\\" allowfullscreen=\\"true\\"&gt;&lt;/iframe&gt;",
            "width": 600,
            "scrolling": false,
            "height": 600
          },
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "oembed": {
              "provider_url": "https://gfycat.com",
              "description": "Watch and share more GIFs, videos, and memes on Gfycat",
              "title": "GIF | Gfycat",
              "author_name": "Gfycat",
              "height": 600,
              "width": 600,
              "html": "&lt;iframe class=\\"embedly-embed\\" src=\\"https://cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fgfycat.com%2Fifr%2Fsparsefarflungdavidstiger&amp;display_name=Gfycat&amp;url=https%3A%2F%2Fgfycat.com%2Fsparsefarflungdavidstiger&amp;image=https%3A%2F%2Fthumbs.gfycat.com%2FSparseFarflungDavidstiger-size_restricted.gif&amp;key=2aa3c4d5f3de4f5b9120b660ad850dc9&amp;type=text%2Fhtml&amp;schema=gfycat\\" width=\\"600\\" height=\\"600\\" scrolling=\\"no\\" title=\\"Gfycat embed\\" frameborder=\\"0\\" allow=\\"autoplay; fullscreen\\" allowfullscreen=\\"true\\"&gt;&lt;/iframe&gt;",
              "thumbnail_width": 260,
              "version": "1.0",
              "provider_name": "Gfycat",
              "thumbnail_url": "https://thumbs.gfycat.com/SparseFarflungDavidstiger-size_restricted.gif",
              "type": "video",
              "thumbnail_height": 260
            },
            "type": "gfycat.com"
          },
          "is_reddit_media_domain": false,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {
            "content": "&lt;iframe class=\\"embedly-embed\\" src=\\"https://cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fgfycat.com%2Fifr%2Fsparsefarflungdavidstiger&amp;display_name=Gfycat&amp;url=https%3A%2F%2Fgfycat.com%2Fsparsefarflungdavidstiger&amp;image=https%3A%2F%2Fthumbs.gfycat.com%2FSparseFarflungDavidstiger-size_restricted.gif&amp;key=2aa3c4d5f3de4f5b9120b660ad850dc9&amp;type=text%2Fhtml&amp;schema=gfycat\\" width=\\"600\\" height=\\"600\\" scrolling=\\"no\\" title=\\"Gfycat embed\\" frameborder=\\"0\\" allow=\\"autoplay; fullscreen\\" allowfullscreen=\\"true\\"&gt;&lt;/iframe&gt;",
            "width": 600,
            "scrolling": false,
            "media_domain_url": "https://www.redditmedia.com/mediaembed/g090ra",
            "height": 600
          },
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 2131,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/vhPPHy2rabYv9s_ZEYY54xQ-0euHoBeuVy-3ar30tac.jpg",
          "edited": false,
          "author_flair_css_class": "k",
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "rich:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586769906.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "gfycat.com",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": "confidence",
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?format=png8&amp;s=18fa701262553837fd19c0d03e1a0bddc16533db",
                  "width": 260,
                  "height": 260
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=108&amp;crop=smart&amp;format=png8&amp;s=a217afe29342888cb7ad9a05636591822fc62320",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=216&amp;crop=smart&amp;format=png8&amp;s=c14ac5559e51359d2a2bd0ebdbdde80d90b44ce7",
                    "width": 216,
                    "height": 216
                  }
                ],
                "variants": {
                  "gif": {
                    "source": {
                      "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?s=a3ac0dde72688614b18612695a00399687cafe1c",
                      "width": 260,
                      "height": 260
                    },
                    "resolutions": [
                      {
                        "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=108&amp;crop=smart&amp;s=61e398c37cfb9e979bc1825c779fa21c28259929",
                        "width": 108,
                        "height": 108
                      },
                      {
                        "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=216&amp;crop=smart&amp;s=769fe9907b0db9a5cf5d722b3d7bbd5c585b5343",
                        "width": 216,
                        "height": 216
                      }
                    ]
                  },
                  "mp4": {
                    "source": {
                      "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?format=mp4&amp;s=44a0ad03000b650c6152564e47dbee1f3e6ea6fd",
                      "width": 260,
                      "height": 260
                    },
                    "resolutions": [
                      {
                        "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=108&amp;format=mp4&amp;s=f814d61b1cca6a777a99c7b6d6c736c6169aacad",
                        "width": 108,
                        "height": 108
                      },
                      {
                        "url": "https://external-preview.redd.it/_srzeIaoD_wEDTmcvA1F0ryX7wu9mYJaJV2nWTDaX4Q.gif?width=216&amp;format=mp4&amp;s=5db7b910f81122ad6bc10507069cb2e3ffbaf076",
                        "width": 216,
                        "height": 216
                      }
                    ]
                  }
                },
                "id": "WPyCNS2Qyzp3aVtjnt39f1m4dwN6iBW0FY4z-th2X8M"
              }
            ],
            "reddit_video_preview": {
              "fallback_url": "https://v.redd.it/0e73bid9mhs41/DASH_480",
              "height": 480,
              "width": 480,
              "scrubber_media_url": "https://v.redd.it/0e73bid9mhs41/DASH_96",
              "dash_url": "https://v.redd.it/0e73bid9mhs41/DASHPlaylist.mpd",
              "duration": 15,
              "hls_url": "https://v.redd.it/0e73bid9mhs41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            },
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g090ra",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "unnaturalorder",
          "discussion_type": null,
          "num_comments": 34,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": "dark",
          "permalink": "/r/aww/comments/g090ra/a_crossing_guard_making_sure_a_family_of_ducks/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://gfycat.com/sparsefarflungdavidstiger",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586741106.0,
          "num_crossposts": 1,
          "media": {
            "oembed": {
              "provider_url": "https://gfycat.com",
              "description": "Watch and share more GIFs, videos, and memes on Gfycat",
              "title": "GIF | Gfycat",
              "author_name": "Gfycat",
              "height": 600,
              "width": 600,
              "html": "&lt;iframe class=\\"embedly-embed\\" src=\\"https://cdn.embedly.com/widgets/media.html?src=https%3A%2F%2Fgfycat.com%2Fifr%2Fsparsefarflungdavidstiger&amp;display_name=Gfycat&amp;url=https%3A%2F%2Fgfycat.com%2Fsparsefarflungdavidstiger&amp;image=https%3A%2F%2Fthumbs.gfycat.com%2FSparseFarflungDavidstiger-size_restricted.gif&amp;key=2aa3c4d5f3de4f5b9120b660ad850dc9&amp;type=text%2Fhtml&amp;schema=gfycat\\" width=\\"600\\" height=\\"600\\" scrolling=\\"no\\" title=\\"Gfycat embed\\" frameborder=\\"0\\" allow=\\"autoplay; fullscreen\\" allowfullscreen=\\"true\\"&gt;&lt;/iframe&gt;",
              "thumbnail_width": 260,
              "version": "1.0",
              "provider_name": "Gfycat",
              "thumbnail_url": "https://thumbs.gfycat.com/SparseFarflungDavidstiger-size_restricted.gif",
              "type": "video",
              "thumbnail_height": 260
            },
            "type": "gfycat.com"
          },
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_k9xcf",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "This cat and pup are best friends",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g04eqp",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 6806,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/1wn26bm98gs41/DASH_480?source=fallback",
              "height": 480,
              "width": 384,
              "scrubber_media_url": "https://v.redd.it/1wn26bm98gs41/DASH_96",
              "dash_url": "https://v.redd.it/1wn26bm98gs41/DASHPlaylist.mpd",
              "duration": 15,
              "hls_url": "https://v.redd.it/1wn26bm98gs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 6806,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/aE30oGkXK5A9JuNZXe09UCZWC-5YooYBVePO88Brofk.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586753047.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/EbS7k2TpAHZDqjrYXYu5wAtQBvfLhDVA4Q7E9dpCkAk.png?format=pjpg&amp;auto=webp&amp;s=24161c22be86eb35ad0e57e6574126988108a937",
                  "width": 480,
                  "height": 600
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/EbS7k2TpAHZDqjrYXYu5wAtQBvfLhDVA4Q7E9dpCkAk.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=7b875d6fe1f11d473a4d0509dc3a3847a7cf1e3e",
                    "width": 108,
                    "height": 135
                  },
                  {
                    "url": "https://external-preview.redd.it/EbS7k2TpAHZDqjrYXYu5wAtQBvfLhDVA4Q7E9dpCkAk.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=a0e233d7614795e9bead23762de2499be34e0963",
                    "width": 216,
                    "height": 270
                  },
                  {
                    "url": "https://external-preview.redd.it/EbS7k2TpAHZDqjrYXYu5wAtQBvfLhDVA4Q7E9dpCkAk.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=c4765bcad44b8ce79f9f719c614c8438e327776c",
                    "width": 320,
                    "height": 400
                  }
                ],
                "variants": {},
                "id": "fOmyDzTqufg4jDifB3u-C5pKNJsmCtnKhSf6wAbvMC0"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g04eqp",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "sunbolts",
          "discussion_type": null,
          "num_comments": 47,
          "send_replies": false,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g04eqp/this_cat_and_pup_are_best_friends/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/1wn26bm98gs41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586724247.0,
          "num_crossposts": 2,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/1wn26bm98gs41/DASH_480?source=fallback",
              "height": 480,
              "width": 384,
              "scrubber_media_url": "https://v.redd.it/1wn26bm98gs41/DASH_96",
              "dash_url": "https://v.redd.it/1wn26bm98gs41/DASHPlaylist.mpd",
              "duration": 15,
              "hls_url": "https://v.redd.it/1wn26bm98gs41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_fa57h",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Got a cryptic text from Mom today to look at my porch. My siblings and I are all adults now, but still mom NEVER misses Easter. Not when we were all in college, not when I was working on the other side of the country for a few years, and certainly not during a global pandemic. Love you Mom \u2764\ufe0f",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0002i",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 23241,
          "total_awards_received": 2,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 23241,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/IIpFvPD-pHCIN39BDzh6_Hfy8soDKljj9JIJAhnEymQ.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586738481.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/enin87mw0fs41.jpg?auto=webp&amp;s=67740a12fe2518e132f7bb1c45e025e9e75227a2",
                  "width": 3024,
                  "height": 4032
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=d2efc346f4cc9928fd616edc916b45931b848f30",
                    "width": 108,
                    "height": 144
                  },
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=fb9d0a28d8385d07cb67b812684dfabaee03baef",
                    "width": 216,
                    "height": 288
                  },
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=1557d51f0c39056ba36493293d8d0cd041ad337d",
                    "width": 320,
                    "height": 426
                  },
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=81a6a2221a93ef86de762146df6f3a0167194aed",
                    "width": 640,
                    "height": 853
                  },
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=960&amp;crop=smart&amp;auto=webp&amp;s=e4fdc300fe51323e40cb9a281d7e12dd50938823",
                    "width": 960,
                    "height": 1280
                  },
                  {
                    "url": "https://preview.redd.it/enin87mw0fs41.jpg?width=1080&amp;crop=smart&amp;auto=webp&amp;s=3571444634e1c5c2e97a520697d58d5838a2408c",
                    "width": 1080,
                    "height": 1440
                  }
                ],
                "variants": {},
                "id": "8onatq3Q0XBx7MmvcyruJo71FZmDAZcYkRy8irz4Kwk"
              }
            ],
            "enabled": true
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 125,
              "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=48&amp;height=48&amp;auto=webp&amp;s=febdf28b6f39f7da7eb1365325b85e0bb49a9f63",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=64&amp;height=64&amp;auto=webp&amp;s=b4406a2d88bf86fa3dc8a45aacf7e0c7bdccc4fb",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=128&amp;height=128&amp;auto=webp&amp;s=19555b13e3e196b62eeb9160d1ac1d1b372dcb0b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "When you come across a feel-good thing.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Wholesome",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 30,
              "id": "award_3cf96da4-79da-4127-90ac-84545e1833dc",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=16&amp;height=16&amp;auto=webp&amp;s=e71c3353b0cd8c3cf016f1e37725d033b4722197",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=32&amp;height=32&amp;auto=webp&amp;s=06df72aa9b4c008b0ae15ff11f95ff253f85ab74",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=48&amp;height=48&amp;auto=webp&amp;s=3fb62803315450661c05e36da2b8d00ba06ad619",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=64&amp;height=64&amp;auto=webp&amp;s=c07b21c2158fe3f6bf66a6650f39688ebe4e8c6a",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=128&amp;height=128&amp;auto=webp&amp;s=eadedb0c4eab725cd0617196371aecf1f45c636b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "Staying home &amp; being safe when you can",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Home Time",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0002i",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "TheVantasy",
          "discussion_type": null,
          "num_comments": 287,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0002i/got_a_cryptic_text_from_mom_today_to_look_at_my/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/enin87mw0fs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586709681.0,
          "num_crossposts": 0,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_4o2zasnj",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "This albino baby turtle has a hole in its chest, exposing the heart. Her name is Hope.",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0ceid",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 761,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/id8314nipis41/DASH_480?source=fallback",
              "height": 480,
              "width": 480,
              "scrubber_media_url": "https://v.redd.it/id8314nipis41/DASH_96",
              "dash_url": "https://v.redd.it/id8314nipis41/DASHPlaylist.mpd",
              "duration": 18,
              "hls_url": "https://v.redd.it/id8314nipis41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 761,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/q0Qf1f3_ASQKr5H6KLoEAoaOcQ9D81Im_FpeEqrAvNo.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586783156.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/l84K9xmMsd4JQPQRhYp6JZqpdOfIloxCoNERcJChMgs.png?format=pjpg&amp;auto=webp&amp;s=08b09c517c77de084e66ee5afeab9670d34891f9",
                  "width": 640,
                  "height": 640
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/l84K9xmMsd4JQPQRhYp6JZqpdOfIloxCoNERcJChMgs.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=3dd9687ac31b1a64f1f10cf66b861e99a2b9a400",
                    "width": 108,
                    "height": 108
                  },
                  {
                    "url": "https://external-preview.redd.it/l84K9xmMsd4JQPQRhYp6JZqpdOfIloxCoNERcJChMgs.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=9836aed6e6060cbe56a29f4a0ce6ccd909b504a5",
                    "width": 216,
                    "height": 216
                  },
                  {
                    "url": "https://external-preview.redd.it/l84K9xmMsd4JQPQRhYp6JZqpdOfIloxCoNERcJChMgs.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=bb50e968eb6208fec4fb56cbc9514800eb69c9e6",
                    "width": 320,
                    "height": 320
                  },
                  {
                    "url": "https://external-preview.redd.it/l84K9xmMsd4JQPQRhYp6JZqpdOfIloxCoNERcJChMgs.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=6261592f2eb399ceb38ea1b41f6187f39d165d7e",
                    "width": 640,
                    "height": 640
                  }
                ],
                "variants": {},
                "id": "aecJ51NBkYaEyYj_z1Y9IA-KiE8FsBrVAJSLgKQgudA"
              }
            ],
            "enabled": false
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0ceid",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "MotherKokoNutz",
          "discussion_type": null,
          "num_comments": 41,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0ceid/this_albino_baby_turtle_has_a_hole_in_its_chest/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/id8314nipis41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586754356.0,
          "num_crossposts": 1,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/id8314nipis41/DASH_480?source=fallback",
              "height": 480,
              "width": 480,
              "scrubber_media_url": "https://v.redd.it/id8314nipis41/DASH_96",
              "dash_url": "https://v.redd.it/id8314nipis41/DASHPlaylist.mpd",
              "duration": 18,
              "hls_url": "https://v.redd.it/id8314nipis41/HLSPlaylist.m3u8",
              "is_gif": true,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_f60l6",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 1,
          "clicked": false,
          "title": "Got a notification that someone was at the front door",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": 105,
          "hide_score": false,
          "name": "t3_fzyqcc",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 61016,
          "total_awards_received": 3,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/hzu2j8faoes41/DASH_720?source=fallback",
              "height": 720,
              "width": 960,
              "scrubber_media_url": "https://v.redd.it/hzu2j8faoes41/DASH_96",
              "dash_url": "https://v.redd.it/hzu2j8faoes41/DASHPlaylist.mpd",
              "duration": 55,
              "hls_url": "https://v.redd.it/hzu2j8faoes41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 61016,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://b.thumbs.redditmedia.com/lFuqYi3R9BflIco4jm6wyDv2xcIzKidEbcbINQhsBRg.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {
            "gid_1": 1,
            "gid_2": 1
          },
          "post_hint": "hosted:video",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586734333.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "v.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?format=pjpg&amp;auto=webp&amp;s=c4f0db9e67e38a72782af7999505380363be4df6",
                  "width": 1152,
                  "height": 864
                },
                "resolutions": [
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=108&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=8f414cebbab8db4b5ae75bff1f0ecd184047b3ba",
                    "width": 108,
                    "height": 81
                  },
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=216&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=971eba907d5de75ee2e16377b89f5165afff8538",
                    "width": 216,
                    "height": 162
                  },
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=320&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=0fcd8293b007b91a0f2692425519839fe9a0b5a3",
                    "width": 320,
                    "height": 240
                  },
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=640&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=cf4fd28f1a52743c819d68b48a4ade34340a7ac4",
                    "width": 640,
                    "height": 480
                  },
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=960&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=f06abf4f21f7dc7bda41e9c58b28d58e95caf88d",
                    "width": 960,
                    "height": 720
                  },
                  {
                    "url": "https://external-preview.redd.it/CYKZ1qoHF_HYjyRcrKmndo_Y86CbePCiicsFTPMgv-A.png?width=1080&amp;crop=smart&amp;format=pjpg&amp;auto=webp&amp;s=4b6854f9187720e0f61d010677bfb79db9740b01",
                    "width": 1080,
                    "height": 810
                  }
                ],
                "variants": {},
                "id": "ZcdumF61oXW2DR-1EHvw72Lt94E66oucqPesqRxwLvE"
              }
            ],
            "enabled": false
          },
          "all_awardings": [
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 500,
              "id": "gid_2",
              "penny_donate": null,
              "coin_reward": 100,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/gold_512.png",
              "days_of_premium": 7,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/gold_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Gives the author a week of Reddit Premium, %{coin_symbol}100 Coins to do with as they please, and shows a Gold Award.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Gold",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": null,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 100,
              "id": "gid_1",
              "penny_donate": null,
              "coin_reward": 0,
              "icon_url": "https://www.redditstatic.com/gold/awards/icon/silver_512.png",
              "days_of_premium": 0,
              "icon_height": 512,
              "resized_icons": [
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_16.png",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_32.png",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_48.png",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_64.png",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://www.redditstatic.com/gold/awards/icon/silver_128.png",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 512,
              "start_date": null,
              "is_enabled": true,
              "description": "Shows the Silver Award... and that's it.",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Silver",
              "icon_format": null,
              "award_sub_type": "GLOBAL",
              "penny_price": null,
              "award_type": "global"
            },
            {
              "giver_coin_reward": 0,
              "subreddit_id": null,
              "is_new": false,
              "days_of_drip_extension": 0,
              "coin_price": 30,
              "id": "award_3cf96da4-79da-4127-90ac-84545e1833dc",
              "penny_donate": 0,
              "coin_reward": 0,
              "icon_url": "https://i.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png",
              "days_of_premium": 0,
              "icon_height": 2048,
              "resized_icons": [
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=16&amp;height=16&amp;auto=webp&amp;s=e71c3353b0cd8c3cf016f1e37725d033b4722197",
                  "width": 16,
                  "height": 16
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=32&amp;height=32&amp;auto=webp&amp;s=06df72aa9b4c008b0ae15ff11f95ff253f85ab74",
                  "width": 32,
                  "height": 32
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=48&amp;height=48&amp;auto=webp&amp;s=3fb62803315450661c05e36da2b8d00ba06ad619",
                  "width": 48,
                  "height": 48
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=64&amp;height=64&amp;auto=webp&amp;s=c07b21c2158fe3f6bf66a6650f39688ebe4e8c6a",
                  "width": 64,
                  "height": 64
                },
                {
                  "url": "https://preview.redd.it/award_images/t5_22cerq/qh4pzo76v9p41_HomeTime.png?width=128&amp;height=128&amp;auto=webp&amp;s=eadedb0c4eab725cd0617196371aecf1f45c636b",
                  "width": 128,
                  "height": 128
                }
              ],
              "icon_width": 2048,
              "start_date": null,
              "is_enabled": true,
              "description": "Staying home &amp; being safe when you can",
              "end_date": null,
              "subreddit_coin_reward": 0,
              "count": 1,
              "name": "Home Time",
              "icon_format": "PNG",
              "award_sub_type": "GLOBAL",
              "penny_price": 0,
              "award_type": "global"
            }
          ],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "fzyqcc",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "nok0_",
          "discussion_type": null,
          "num_comments": 581,
          "send_replies": false,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/fzyqcc/got_a_notification_that_someone_was_at_the_front/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://v.redd.it/hzu2j8faoes41",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586705533.0,
          "num_crossposts": 11,
          "media": {
            "reddit_video": {
              "fallback_url": "https://v.redd.it/hzu2j8faoes41/DASH_720?source=fallback",
              "height": 720,
              "width": 960,
              "scrubber_media_url": "https://v.redd.it/hzu2j8faoes41/DASH_96",
              "dash_url": "https://v.redd.it/hzu2j8faoes41/DASHPlaylist.mpd",
              "duration": 55,
              "hls_url": "https://v.redd.it/hzu2j8faoes41/HLSPlaylist.m3u8",
              "is_gif": false,
              "transcoding_status": "completed"
            }
          },
          "is_video": true
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_5f9lxibr",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "Hoppy Easter!",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0858f",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 1884,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 1884,
          "approved_by": null,
          "author_premium": false,
          "thumbnail": "https://b.thumbs.redditmedia.com/r7cDLcgyWWKkeL5JQimFQO6uvKhhP7wQugxW0GeI2lU.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586766462.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": false,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/pif4y9j5chs41.jpg?auto=webp&amp;s=5934e11a5ab01fa5e0274ae487633987d6c8bc0f",
                  "width": 819,
                  "height": 1024
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/pif4y9j5chs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=6f8818f99b8352fe4393a30cdfb319e819a0e5d6",
                    "width": 108,
                    "height": 135
                  },
                  {
                    "url": "https://preview.redd.it/pif4y9j5chs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=914f2c7246f1f202db9e8e406d14f9ba28ebc7df",
                    "width": 216,
                    "height": 270
                  },
                  {
                    "url": "https://preview.redd.it/pif4y9j5chs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=cf147520f0ffc6a43fdbd4292e7a73c99a5f71f9",
                    "width": 320,
                    "height": 400
                  },
                  {
                    "url": "https://preview.redd.it/pif4y9j5chs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=092235f9f3734b6b1bc89a78c79cf7a92a5b0488",
                    "width": 640,
                    "height": 800
                  }
                ],
                "variants": {},
                "id": "F3ne5Hx5uxbLhLxI5keuGAsTLStW1x75rQ3sJLTDOO0"
              }
            ],
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0858f",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "Armwry",
          "discussion_type": null,
          "num_comments": 19,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0858f/hoppy_easter/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/pif4y9j5chs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586737662.0,
          "num_crossposts": 0,
          "media": null,
          "is_video": false
        }
      },
      {
        "kind": "t3",
        "data": {
          "approved_at_utc": null,
          "subreddit": "aww",
          "selftext": "",
          "author_fullname": "t2_5r5aneuu",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "cat gets her own little rug so she can join her family's prayer time",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/aww",
          "hidden": false,
          "pwls": 6,
          "link_flair_css_class": "lc",
          "downs": 0,
          "thumbnail_height": 140,
          "hide_score": false,
          "name": "t3_g0140o",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 14069,
          "total_awards_received": 0,
          "media_embed": {},
          "thumbnail_width": 140,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": true,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {},
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 14069,
          "approved_by": null,
          "author_premium": true,
          "thumbnail": "https://a.thumbs.redditmedia.com/uF53bRwzdxI1lq8GwpEePoKntgqfR9GnxFRb0D72hq8.jpg",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {},
          "post_hint": "image",
          "content_categories": null,
          "is_self": false,
          "mod_note": null,
          "created": 1586742063.0,
          "link_flair_type": "text",
          "wls": 6,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "text",
          "domain": "i.redd.it",
          "allow_live_comments": true,
          "selftext_html": null,
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "preview": {
            "images": [
              {
                "source": {
                  "url": "https://preview.redd.it/wz532s5ibfs41.jpg?auto=webp&amp;s=c67d780968fcf1d2f1b251bf691d4869f726784f",
                  "width": 655,
                  "height": 816
                },
                "resolutions": [
                  {
                    "url": "https://preview.redd.it/wz532s5ibfs41.jpg?width=108&amp;crop=smart&amp;auto=webp&amp;s=c04d6aeb28d398867577cef1d5072ccc45ed4c5f",
                    "width": 108,
                    "height": 134
                  },
                  {
                    "url": "https://preview.redd.it/wz532s5ibfs41.jpg?width=216&amp;crop=smart&amp;auto=webp&amp;s=37e12069435722fa7d2a6710acfcc21d7d9339da",
                    "width": 216,
                    "height": 269
                  },
                  {
                    "url": "https://preview.redd.it/wz532s5ibfs41.jpg?width=320&amp;crop=smart&amp;auto=webp&amp;s=2fa8fd9e335e81492f8521c4fe0d5bb0f13264cc",
                    "width": 320,
                    "height": 398
                  },
                  {
                    "url": "https://preview.redd.it/wz532s5ibfs41.jpg?width=640&amp;crop=smart&amp;auto=webp&amp;s=406f285f585f2590e7d6c658d3a3cc017dfa11db",
                    "width": 640,
                    "height": 797
                  }
                ],
                "variants": {},
                "id": "PK3CYGIsKM1FfBVQGrRyoAnljJ5Wku509fmzjqIHCaw"
              }
            ],
            "enabled": true
          },
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": true,
          "spoiler": false,
          "locked": false,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": null,
          "subreddit_id": "t5_2qh1o",
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "g0140o",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "fieldsofglory-MP",
          "discussion_type": null,
          "num_comments": 239,
          "send_replies": true,
          "whitelist_status": "all_ads",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "/r/aww/comments/g0140o/cat_gets_her_own_little_rug_so_she_can_join_her/",
          "parent_whitelist_status": "all_ads",
          "stickied": false,
          "url": "https://i.redd.it/wz532s5ibfs41.jpg",
          "subreddit_subscribers": 24317634,
          "created_utc": 1586713263.0,
          "num_crossposts": 1,
          "media": null,
          "is_video": false
        }
      }
    ],
    "after": "t3_g0140o",
    "before": null
  }
}
""";
