class NewsModel {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  NewsModel({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> obj) {
    return new NewsModel(
      author: obj['author'],
      title: obj['title'],
      description: obj['description'],
      url: obj['url'],
      urlToImage: obj['urlToImage'],
      publishedAt: obj['publishedAt'],
      content: obj['content'],
    );
  }
}
