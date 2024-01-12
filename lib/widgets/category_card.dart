import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return CategoryScreen(category: category.categoryName,);
          }));
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child:  Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
