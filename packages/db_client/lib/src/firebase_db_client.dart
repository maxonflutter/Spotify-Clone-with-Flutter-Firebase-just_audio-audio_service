import 'package:cloud_firestore/cloud_firestore.dart';

import 'db_record.dart';

class FirestoreDbClient {
  final FirebaseFirestore _firestore;

  FirestoreDbClient({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<DbRecord?> fetchOneById({
    required String entity, // collection
    required String id, // document id
  }) async {
    try {
      final docRef = _firestore.collection(entity).doc(id);
      final document = await docRef.get();

      if (document.exists) {
        return DbRecord(
          id: document.id,
          data: document.data()!,
        );
      } else {
        return null;
      }
    } catch (err) {
      throw Exception('Error getting document: $err');
    }
  }

  Future<List<DbRecord>> fetchAll({
    required String entity,
  }) async {
    try {
      final colRef = _firestore.collection(entity);
      final documents = await colRef.get();
      return documents.docs.map(
        (document) {
          return DbRecord(id: document.id, data: document.data());
        },
      ).toList();
    } catch (err) {
      throw Exception('Error getting document: $err');
    }
  }

  Future<void> set({
    required String id,
    required String entity,
    required Map<String, dynamic> data,
  }) async {
    try {
      return await _firestore.collection(entity).doc(id).set(data);
    } catch (err) {
      throw Exception('Error adding document: $err');
    }
  }
}
