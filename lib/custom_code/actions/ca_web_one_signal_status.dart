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

/// Retorna um diagnóstico legível sobre o status do push web do OneSignal.
Future<String> caWebOneSignalStatus() async {
  try {
    final raw = html.window.localStorage['onesignal_data'];
    if (raw == null) return '⚠️ Não foi possível inicializar as notificações';

    final decoded = jsonDecode(raw);

    final String permission = decoded['notificationPermission'] ?? 'indefinido';
    final bool optedOut = decoded['optedOut'] ?? false;
    final bool isEnabled = decoded['isPushEnabled'] ?? false;

    if (permission == 'denied') {
      return '🔴 Notificações bloqueadas no navegador';
    }

    if (optedOut == true) {
      return '🟡 Você desativou as notificações';
    }

    if (permission == 'default') {
      return '🟡 Notificações aguardando permissão no navegador';
    }

    if (permission == 'granted' && isEnabled == true) {
      return 'Notificações ativas';
    }

    if (permission == 'granted' && isEnabled == false) {
      return '🟠 Atualizae a página para ativar as notificações';
    }

    return '⚠️ Status indefinido ou inconsistente';
  } catch (e) {
    return '❌ Erro ao diagnosticar OneSignal: $e';
  }
}
