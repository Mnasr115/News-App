import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryModel= const [
    CategoryModel(categoryName: 'Business', image: 'assets/business.jpg'),
    CategoryModel(categoryName: 'Entertainment', image: 'assets/entertainment.jpg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.jpg'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.jpg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
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
