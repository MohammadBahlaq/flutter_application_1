class NewPostModel {
  final String title;
  final String body;
  final String userId;

  NewPostModel({required this.title, required this.body, required this.userId});

  factory NewPostModel.fromJson(Map<String, dynamic> json) => NewPostModel(
    title: json["title"],
    body: json["body"],
    userId: json["userId"],
  );

  Map<String, String> toJson() => {
    "title": title,
    "body": body,
    "userId": userId,
  };
}
