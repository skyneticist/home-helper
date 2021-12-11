import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeHelper());
}

class HomeHelper extends StatefulWidget {
  const HomeHelper({Key? key}) : super(key: key);

  @override
  State<HomeHelper> createState() => _HomeHelperState();
}

class _HomeHelperState extends State<HomeHelper> {
  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    firestoreInstance.collection("months").get().then((doc) {
      if (kDebugMode) {
        print(doc);
      }
    });

    return Container(color: const Color(0xFFFFE306));
  }
}
