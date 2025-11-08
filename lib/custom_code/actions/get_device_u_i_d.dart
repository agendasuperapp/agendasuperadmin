// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

Future<String> getDeviceUID() async {
  const storageKey = 'device_uid';
  final uuid = const Uuid();

  final prefs = await SharedPreferences.getInstance();
  var uid = prefs.getString(storageKey);
  if (uid == null || uid.isEmpty) {
    uid = uuid.v4();
    await prefs.setString(storageKey, uid);
  }
  return uid;
}
