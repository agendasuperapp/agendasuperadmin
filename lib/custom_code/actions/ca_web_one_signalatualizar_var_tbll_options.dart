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

Future<String> caWebOneSignalatualizarVarTbllOptions() async {
  try {
    final raw = html.window.localStorage['onesignal_data'];
    if (raw == null)
      return '❌ Erro: localStorage["onesignal_data"] não encontrado';

    final decoded = jsonDecode(raw);

    FFAppState().varWebOneSignalTblOptions = TblOneSignalOptionsXveSve1azStruct(
      isPushEnabled: decoded['isPushEnabled'] ?? false,
      lastOptedIn: decoded['lastOptedIn'] ?? false,
      lastPushId: decoded['lastPushId'] ?? '',
      lastPushToken: decoded['lastPushToken'] ?? '',
      notificationClickHandlerAction:
          decoded['notificationClickHandlerAction'] ?? '',
      notificationClickHandlerMatch:
          decoded['notificationClickHandlerMatch'] ?? '',
      notificationPermission: decoded['notificationPermission'] ?? '',
      optedOut: decoded['optedOut'] ?? false,
      pageTitle: decoded['pageTitle'] ?? '',
      persistNotification: decoded['persistNotification'] ?? false,
      previousExternalId: decoded['previousExternalId'] ?? '',
      previousOneSignalId: decoded['previousOneSignalId'] ?? '',
      promptDismissCount: decoded['promptDismissCount'] ?? 0,
      subscriptionCreatedAt: decoded['subscriptionCreatedAt'] ?? 0,
      webhookscors: decoded['webhooks.cors'] ?? false,
      webhooksnotificationclicked:
          decoded['webhooks.notification.clicked'] ?? false,
      webhooksnotificationdismissed:
          decoded['webhooks.notification.dismissed'] ?? false,
      webhooksnotificationwillDisplay:
          decoded['webhooks.notification.willDisplay'] ?? false,
    );

    // Incrementa a variável App State
    // FFAppState().varWebOneSignalContadorAtzOptions += 1;

    return 'true';
  } catch (e) {
    return '❌ Erro inesperado: $e';
  }
}
