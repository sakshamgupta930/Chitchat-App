import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethords {
  Future addUserDetails(Map<String, dynamic> userInfo, String id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .set(userInfo);
  }

  Future<QuerySnapshot> getUserByEmail(String email) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .where("E-mail", isEqualTo: email)
        .get();
  }
}
