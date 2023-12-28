import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryModel= const [
    CategoryModel(text: 'Business', image: 'assets/business.jpg'),
    CategoryModel(text: 'Entertainment', image: 'assets/entertainment.jpg'),
    CategoryModel(text: 'Health', image: 'assets/health.jpg'),
    CategoryModel(text: 'Science', image: 'assets/science.jpg'),
    CategoryModel(text: 'Sports', image: 'assets/sports.jpg'),
    CategoryModel(text: 'Technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryModel.length,
          itemBuilder: (context, index) {
            return  CategoryCard(category: categoryModel[index],);
          }),
    );
  }
}
