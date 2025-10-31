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

/// Recarrega a página forçando o navegador a ignorar o cache.
Future<String> caWebForceReloadNoCache() async {
  try {
    html.window.location.reload();
    // Ou, de forma mais direta e segura:
    // html.window.location.href = html.window.location.href + '?v=' + DateTime.now().millisecondsSinceEpoch.toString();
    return '🔄 Recarregando página sem cache...';
  } catch (e) {
    return '❌ Erro ao recarregar página: $e';
  }
}
