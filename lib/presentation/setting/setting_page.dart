import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/setting/setting_model.dart';

class SettingPage extends HookWidget {
  SettingPage();

  final String pageName = "設定";

  final List _elements = [
    {'name': '広告', 'group': '設定'},
    {'name': 'プッシュ通知', 'group': '設定'},
    {'name': 'テーマ色', 'group': '外観'},
    {'name': '他のアプリ', 'group': '利用規約'},
    {'name': '利用規約', 'group': '利用規約'},
  ];

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
      body: _aaaa()
    );
  }

  Widget _aaaa() {
    /// 参考リンク：https://yuyuublog.com/flutterlistviewgroupedlist/
    return GroupedListView<dynamic, String>(
      elements: _elements,
      groupBy: (element) => element['group'],
      order: GroupedListOrder.DESC,
      floatingHeader: true,
      groupSeparatorBuilder: (String value) => Container(
        padding: EdgeInsets.only(left: 5, top: 15, bottom: 5),
        child: Text(
          value,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 14),
        ),
      ),
      itemBuilder: (context, element) => Card(
        child: ListTile(
          title: Text(element['name']),
          trailing: CupertinoSwitch(
            activeColor: Colors.blue,
            value: false,
            onChanged: (bool value) {
              // model.update(value);
            },
          ),
        ),
      )
    );
  }
}
