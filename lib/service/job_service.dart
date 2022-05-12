import 'package:cloud_firestore/cloud_firestore.dart';

class JobService {
  add(Map<String, dynamic> value) async {
    await FirebaseFirestore.instance.collection("jobs").add(value);
  }

  update(String uid, Map<String, dynamic> value) async {
    await FirebaseFirestore.instance.collection("jobs").doc(uid).update(value);
  }

  delete(String uid) async {
    await FirebaseFirestore.instance.collection("jobs").doc(uid).delete();
  }
}
