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

import 'dart:html' as html;
import 'dart:convert';

Future<List<String>> caWebOneSignalGetLocalStorageData() async {
  try {
    final raw = html.window.localStorage['onesignal_data'];
    if (raw == null) return ['⚠️ Dados ainda não disponíveis'];

    final decoded = jsonDecode(raw);
    //return decoded.entries.map<String>((e) => '${e.key}=${e.value}').toList();
    return decoded.values.map<String>((e) => e.toString()).toList();
  } catch (e) {
    return ['❌ Erro ao ler localStorage: $e'];
  }
}
