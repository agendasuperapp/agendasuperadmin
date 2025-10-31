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
import 'dart:async';

Future<String> caWebOneSignalSetExternalUserId(String userId) async {
  final completer = Completer<String>();

  js.context['setOneSignalResult'] = (String result) {
    if (!completer.isCompleted) {
      completer.complete(result);
    }
  };

  js.context.callMethod('eval', [
    """
    (function() {
      if (!window.OneSignalDeferred) {
        window.setOneSignalResult("error: OneSignalDeferred not defined");
        return;
      }

      OneSignalDeferred.push(async function(OneSignal) {
        try {
          if (!OneSignal.login) {
            window.setOneSignalResult("error: OneSignal.login not available");
            return;
          }

          await OneSignal.login("$userId");
          window.setOneSignalResult("success: $userId");
        } catch (e) {
          window.setOneSignalResult("error: " + (e?.toString() || "Unknown error"));
        }
      });
    })();
  """
  ]);

  return completer.future;
}
