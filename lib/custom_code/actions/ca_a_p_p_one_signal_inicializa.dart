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

Future caAPPOneSignalInicializa(String varIDOneSignal) async {
  // Log detalhado
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  // Inicializa o OneSignal com o ID passado por argumento
  OneSignal.initialize(
    varIDOneSignal,
  );

  // Solicita permissão ao usuário (Android/iOS)
  //OneSignal.Notifications.requestPermission(true);
}
