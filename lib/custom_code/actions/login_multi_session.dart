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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:device_info_plus/device_info_plus.dart';

// Detecta nome do dispositivo
Future<String> getDeviceName() async {
  try {
    if (kIsWeb) return "Web Browser";
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final info = await deviceInfo.androidInfo;
      return "${info.manufacturer} ${info.model}";
    } else if (Platform.isIOS) {
      final info = await deviceInfo.iosInfo;
      return "${info.name} (${info.model})";
    } else if (Platform.isWindows) {
      final info = await deviceInfo.windowsInfo;
      return info.computerName ?? "Windows PC";
    } else if (Platform.isMacOS) {
      final info = await deviceInfo.macOsInfo;
      return info.computerName ?? "Mac Device";
    } else {
      return "Dispositivo desconhecido";
    }
  } catch (_) {
    return "Desconhecido";
  }
}

// Login multi-sessão real (sem invalidar token)
Future<bool> loginMultiSession(String varemail, String varsenha) async {
  final supabase = Supabase.instance.client;
  final deviceName = await getDeviceName();

  try {
    // 1️⃣ Login direto com Supabase (gera sessão válida no browser)
    final result = await supabase.auth.signInWithPassword(
      email: varemail,
      password: varsenha,
    );

    if (result.user == null || result.session == null) {
      print("❌ Falha ao autenticar usuário.");
      return false;
    }

    print("✅ Login local no Supabase realizado com sucesso!");

    // 2️⃣ Envia info do dispositivo para a Edge Function (registro multi-sessão)
    const String url =
        'https://hzmixuvrnzpypriagecv.supabase.co/functions/v1/auth_multi_session';

    await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': varemail,
        'device_name': deviceName,
        'user_id': result.user?.id,
        'access_token': result.session?.accessToken,
      }),
    );

    print("📱 Dispositivo registrado na Edge Function com sucesso!");
    print("👤 Usuário autenticado: ${result.user?.email}");
    return true;
  } catch (e, st) {
    print("❌ Erro ao fazer login: $e");
    print(st);
    return false;
  }
}
