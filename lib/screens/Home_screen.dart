import 'package:flutter/material.dart';
import 'package:news_app/widgets/caategory_listview.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/newsTile.dart';
import 'package:news_app/widgets/newstilelistview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsTileListView(),
            //SliverToBoxAdapter(child: NewsTileListView()),
          ],
        ),
      ),
    );
  }
}
