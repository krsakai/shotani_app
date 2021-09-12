import 'package:shotani_app/presentation/home/home_tab_model.dart';
import 'package:shotani_app/extension/connection_state_extension.dart' show StateToFlag;
import 'package:launch_review/launch_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/util/remote_config.dart';

class HomeTabPage extends HookWidget {
  static Route<HomeTabPage> route() {
    return MaterialPageRoute(builder: (context) => HomeTabPage());
  }

  @override
  Widget build(BuildContext context) {
    final model = useProvider(homeModelProvider);
    return Scaffold(
      body: _builder(model, context),
      bottomNavigationBar: _bottomNavigatorBar(model, context)
    );
  }

  Widget _bottomNavigatorBar(HomeModel model, BuildContext context) => BottomNavigationBar(
    currentIndex: model.currentIndex,
    onTap: (index) {
      model.currentIndex = index;
    },
    unselectedItemColor: Theme.of(context).disabledColor,
    selectedItemColor: Theme.of(context).accentColor,
    items: [
      model.availableNews ? BottomNavigationBarItem(icon: Icon(Icons.star_outlined), label: 'ニュース') : null,
      model.availableQuiz ? BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'クイズ') : null,
      BottomNavigationBarItem(icon: Icon(Icons.new_releases), label: '最新成績'),
      BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: '年間成績'),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today ), label: '試合日程'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
    ].whereType<BottomNavigationBarItem>().toList(),
    type: BottomNavigationBarType.fixed,
  );

  StreamBuilder _builder(HomeModel model, BuildContext context) => StreamBuilder(
    stream: model.loadStream,
    builder: (context, snapshot) {
      if (snapshot.connectionState.isWaiting || !snapshot.hasData || snapshot.data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.pageName),
          brightness: Brightness.dark,
          automaticallyImplyLeading: false,
        ),
          body: Container(
            color: Colors.grey.withOpacity(0.5),
            child: Center(child: const CircularProgressIndicator())
          )
        );
      }
      if (snapshot.hasError) {
        return Center(child: Text("Error: ${snapshot.error}"));
      }
      if (model.shouldForceUpdate) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!model.opendForceUpdateDialog) {
            model.opendForceUpdateDialog = true;
            _forceUpdateDialog(context);
          }
        });
        return Center();
      }
      if (model.opendForceUpdateDialog) {
        model.opendForceUpdateDialog = false;
        Navigator.pop(context);
      }
      return IndexedStack(
        index: model.currentIndex,
        children: model.pageList
      );
    }
  );

  _forceUpdateDialog(BuildContext context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      title: Center(child: Text("アプリバージョン確認")),
      content: Text("新しいバージョンのアプリがストアにリリースされています\nアップデートを実施してからご利用下さい"),
      actions: [
        ElevatedButton(
          child: Text("ストアへ移動"),
          onPressed: () { 
            final appId = AppRemoteConfig.appId();
            LaunchReview.launch(androidAppId: appId, iOSAppId: appId);
          },
        ),
      ],
    )
  );
}