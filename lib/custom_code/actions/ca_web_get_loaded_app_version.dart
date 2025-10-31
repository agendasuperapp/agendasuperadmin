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

import 'dart:js' as js;

/// Retorna a versão da app já carregada no navegador (armazenada em
/// localStorage).
Future<String> caWebGetLoadedAppVersion() async {
  try {
    final version =
        js.context.callMethod('eval', ['localStorage.getItem("app_version")']);
    return version ?? 'indefinida';
  } catch (e) {
    return 'Erro ao obter versão carregada: $e';
  }
}
