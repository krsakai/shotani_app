import 'package:quiver/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PreferenceKey {
  isReboot,
  isAllowedNotification,
}

class PreferenceModel<T> {
  final T value;
  PreferenceModel(this.value);
}

extension PreferenceKeyExtension on PreferenceKey {
  String get keyName {
    switch (this) {
      case PreferenceKey.isAllowedNotification: return "isAllowedNotification";
      default: return "";
    }
  }

  Future<T> get<T>() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.get(this.keyName);
  }
  
  Future set<T>(T value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
    case int: 
      return preferences.setInt(this.keyName, value as int);
    case bool: 
      return preferences.setBool(this.keyName, value as bool);
    case String: 
      return preferences.setString(this.keyName, value as String);
    case double: 
      return preferences.setDouble(this.keyName, value as double);
    case List: 
      return preferences.setStringList(this.keyName, value as List);
    default: 
      return;
    }
  }
}
