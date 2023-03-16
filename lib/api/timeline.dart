import '../model/timeline/timeline.dart';
import '../utils/wx_http.dart';

/// 朋友圈 api
class TimelineApi {
  /// 翻页列表
  static Future<List<TimelineModel>> pageList() async {
    var res = await WxHttpUtil().get(
      '/timeline/news',
    );

    List<TimelineModel> items = [];
    for (var item in res.data) {
      items.add(TimelineModel.fromJson(item));
    }
    return items;
  }

  /// 本地数据
  static Future<List<TimelineModel>> pageLocationList() async {
    var res = [
      {
        "id": "4",
        "images": [
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/7e_gFC2Ce04.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/32EAweHdyuE.jpg"
        ],
        "video": {
          "cover":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles01.png",
          "url":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles02.mp4"
        },
        "content": "万展油节南一离到保所千率路。来土同使北意会只山军保间劳都。",
        "post_type": "1",
        "user": {
          "uid": "39",
          "nickname": "姚明",
          "avator":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/avatar/00258VC3ly1gty0qwvax1j60gn0gngno02.jpg"
        },
        "publishDate": "2023-02-10 02:43:18",
        "location": "河南省 郑州市 二七区"
      },
      {
        "id": "5",
        "images": [
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/7e_gFC2Ce04.jpg",
        ],
        "video": {
          "cover":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles01.png",
          "url":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles02.mp4"
        },
        "content":
            "万展油节南一离到保所千率路。来土同使北意会只山军保间劳都。厂还点铁义万下第层法要多设查我线农。米定形外类次她备感其那局张系使往争。流下阶据切阶共民按之连正体在般车。",
        "post_type": "1",
        "user": {
          "uid": "39",
          "nickname": "科比",
          "avator":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/avatar/00258VC3ly1gty0qwvax1j60gn0gngno02.jpg"
        },
        "publishDate": "2023-02-10 02:43:18",
        "location": "山东省 济南市 历下区"
      },
      {
        "id": "6",
        "images": [
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
        ],
        "video": {
          "cover":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles01.png",
          "url":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles02.mp4"
        },
        "content":
            "万展油节南一离到保所千率路。来土同使北意会只山军保间劳都。厂还点铁义万下第层法要多设查我线农。米定形外类次她备感其那局张系使往争。流下阶据切阶共民按之连正体在般车。",
        "post_type": "1",
        "user": {
          "uid": "39",
          "nickname": "二小子",
          "avator":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/avatar/00258VC3ly1gty0qwvax1j60gn0gngno02.jpg"
        },
        "publishDate": "2023-02-10 02:43:18",
        "location": "陕西省 西安市 西咸新区"
      },
      {
        "id": "7",
        "images": [
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/7e_gFC2Ce04.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/32EAweHdyuE.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/-Qd91Sg6gZ8.jpg",
          "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/cover/7e_gFC2Ce04.jpg",
          "https://upload-images.jianshu.io/upload_images/28020825-fad7d1a9c9a98051.jpg"
        ],
        "video": {
          "cover":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles01.png",
          "url":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/video/los-angeles02.mp4"
        },
        "content":
            "万展油节南一离到保所千率路。来土同使北意会只山军保间劳都。厂还点铁义万下第层法要多设查我线农。米定形外类次她备感其那局张系使往争。流下阶据切阶共民按之连正体在般车。",
        "post_type": "1",
        "user": {
          "uid": "39",
          "nickname": "小子",
          "avator":
              "https://ducafecat-pub.oss-cn-qingdao.aliyuncs.com/avatar/00258VC3ly1gty0qwvax1j60gn0gngno02.jpg"
        },
        "publishDate": "2023-02-10 02:43:18",
        "location": "河北省 石家庄市 铁东区"
      }
    ];

    List<TimelineModel> items = [];
    for (var item in res) {
      items.add(TimelineModel.fromJson(item));
    }
    return items;
  }
}
