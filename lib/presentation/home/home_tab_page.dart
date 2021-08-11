import 'package:shotani_app/presentation/home/home_tab_model.dart';
import 'package:shotani_app/presentation/sample/sample_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTabPage extends HookWidget {
  static Route<HomeTabPage> route() {
    return MaterialPageRoute(builder: (context) => HomeTabPage());
  }

  final List<Widget> pageList = [
    SamplePage("1"),
    SamplePage("2"),
    SamplePage("3"),
    SamplePage("4")
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '探す'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: '予約管理'),
          BottomNavigationBarItem(icon: Icon(Icons.motorcycle), label: 'バイク管理'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'プロフィール'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}