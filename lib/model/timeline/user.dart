class User {
  String? uid;
  String? nickname;
  String? avator;

  User({this.uid, this.nickname, this.avator});

  factory User.fromJson(Map<String, dynamic> json) => User(
        uid: json['uid'] as String?,
        nickname: json['nickname'] as String?,
        avator: json['avator'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'nickname': nickname,
        'avator': avator,
      };
}
