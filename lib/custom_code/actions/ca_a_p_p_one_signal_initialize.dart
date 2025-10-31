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

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> caAPPOneSignalInitialize(String appId) async {
  //final String oneSignalAppId = "5438416a-02cf-4ff7-901c-1df6362ca882";
  final String oneSignalAppId =
      "051879bd-e4a0-4213-a950-07ecc8a4d6ad"; //painel.rendarecorrente.app App Afiliado

// Inicializa o OneSignal com o ID do aplicativo

  OneSignal.initialize(oneSignalAppId);
// Solicita permissão de notificação ao usuário, incluindo a possibilidade de rejeitar

  bool accepted = await OneSignal.Notifications.requestPermission(true);

  if (accepted) {
    print("Permissão de notificação aceita.");
  } else {
    print("Permissão de notificação rejeitada.");
  }
}
