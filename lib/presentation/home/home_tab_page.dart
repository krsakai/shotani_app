import 'package:shotani_app/presentation/home/home_tab_model.dart';
import 'package:shotani_app/presentation/latest_score/latest_score_page.dart';
import 'package:shotani_app/presentation/news/news_page.dart';
import 'package:shotani_app/presentation/season_score/season_score_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/setting/setting_page.dart';

class HomeTabPage extends HookWidget {
  static Route<HomeTabPage> route() {
    return MaterialPageRoute(builder: (context) => HomeTabPage());
  }

  final List<Widget> pageList = [
    NewsPage(),
    LatestScorePage(),
    SeasonScorePage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    final model = useProvider(homeModelProvider);
    return Scaffold(
      body: pageList[model.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: model.currentIndex,
        onTap: (index) {
          model.currentIndex = index;
        },
        unselectedItemColor: Theme.of(context).disabledColor,
        selectedItemColor: Theme.of(context).accentColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star_outlined), label: 'ニュース'),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases), label: '最新成績'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: '年間成績'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}