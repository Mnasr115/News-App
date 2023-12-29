class ArticleModel {
  final String title;
  final String? subtitle;
  final String? image;


  const ArticleModel({
    required this.title,
    required this.image,
    this.subtitle,
  });
}

