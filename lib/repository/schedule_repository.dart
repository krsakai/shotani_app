import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class ScheduleRepository {
  final _db = FirebaseFirestore.instance;

  Future<String> get fetchScheduleTable async {
    try {
      final result = await _db.collection("schedule").doc('master').get();
      return result.data()['oneWeekSchedule'];
    } catch (exception) {
      Logger().e(exception.toString());
      return '';
    }
  }
}