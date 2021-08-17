import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shotani_app/util/auth.dart';
import 'package:shotani_app/util/messaging.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;

  Future update([Map<String, dynamic> item]) async {
    try {
      final user = await Auth().signIn();
      final doc = await _db.collection("user").doc(user.uid).get();
      if (doc.exists) {
        await _db.collection("user").doc(user.uid).update({'uid': user.uid, ...item});
      } else {
        await _db.collection("user").doc(user.uid).set({'uid': user.uid, ...item});
      }
    } catch (exception) {
      throw exception;
    }
  }
  
  Future updateToken() async {
    try {
      final user = await Auth().signIn();
      final token = await Messaging.getToken(user.uid);
      final doc = await _db.collection("user").doc(user.uid).get();
      if (doc.exists) {
        await _db.collection("user").doc(user.uid).update({'token': token, 'uid': user.uid});
      } else {
        await _db.collection("user").doc(user.uid).set({'token': token, 'uid': user.uid});
      }
    } catch (exception) {
      throw exception;
    }
  }
}