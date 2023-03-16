class UserModel {
  String? uid;
  String? nickname;
  String? avator;

  UserModel({this.uid, this.nickname, this.avator});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
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
