
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../widgets/business/business.dart';
import '../../widgets/home/home.dart';
import '../../widgets/science/science.dart';
import '../../widgets/sports/sports.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  int currentIndex = 0 ;
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Sciences',
    ),

  ];

  void changeBottemNaviBar(int index){

    currentIndex = index ;
    emit(NewsBottemNaviBar());

  }

  List<Widget> screens = [
    const Home(),
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

}
