import 'package:flutter/material.dart';

import '../news_list_view_builder.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          NewsTileListViewBuilder(category: 'science',),
          //SliverToBoxAdapter(child: NewsTileListView()),
        ],
      ),
    );
  }
}
