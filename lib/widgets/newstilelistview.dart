import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/News_services.dart';
import 'package:news_app/widgets/newsTile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articles ;

  const NewsTileListView({super.key, required this.articles});
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22.0),
          child: NewsTile(
            articleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
