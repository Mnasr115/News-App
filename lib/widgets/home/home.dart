import 'package:flutter/material.dart';

import '../caategory_listview.dart';
import '../news_list_view_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
          NewsTileListViewBuilder(category: 'general',),
          //SliverToBoxAdapter(child: NewsTileListView()),
        ],
      ),
    );
  }
}
