import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction() {
  // flutter function to count registered users on firebase database
  String function = '''
import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> countRegisteredUsers() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('users').get();
  return snapshot.size;
}
''';
  return function;
}
