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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:client_information/client_information.dart';

Future<List<String>?> caSistemaOpDetectAll() async {
  // return device operating system name

  List<String> deviceInfo = [];

  try {
    ClientInformation info = await ClientInformation.fetch();

    if (info.osName == null) {
      deviceInfo.add('NULL');
    } else {
      deviceInfo.add(info.osName);
      deviceInfo.add(info.deviceId);
      deviceInfo.add(info.deviceName);
      deviceInfo.add(info.osVersion);
      deviceInfo.add(info.osVersionCode.toString());
      deviceInfo.add(info.softwareName);
      deviceInfo.add(info.softwareVersion);
      deviceInfo.add(info.applicationId);
      deviceInfo.add(info.applicationType);
      deviceInfo.add(info.applicationName);
      deviceInfo.add(info.applicationVersion);
      deviceInfo.add(info.applicationBuildCode);
    }

    return deviceInfo;
  } catch (e) {
    // Handle any errors that occur during the action
    //print('Error: $e');
    deviceInfo.add('NULL');
    return deviceInfo;
  }
}
