enum SettingContent {
  gameStartPushNotification,
  batReportPushNotification
}

class Setting {
  Setting({this.id, this.name, this.group, this.content});
  final int id;
  final String name;
  final String group;
  final SettingContent content;
}
