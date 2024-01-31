import 'package:flutter/material.dart';

import '../news_list_view_builder.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [

          NewsTileListViewBuilder(category: 'sports',),
          //SliverToBoxAdapter(child: NewsTileListView()),
        ],
      ),
    );
  }
}
