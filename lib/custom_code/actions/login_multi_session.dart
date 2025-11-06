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
import 'dart:html' as html; // para PWA e tamanho de tela no web
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:client_information/client_information.dart';

/// ✅ Gera ou recupera um identificador único e persistente por navegador/app
Future<String> getPersistentDeviceUID() async {
  const storageKey = 'device_uid';
  final uuid = const Uuid();

  if (kIsWeb) {
    final storage = html.window.localStorage;
    var uid = storage[storageKey];
    if (uid == null || uid.isEmpty) {
      uid = uuid.v4();
      storage[storageKey] = uid;
    }
    return uid;
  } else {
    final prefs = await SharedPreferences.getInstance();
    var uid = prefs.getString(storageKey);
    if (uid == null || uid.isEmpty) {
      uid = uuid.v4();
      await prefs.setString(storageKey, uid);
    }
    return uid;
  }
}

/// ✅ Coleta informações detalhadas do sistema e aplicativo
Future<Map<String, dynamic>> getFullDeviceInfo() async {
  final info = <String, dynamic>{};
  try {
    final clientInfo = await ClientInformation.fetch();

    info['os_name'] = clientInfo.osName ?? 'unknown';
    info['device_id'] = clientInfo.deviceId ?? 'unknown';
    info['device_name'] = clientInfo.deviceName ?? 'unknown';
    info['os_version'] = clientInfo.osVersion ?? 'unknown';
    info['os_version_code'] = clientInfo.osVersionCode?.toString() ?? 'unknown';
    info['software_name'] = clientInfo.softwareName ?? 'unknown';
    info['software_version'] = clientInfo.softwareVersion ?? 'unknown';
    info['application_id'] = clientInfo.applicationId ?? 'unknown';
    info['application_type'] = clientInfo.applicationType ?? 'unknown';
    info['application_name'] = clientInfo.applicationName ?? 'unknown';
    info['application_version'] = clientInfo.applicationVersion ?? 'unknown';
    info['application_build_code'] =
        clientInfo.applicationBuildCode ?? 'unknown';

    // 🔍 Detecta PWA
    if (kIsWeb) {
      final isPWA =
          html.window.matchMedia('(display-mode: standalone)').matches ||
              html.window.navigator.userAgent.contains('Progressive');
      info['is_pwa'] = isPWA;
    } else {
      info['is_pwa'] = false;
    }

    // 📏 Tamanho da tela
    if (kIsWeb) {
      info['screen_width'] = html.window.screen?.width ?? 0;
      info['screen_height'] = html.window.screen?.height ?? 0;
    } else {
      info['screen_width'] = 0;
      info['screen_height'] = 0;
    }

    // 🔹 Plataforma
    if (kIsWeb) {
      info['platform'] = info['is_pwa'] ? 'pwa' : 'web';
    } else if (Platform.isAndroid) {
      info['platform'] = 'android';
    } else if (Platform.isIOS) {
      info['platform'] = 'ios';
    } else if (Platform.isWindows) {
      info['platform'] = 'windows';
    } else if (Platform.isMacOS) {
      info['platform'] = 'macos';
    } else {
      info['platform'] = 'other';
    }
  } catch (e) {
    print('⚠️ Erro ao obter informações do dispositivo: $e');
    info['platform'] = 'unknown';
  }

  return info;
}

/// 🔑 Função principal de login com registro multi-sessão
Future<bool> loginMultiSession(String varemail, String varsenha) async {
  final supabase = Supabase.instance.client;
  final deviceUID = await getPersistentDeviceUID();
  final deviceInfo = await getFullDeviceInfo();

  try {
    // 1️⃣ Login direto com Supabase (mantém sessão válida)
    final result = await supabase.auth.signInWithPassword(
      email: varemail,
      password: varsenha,
    );

    if (result.user == null || result.session == null) {
      print("❌ Falha ao autenticar usuário no Supabase.");
      return false;
    }

    print("✅ Login local no Supabase realizado com sucesso!");

    // 2️⃣ Envia informações para a Edge Function
    const String url =
        'https://hzmixuvrnzpypriagecv.supabase.co/functions/v1/auth_multi_session';

    final payload = {
      'email': varemail,
      'user_id': result.user?.id,
      'device_uid': deviceUID,
      'access_token': result.session?.accessToken,
      'device_info': deviceInfo,
    };

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(payload),
    );

    print("📡 Resposta da Edge Function: ${response.statusCode}");
    print(response.body);

    if (response.statusCode == 200) {
      print("✅ Dispositivo registrado na Edge Function com sucesso!");
      print("🖥️ ID: $deviceUID | Plataforma: ${deviceInfo['platform']}");
      return true;
    } else {
      print("⚠️ Falha ao registrar dispositivo: ${response.body}");
      return false;
    }
  } catch (e, st) {
    print("❌ Erro ao fazer login multi-sessão: $e");
    print(st);
    return false;
  }
}
