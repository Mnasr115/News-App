import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/Home_screen.dart';
import 'package:news_app/screens/cubit/news_cubit.dart';
import 'package:news_app/services/News_services.dart';
import 'package:news_app/widgets/caategory_listview.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/newsTile.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/newstilelistview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = BlocProvider.of<NewsCubit>(context);
          return Scaffold(
            appBar: AppBar(
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
              actions: [
                IconButton(onPressed: (){}, icon: const Icon(
                  Icons.search,
                ),),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (int index){
                cubit.changeBottemNaviBar(index);
              },
              currentIndex: cubit.currentIndex,
              items: cubit.items,
            ),
          );
        },
      ),
    );
  }
}


