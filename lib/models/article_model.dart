class ArticleModel {
  final String title;
  final String? subtitle;
  final String? image;


  const ArticleModel({
    required this.title,
    required this.image,
    this.subtitle,
  });

  factory ArticleModel.fromJson (json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
  }


