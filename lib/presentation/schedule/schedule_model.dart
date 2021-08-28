import 'dart:async';
import 'dart:io';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/schedule_repository.dart';

final scheduleModelProvider = ChangeNotifierProvider.autoDispose((_) => ScheduleModel());

class ScheduleModel extends Model {
  final _reloadObserver = StreamController<bool>();
  Stream<bool> get loadStream => _reloadObserver.stream;
  
  String scheduleTable;
  bool isLoading = false;

  String fontSize = Platform.isAndroid ? "16" : "32";

  String get template => '''
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <style type="text/css">
    body {
      background-color: #FFFFFF;
      font-family: "MS Pゴシック";
    }
    table {
        width: 100%;
        font-size: ${fontSize}px;
        margin-bottom:20px
    }
    table caption {
        margin-bottom: 2px;
        padding-left: 1em;
        line-height: 3;
        font-size: 1.2em;
        color: #f1f1f1;
        background-color:#0075c2;
        font-family: "MS Pゴシック";
        font-weight: bold
    }
    table tr th {
        padding: 0.5em 0.2em;
        border: 2px solid #c9c9c9;
        line-height: 2;
        font-size: 0.8em;
        color: #363f42;
        font-weight: bold;
        background-color: #dbe1e6;
        text-align:center
    }
    table td {
        padding: 0.5em 0.2em;
        border: 1px solid #c9c9c9;
        line-height: 2;
        font-size: 0.8em;
        font-weight: bold;
        text-align:center
    }
    table td a {
        color:#0075c2
    }
    table td a:visited {
        color:#8197a7
    }
    table td.rank {
        white-space:nowrap
    }
    table td.team {
        text-align:left
    }
    .both {
        clear: both
    }
    </style>
    </head>
    <body>
    $scheduleTable
    </body>
    </html>
  ''';

  @override
  Future init() async {
    _reloadObserver.sink.add(true);
    isLoading = true;
    scheduleTable = await ScheduleRepository().fetchScheduleTable;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  void reload() async {
    _reloadObserver.sink.add(true);
    isLoading = true;
    scheduleTable = await ScheduleRepository().fetchScheduleTable;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  Future<void> loadedWebView() async {
    isLoading = false;
    await Future.delayed(Duration(milliseconds: 300));
    notifyListeners();
  }

  @override
  void dispose() {
    _reloadObserver.close();
    super.dispose();
  }
}