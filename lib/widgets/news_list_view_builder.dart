import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/Home_screen.dart';
import 'package:news_app/services/News_services.dart';
import 'package:news_app/widgets/newstilelistview.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key});

  @override
  State<NewsTileListViewBuilder> createState() => _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  var future;
  @override
  void initState() {

    super.initState();
    future = NewsServices(Dio()).getNews();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('Oops there was an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
    );

  }
}
