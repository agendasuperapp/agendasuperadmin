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

// Imports necessários
import 'package:flutter/services.dart';

/// Ativa o modo de tela cheia ocultando o relógio e as teclas de navegação
/// (modo imersivo Android).
Future setFullscreenMode() async {
  // Ativa o modo imersivo (oculta relógio e botões de navegação)
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}
