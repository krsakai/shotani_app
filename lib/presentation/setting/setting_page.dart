import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/domain/setting/setting.dart';
import 'package:shotani_app/presentation/setting/setting_model.dart';
import 'package:shotani_app/presentation/tab_page.dart';

class SettingPage extends TabPage {
  SettingPage();

  final String pageName = "設定";

  @override
  Widget build(BuildContext context) {
    final model = useProvider(settingModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: _groupedListView(model)
    );
  }

  /// 参考：https://yuyuublog.com/flutterlistviewgroupedlist/
  Widget _groupedListView(SettingModel model) { 
    final context = useContext();
    return GroupedListView<Setting, String>(
      elements: model.settingList,
      groupBy: (element) => element.group,
      floatingHeader: true,
      groupSeparatorBuilder: (String value) => Container(
        padding: EdgeInsets.only(left: 5, top: 15, bottom: 5),
        child: Text(value, textAlign: TextAlign.start, style: TextStyle(fontSize: 14))
      ),
      itemBuilder: (context, element) { 
        switch (element.content) {
          case SettingContent.gameStartPushNotification: 
            return _gameStartNotificationSettingCell(model, element, context); 
          case SettingContent.batReportPushNotification:
             return _batReportNotificationSettingCell(model, element, context); 
          default: 
            return Center();
        }
      }
    );
  }
  
  Widget _gameStartNotificationSettingCell(SettingModel model, Setting element, BuildContext context) { 
    return Card(
      child: ListTile(
        title: Text(element.name),
        trailing: CupertinoSwitch(
          activeColor: Colors.blue,
          value: model.isAvaiableGameStartPushNotification,
          onChanged: (bool value) async {
            if (value) {
              if (!await model.enablingGameStartPushNotificationWithUser()) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Center(child: Text("プッシュ通知が利用できません")),
                    content: Text("端末の通知設定 及び 本アプリの通知設定をONに変更して下さい"),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("OK"))],
                  )
                );
              }
            } else {
              await model.disnablingGameStartPushNotificationWithUser();
            }
          },
        ),
      ),
    );
  }

  Widget _batReportNotificationSettingCell(SettingModel model, Setting element, BuildContext context) { 
    return Card(
      child: ListTile(
        title: Text(element.name),
        trailing: CupertinoSwitch(
          activeColor: Colors.blue,
          value: model.isAvaiableBatReportPushNotification,
          onChanged: (bool value) async {
            if (value) {
              if (!await model.enablingBatReportPushNotificationWithUser()) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Center(child: Text("プッシュ通知が利用できません")),
                    content: Text("端末の通知設定 及び 本アプリの通知設定をONに変更して下さい"),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("OK"))],
                  )
                );
              }
            } else {
              await model.disnablingBatReportPushNotificationWithUser();
            }
          },
        ),
      ),
    );
  }
}
