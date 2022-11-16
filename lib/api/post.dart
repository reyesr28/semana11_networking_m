class post{

  int userId;
  int id;
  String title;
  String body;

  post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
});

  static post objJson(Map<String, dynamic> json){
    return post(
        userId: json['userId'] as int,
        id:json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String);
  }

}