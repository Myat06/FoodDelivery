import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  // Get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  // Save order to db
  Future<void> saveOrderToDatabase(String receipt) async {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      DocumentReference userDoc =
          FirebaseFirestore.instance.collection('users').doc(user.uid);
      CollectionReference orders = userDoc.collection('orders');

      await orders.add({
        'userId': user.uid, // Reference to the user
        'date': DateTime.now(),
        'order': receipt,
        // Add more fields as necessary
      });
    } else {
      throw Exception('No user signed in');
    }
  }
}
