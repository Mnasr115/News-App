class CategoryModel {
  final String text;
  final String? subtitle;
  final String image;

  const CategoryModel({
    required this.text,
    required this.image,
    this.subtitle,
  });
}