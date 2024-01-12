import 'package:flutter/material.dart';
import 'package:news_app/models/category_models.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/newstilelistview.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key,required this.category,});
final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
         NewsTileListViewBuilder(category: category,),
        ],
      ),
    );
  }
}
