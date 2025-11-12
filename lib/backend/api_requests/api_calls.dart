import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Brevo Group Code

class BrevoGroup {
  static String getBaseUrl() => 'https://api.brevo.com/v3';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'api-key':
        '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',
    'content-type': 'application/json',
  };
  static EnivarEmailCall enivarEmailCall = EnivarEmailCall();
}

class EnivarEmailCall {
  Future<ApiCallResponse> call({
    String? emailSender = '',
    String? assunto = '',
    String? textoConteudo = '',
    String? nomeSender = '',
    String? emailTo = '',
    String? nomeTo = '',
  }) async {
    final baseUrl = BrevoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sender": {
    "email": "${emailSender}",
    "name": "${nomeSender}"
  },
  "to": [
    {
      "email": "${emailTo}"
    }
  ],
  "htmlContent":"${textoConteudo}" ,
  "subject": "${assunto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EnivarEmail',
      apiUrl: '${baseUrl}/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'api-key':
            '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',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? messageId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messageId''',
      ));
}

/// End Brevo Group Code

/// Start EvolutionWhatsApp Group Code

class EvolutionWhatsAppGroup {
  static String getBaseUrl() => 'https://evolution2.agendasuper.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static MessagesendCall messagesendCall = MessagesendCall();
  static CreateInstanceQrCodeCall createInstanceQrCodeCall =
      CreateInstanceQrCodeCall();
  static CreateInstanceNumeroTelefoneCall createInstanceNumeroTelefoneCall =
      CreateInstanceNumeroTelefoneCall();
  static ConnectionStateCall connectionStateCall = ConnectionStateCall();
  static FetchInstancesCall fetchInstancesCall = FetchInstancesCall();
  static InstanceConnectCall instanceConnectCall = InstanceConnectCall();
  static LogoutInstanceCall logoutInstanceCall = LogoutInstanceCall();
  static DeleteInstanceCall deleteInstanceCall = DeleteInstanceCall();
  static RestartInstanceCall restartInstanceCall = RestartInstanceCall();
}

class MessagesendCall {
  Future<ApiCallResponse> call({
    String? instancia = '',
    String? numeroWhatsappEnviar = '',
    String? texto = '',
    String? apikeyUsuario = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${numeroWhatsappEnviar}",
  "text": "${texto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'messagesend',
      apiUrl: '${baseUrl}/message/sendText/${instancia}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeyUsuario}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic key(dynamic response) => getJsonField(
        response,
        r'''$.key''',
      );
  String? keyremoteJid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.key.remoteJid''',
      ));
  bool? keyfromMe(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.key.fromMe''',
      ));
  String? ikeyidd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.key.id''',
      ));
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  String? conversation(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message.conversation''',
      ));
  String? messageType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messageType''',
      ));
  int? messageTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.messageTimestamp''',
      ));
  String? instanceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instanceId''',
      ));
  String? source(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.source''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List? responsemessage(dynamic response) => getJsonField(
        response,
        r'''$.response.message''',
        true,
      ) as List?;
  bool? responsemessageexists(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.message[:].exists''',
      ));
  String? responsemessagejid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.message[:].jid''',
      ));
  String? responsemessagenumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.message[:].number''',
      ));
}

class CreateInstanceQrCodeCall {
  Future<ApiCallResponse> call({
    String? instanceName = '',
    String? apikeySistema = '',
    String? integration = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "instanceName":"${instanceName}" ,
  "qrcode": true,
 "integration":"${integration}" ,
  "alwaysOnline": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateInstance Qr Code',
      apiUrl: '${baseUrl}/instance/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? responsemessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.message''',
      ));
  String? instancestatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.status''',
      ));
  String? hash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hash''',
      ));
  dynamic webhook(dynamic response) => getJsonField(
        response,
        r'''$.webhook''',
      );
  dynamic websocket(dynamic response) => getJsonField(
        response,
        r'''$.websocket''',
      );
  dynamic rabbitmq(dynamic response) => getJsonField(
        response,
        r'''$.rabbitmq''',
      );
  dynamic sqs(dynamic response) => getJsonField(
        response,
        r'''$.sqs''',
      );
  dynamic settings(dynamic response) => getJsonField(
        response,
        r'''$.settings''',
      );
  bool? settingsrejectCall(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.rejectCall''',
      ));
  String? instanceintegration(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.integration''',
      ));
  bool? settingsgroupsIgnore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.groupsIgnore''',
      ));
  String? instanceinstanceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  dynamic instance(dynamic response) => getJsonField(
        response,
        r'''$.instance''',
      );
  String? instanceinstanceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceId''',
      ));
  bool? settingsalwaysOnline(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.alwaysOnline''',
      ));
  bool? settingsreadMessages(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.readMessages''',
      ));
  bool? settingsreadStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.readStatus''',
      ));
  bool? settingssyncFullHistory(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.settings.syncFullHistory''',
      ));
  dynamic qrcode(dynamic response) => getJsonField(
        response,
        r'''$.qrcode''',
      );
  String? qrcodepairingCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.qrcode.pairingCode''',
      ));
  String? qrcodecode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode.code''',
      ));
  String? qrcodebase64(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode.base64''',
      ));
  int? qrcodecount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.qrcode.count''',
      ));
}

class CreateInstanceNumeroTelefoneCall {
  Future<ApiCallResponse> call({
    String? instanceName = '',
    String? apikeySistema = '',
    String? integration = '',
    String? numeroWhatsapp = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "instanceName":"${instanceName}" ,
  "qrcode": true,
 "integration":"${integration}" ,
"number": "${numeroWhatsapp}",
  "alwaysOnline": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateInstance Numero Telefone',
      apiUrl: '${baseUrl}/instance/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? responsemessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.message''',
      ));
  String? instancestatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.status''',
      ));
  String? hash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.hash''',
      ));
  dynamic webhook(dynamic response) => getJsonField(
        response,
        r'''$.webhook''',
      );
  dynamic websocket(dynamic response) => getJsonField(
        response,
        r'''$.websocket''',
      );
  dynamic rabbitmq(dynamic response) => getJsonField(
        response,
        r'''$.rabbitmq''',
      );
  dynamic sqs(dynamic response) => getJsonField(
        response,
        r'''$.sqs''',
      );
  dynamic settings(dynamic response) => getJsonField(
        response,
        r'''$.settings''',
      );
  bool? settingsrejectCall(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.rejectCall''',
      ));
  String? instanceintegration(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.integration''',
      ));
  bool? settingsgroupsIgnore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.groupsIgnore''',
      ));
  String? instanceinstanceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  dynamic instance(dynamic response) => getJsonField(
        response,
        r'''$.instance''',
      );
  String? instanceinstanceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceId''',
      ));
  bool? settingsalwaysOnline(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.alwaysOnline''',
      ));
  bool? settingsreadMessages(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.readMessages''',
      ));
  bool? settingsreadStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.settings.readStatus''',
      ));
  bool? settingssyncFullHistory(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.settings.syncFullHistory''',
      ));
  dynamic qrcode(dynamic response) => getJsonField(
        response,
        r'''$.qrcode''',
      );
  String? qrcodepairingCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.qrcode.pairingCode''',
      ));
  String? qrcodecode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode.code''',
      ));
  String? qrcodebase64(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode.base64''',
      ));
  int? qrcodecount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.qrcode.count''',
      ));
}

class ConnectionStateCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Connection State',
      apiUrl: '${baseUrl}/instance/connectionState/${nomeInstancia}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic instance(dynamic response) => getJsonField(
        response,
        r'''$.instance''',
      );
  String? instanceinstanceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  String? instancestate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.state''',
      ));
}

class FetchInstancesCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Instances',
      apiUrl:
          '${baseUrl}/instance/fetchInstances?instanceName=${nomeInstancia}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? connectionStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].connectionStatus''',
      ));
  String? ownerJid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].ownerJid''',
      ));
  String? profilePicUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profilePicUrl''',
      ));
  String? integration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].integration''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].token''',
      ));
  String? settingid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.id''',
      ));
  String? clientName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].clientName''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updatedAt''',
      ));
  dynamic setting(dynamic response) => getJsonField(
        response,
        r'''$[:].Setting''',
      );
  bool? settingrejectCall(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.rejectCall''',
      ));
  bool? settinggroupsIgnore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.groupsIgnore''',
      ));
  bool? settingalwaysOnline(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.alwaysOnline''',
      ));
  bool? settingreadMessages(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readMessages''',
      ));
  bool? settingreadStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readStatus''',
      ));
  bool? settingsyncFullHistory(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.syncFullHistory''',
      ));
  String? settingcreatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.createdAt''',
      ));
  String? settingupdatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.updatedAt''',
      ));
  String? settinginstanceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.instanceId''',
      ));
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$[:]._count''',
      );
  int? countMessage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:]._count.Message''',
      ));
  int? countContact(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:]._count.Contact''',
      ));
  int? countChat(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:]._count.Chat''',
      ));
  String? profileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profileName''',
      ));
  String? number(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].number''',
      ));
  int? disconnectionReasonCode(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].disconnectionReasonCode''',
      ));
  String? disconnectionObject(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].disconnectionObject''',
      ));
  String? disconnectionAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].disconnectionAt''',
      ));
}

class InstanceConnectCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Instance Connect',
      apiUrl: '${baseUrl}/instance/connect/${nomeInstancia}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? responsemessage(dynamic response) => (getJsonField(
        response,
        r'''$.response.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? base64(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.base64''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  dynamic instance(dynamic response) => getJsonField(
        response,
        r'''$.instance''',
      );
  String? instanceinstanceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  String? instancestate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.state''',
      ));
  String? pairingCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pairingCode''',
      ));
}

class LogoutInstanceCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Logout Instance',
      apiUrl: '${baseUrl}/instance/logout/${nomeInstancia}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? responsemessage(dynamic response) => (getJsonField(
        response,
        r'''$.response.message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DeleteInstanceCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Instance',
      apiUrl: '${baseUrl}/instance/delete/${nomeInstancia}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? responsemessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.message''',
      ));
}

class RestartInstanceCall {
  Future<ApiCallResponse> call({
    String? nomeInstancia = '',
    String? apikeySistema = '',
  }) async {
    final baseUrl = EvolutionWhatsAppGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Restart Instance',
      apiUrl: '${baseUrl}/instance/restart/${nomeInstancia}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '${apikeySistema}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic instance(dynamic response) => getJsonField(
        response,
        r'''$.instance''',
      );
  String? instanceinstanceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instance.instanceName''',
      ));
  String? instancestate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.state''',
      ));
}

/// End EvolutionWhatsApp Group Code

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) =>
      'https://hzmixuvrnzpypriagecv.supabase.co';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static ViewtblestabelecimentosadminCall viewtblestabelecimentosadminCall =
      ViewtblestabelecimentosadminCall();
  static ViewtblpagamentosstripelogCall viewtblpagamentosstripelogCall =
      ViewtblpagamentosstripelogCall();
  static UserLoginCall userLoginCall = UserLoginCall();
  static UserLogoutCall userLogoutCall = UserLogoutCall();
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? newPassword = '',
    String? value =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "email":"${email}" ,
  "password": "${newPassword}"
  }''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl: '${baseUrl}/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ViewtblestabelecimentosadminCall {
  Future<ApiCallResponse> call({
    String? situacao = '',
    String? assinatura = '',
    String? contaTeste = '',
    String? idPlanoNome = '',
    String? statusPlano = '',
    String? statusPagamento = '',
    String? rangeInicial = '',
    String? rangeFinal = '',
    String? orderby = 'id',
    String? ascdesc = 'desc',
    String? consulta = '',
    String? assinaturaCancSolicitado = '',
    String? statusAssinatura = '',
    String? periodoTesteAtivo = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'viewtblestabelecimentosadmin',
      apiUrl:
          '${baseUrl}/rest/v1/view_tbl_estabelecimentos_admin?&situacao=eq.${situacao}&assinatura=like.${assinatura}*&conta_teste=eq.${contaTeste}&id_plano_nome=like.*${idPlanoNome}&status_plano=like.${statusPlano}*&status_pagamento=like.${statusPagamento}*&or=(nome_normalizado.like.*${consulta}*,id.eq.${consulta})&periodo_teste_ativo=like.${periodoTesteAtivo}*&status_assinatura=like.${statusAssinatura}*&assinatura_canc_solicitado=like.${assinaturaCancSolicitado}*&order=${orderby}.${ascdesc}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
        'Range-Unit': 'items',
        'Range': '${rangeInicial}-${rangeFinal}',
        'Prefer': 'count=exact',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ViewtblpagamentosstripelogCall {
  Future<ApiCallResponse> call({
    String? idEstabelecimento = '',
    String? nomeEvento = '',
    String? rangeInicial = '',
    String? rangeFinal = '',
    String? limit = '',
    String? orderby = 'id',
    String? ascdesc = 'desc',
    String? contaTeste = '',
    String? consulta = '',
    String? erro = '',
    String? periodoTeste = '',
    String? assinaturaCancSolicitado = '',
    String? semEstabelecimento = '',
    String? statusAssinatura = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'viewtblpagamentosstripelog',
      apiUrl:
          '${baseUrl}/rest/v1/view_tbl_pagamentos_stripe_log?&id_estabelecimento=like.*${idEstabelecimento}&nome_evento=like.${nomeEvento}*&or=(subscription_id.like.${consulta}*,stripe_id.like.${consulta}*)&conta_teste=eq.${contaTeste}&erro=like.${erro}*&periodo_teste=like.${periodoTeste}*&assinatura_canc_solicitado=like.${assinaturaCancSolicitado}*&sem_estabelecimento=like.${semEstabelecimento}*&status_assinatura=like.${statusAssinatura}*&order=${orderby}.${ascdesc}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
        'Range-Unit': 'items',
        'Range': '${rangeInicial}-${rangeFinal}',
        'Prefer': 'count=exact',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class UserLoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User login',
      apiUrl: '${baseUrl}/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error_code''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class UserLogoutCall {
  Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxYTM5ZDFlNS0wMGM1LTRkZDYtYjRhNy0zOTA2YzBjMzNkZGUiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzUyNjkxNjEyLCJpYXQiOjE3NTI2ODgwMTIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCIsImdvb2dsZSJdfSwidXNlcl9tZXRhZGF0YSI6eyJhdmF0YXJfdXJsIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUNnOG9jS1g1YjVZaElvWHA4NVNudWVUWDFId3JSeXRaWHNtVVM5cm5lRklrR010T1B6MUs4RktzZz1zOTYtYyIsImVtYWlsIjoiaGVyc29hcmVzMTJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZ1bGxfbmFtZSI6Ikhlcm9uIFNvYXJlcyIsImlzcyI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbSIsIm5hbWUiOiJIZXJvbiBTb2FyZXMiLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NLWDViNVloSW9YcDg1U251ZVRYMUh3clJ5dFpYc21VUzlybmVGSWtHTXRPUHoxSzhGS3NnPXM5Ni1jIiwicHJvdmlkZXJfaWQiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDciLCJzdWIiOiIxMDYyNDQwNDg3MjI3NjY3MzU0MDcifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc1MjY4ODAxMn1dLCJzZXNzaW9uX2lkIjoiYjUxZWU1NWEtNWFiMi00ZDg2LWI1MGEtYzU0NzJkOGMzNjg3IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.k0sC9IvKbsDcPaclcXTo5suj6_WfKKIEpdM9RPzDb2E',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'User logout',
      apiUrl: '${baseUrl}/auth/v1/logout',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Group Code

/// Start Edge Functions Supabase Group Code

class EdgeFunctionsSupabaseGroup {
  static String getBaseUrl({
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) =>
      'https://hzmixuvrnzpypriagecv.supabase.co/functions/v1/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static ConsultarCpfSpbtCall consultarCpfSpbtCall = ConsultarCpfSpbtCall();
  static OnesignalenviarnotificacaoCall onesignalenviarnotificacaoCall =
      OnesignalenviarnotificacaoCall();
  static StripedesfazcancelassinaturaCall stripedesfazcancelassinaturaCall =
      StripedesfazcancelassinaturaCall();
  static StripeportalurlCall stripeportalurlCall = StripeportalurlCall();
  static ConsultarcpfhubioCall consultarcpfhubioCall = ConsultarcpfhubioCall();
  static AuthmultisessionCall authmultisessionCall = AuthmultisessionCall();
  static LogatividadedeviceCall logatividadedeviceCall =
      LogatividadedeviceCall();
}

class ConsultarCpfSpbtCall {
  Future<ApiCallResponse> call({
    String? paramDataNascimento = '',
    String? paramCPF = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "paramDataNascimento": "${escapeStringForJson(paramDataNascimento)}",
  "paramCPF": "${escapeStringForJson(paramCPF)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar cpf spbt',
      apiUrl: '${baseUrl}consultar_cpf_spbt',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? dataname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? notice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.notice''',
      ));
  bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  List? errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
        true,
      ) as List?;
  int? errorscode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.errors[:].code''',
      ));
  String? errorsfield(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].field''',
      ));
}

class OnesignalenviarnotificacaoCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'onesignalenviarnotificacao',
      apiUrl: '${baseUrl}onesignal_enviar_notificacao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StripedesfazcancelassinaturaCall {
  Future<ApiCallResponse> call({
    String? subscriptionId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "subscription_id": "${escapeStringForJson(subscriptionId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'stripedesfazcancelassinatura',
      apiUrl: '${baseUrl}stripe_desfaz_cancel_assinatura',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? sucesso(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sucesso''',
      ));
  bool? resultcancelatperiodend(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.result.cancel_at_period_end''',
      ));
}

class StripeportalurlCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "customer_id": "${escapeStringForJson(customerId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'stripeportalurl',
      apiUrl: '${baseUrl}stripe_portal_url',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class ConsultarcpfhubioCall {
  Future<ApiCallResponse> call({
    String? cpf = '',
    String? birthDate = '',
    String? userId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "cpf": "${escapeStringForJson(cpf)}",
  "birthDate": "${escapeStringForJson(birthDate)}",
  "user_id": "${escapeStringForJson(userId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'consultarcpfhubio',
      apiUrl: '${baseUrl}consultar_cpf_hubio',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
  String? situation(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.situation''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  String? birthDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.birthDate''',
      ));
  String? cpfNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.cpfNumber''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class AuthmultisessionCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? deviceName = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "device_name": "Chrome"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authmultisession',
      apiUrl: '${baseUrl}/auth_multi_session',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogatividadedeviceCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? email = '',
    String? deviceUid = '',
    String? applicationVersion = '',
    String? idApp = '',
    String? token =
        'eyJhbGciOiJIUzI1NiIsImtpZCI6IkZLdFM5emVrUExJOUxSMkQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2h6bWl4dXZybnpweXByaWFnZWN2LnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzNDhiMTk4OS0yNTNhLTQwYzMtYTQxMi1iM2RiYzFkMTc2MDIiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzU2MTY5OTU3LCJpYXQiOjE3NTYxNjYzNTcsImVtYWlsIjoic2FsYW9pc2FyZXNlbmRpekB0ZXN0ZXguY29tLmJyIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InNhbGFvaXNhcmVzZW5kaXpAdGVzdGV4LmNvbS5iciIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaG9uZV92ZXJpZmllZCI6ZmFsc2UsInN1YiI6IjM0OGIxOTg5LTI1M2EtNDBjMy1hNDEyLWIzZGJjMWQxNzYwMiJ9LCJyb2xlIjoiYXV0aGVudGljYXRlZCIsImFhbCI6ImFhbDEiLCJhbXIiOlt7Im1ldGhvZCI6InBhc3N3b3JkIiwidGltZXN0YW1wIjoxNzU2MTY2MzU2fV0sInNlc3Npb25faWQiOiJkYTg2MTEwMi03ZGNkLTRmNDEtYThiNC1iM2FjMzUwYjZhYmMiLCJpc19hbm9ueW1vdXMiOmZhbHNlfQ.iVBvYphHn_LFOCuZaLhLLN7b-loGnpaTH6Bhno51yzc',
  }) async {
    final baseUrl = EdgeFunctionsSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "email": "${escapeStringForJson(email)}",
  "device_uid": "${escapeStringForJson(deviceUid)}",
  "application_version": "${escapeStringForJson(applicationVersion)}",
  "id_app": "${escapeStringForJson(idApp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logatividadedevice',
      apiUrl: '${baseUrl}log_atividade_device',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Edge Functions Supabase Group Code

/// Start Functions Server Supabase Group Code

class FunctionsServerSupabaseGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://hzmixuvrnzpypriagecv.supabase.co/rest/v1/rpc/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
    'Authorization': 'Bearer [token]',
  };
  static ConsultarTelefoneCall consultarTelefoneCall = ConsultarTelefoneCall();
  static ConsultarDocCadCPFOuCNPJCall consultarDocCadCPFOuCNPJCall =
      ConsultarDocCadCPFOuCNPJCall();
  static ConsultarNomeTabsCall consultarNomeTabsCall = ConsultarNomeTabsCall();
  static InserirComissaoAfiliadoCall inserirComissaoAfiliadoCall =
      InserirComissaoAfiliadoCall();
  static ConsultarUsernameCall consultarUsernameCall = ConsultarUsernameCall();
  static DeletarCuponsAfiliadoCall deletarCuponsAfiliadoCall =
      DeletarCuponsAfiliadoCall();
  static FcafiliadodashboardCall fcafiliadodashboardCall =
      FcafiliadodashboardCall();
  static FcestabelecimentodashboardCall fcestabelecimentodashboardCall =
      FcestabelecimentodashboardCall();
  static FcsolicitarsaqueCall fcsolicitarsaqueCall = FcsolicitarsaqueCall();
  static ConsultarCupomCall consultarCupomCall = ConsultarCupomCall();
  static ConsultarEmailCall consultarEmailCall = ConsultarEmailCall();
  static ConsultarModelosServicosCall consultarModelosServicosCall =
      ConsultarModelosServicosCall();
  static FccriarpagamentoCall fccriarpagamentoCall = FccriarpagamentoCall();
  static FcCriarPagamentoAfiliacaoCall fcCriarPagamentoAfiliacaoCall =
      FcCriarPagamentoAfiliacaoCall();
  static FcconsultarplanoslandpgCall fcconsultarplanoslandpgCall =
      FcconsultarplanoslandpgCall();
  static FcdeleteauthuserCall fcdeleteauthuserCall = FcdeleteauthuserCall();
}

class ConsultarTelefoneCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramTabela = '',
    String? paramTel = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_tabela": "${escapeStringForJson(paramTabela)}",
  "param_tel": "${escapeStringForJson(paramTel)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar telefone',
      apiUrl: '${baseUrl}fc_consultar_telefone_tabs',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? cadastrado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cadastrado''',
      ));
}

class ConsultarDocCadCPFOuCNPJCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramCpfCnpj = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_cpf_cnpj": "${escapeStringForJson(paramCpfCnpj)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar doc cad CPF ou CNPJ',
      apiUrl: '${baseUrl}fc_consultar_doc_cad',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  String? cadastrado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cadastrado''',
      ));
  int? idafiliado(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_afiliado''',
      ));
  int? idestab(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_estab''',
      ));
}

class ConsultarNomeTabsCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramTabela = '',
    String? paramNome = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_tabela": "${escapeStringForJson(paramTabela)}",
  "param_nome": "${escapeStringForJson(paramNome)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Nome Tabs',
      apiUrl: '${baseUrl}fc_consultar_nome_tabs',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? cadastrado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cadastrado''',
      ));
}

class InserirComissaoAfiliadoCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramIdTemp = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabPlano = '',
    String? paramTipo = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_id_estab_plano": "${escapeStringForJson(paramIdEstabPlano)}",
  "param_id_temp": "${escapeStringForJson(paramIdTemp)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_tipo": "${escapeStringForJson(paramTipo)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inserir Comissao Afiliado',
      apiUrl: '${baseUrl}fc_add_comissao_afiliados',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? cadastrado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cadastrado''',
      ));
}

class ConsultarUsernameCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramTabela = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? paramUsername = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_tabela": "${escapeStringForJson(paramTabela)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}",
  "param_username": "${escapeStringForJson(paramUsername)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Username',
      apiUrl: '${baseUrl}fc_consultar_username',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? cadastrado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cadastrado''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class DeletarCuponsAfiliadoCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramIdAfiliado = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabelecimento = '',
    String? paramNome = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_id_afiliado": "${escapeStringForJson(paramIdAfiliado)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_estabelecimento": "${escapeStringForJson(paramIdEstabelecimento)}",
  "param_nome": "${escapeStringForJson(paramNome)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Deletar  Cupons Afiliado',
      apiUrl: '${baseUrl}fc_del_cupons_afiliado',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class FcafiliadodashboardCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramIdAfiliado = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabelecimento = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_id_afiliado": "${escapeStringForJson(paramIdAfiliado)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_estabelecimento": "${escapeStringForJson(paramIdEstabelecimento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fcafiliadodashboard',
      apiUrl: '${baseUrl}fc_afiliado_dashboard',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  double? comissao7dias(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].comissao_7dias''',
      ));
  double? comissaomes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].comissao_mes''',
      ));
  double? comissaodisponivel(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].comissao_disponivel''',
      ));
  double? comissaopendente(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].comissao_pendente''',
      ));
  int? quantindicacoes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_indicacoes''',
      ));
  int? quantsubafiliados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_sub_afiliados''',
      ));
  int? quantindicacoesativos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_indicacoes_ativos''',
      ));
  int? quantsubafiliadosativos(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].quant_sub_afiliados_ativos''',
      ));
  double? valormeta(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valor_meta''',
      ));
  bool? sistema(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].sistema''',
      ));
  double? vlrvdestabdia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_estab_dia''',
      ));
  double? vlrvdafildia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_afil_dia''',
      ));
  double? vlrvdcancestabdia(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_estab_dia''',
      ));
  double? vlrvdcancafildia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_afil_dia''',
      ));
  double? vlrvdestab7dia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_estab_7dia''',
      ));
  double? vlrvdafil7dia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_afil_7dia''',
      ));
  double? vlrvdcancestab7dia(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_estab_7dia''',
      ));
  double? vlrvdcancafil7dia(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_afil_7dia''',
      ));
  double? vlrvdestabmes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_estab_mes''',
      ));
  double? vlrvdafilmes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_afil_mes''',
      ));
  double? vlrvdcancestabmes(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_estab_mes''',
      ));
  double? vlrvdcancafilmes(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_vd_canc_afil_mes''',
      ));
  double? comissaodia(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].comissao_dia''',
      ));
  double? vlrcomissaodisponivelhoje(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_comissao_disponivel_hoje''',
      ));
  double? vlrsaqueshoje(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].vlr_saques_hoje''',
      ));
}

class FcestabelecimentodashboardCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramIdAfiliado = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabelecimento = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_id_afiliado": "${escapeStringForJson(paramIdAfiliado)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_estabelecimento": "${escapeStringForJson(paramIdEstabelecimento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fcestabelecimentodashboard',
      apiUrl: '${baseUrl}fc_estabelecimento_dashboard',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  int? valorvddia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_vd_dia''',
      ));
  int? valorvd7dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_vd_7dias''',
      ));
  int? valorvdmes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_vd_mes''',
      ));
  int? quantvddia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_vd_dia''',
      ));
  int? quantvd7dias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_vd_7dias''',
      ));
  int? quantvdmes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_vd_mes''',
      ));
  int? valormeta(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_meta''',
      ));
  bool? sistema(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].sistema''',
      ));
  int? valorvdgeral(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_vd_geral''',
      ));
  int? quantvdgeral(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].quant_vd_geral''',
      ));
}

class FcsolicitarsaqueCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramIdAfiliado = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabelecimento = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_id_afiliado": "${escapeStringForJson(paramIdAfiliado)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_estabelecimento": "${escapeStringForJson(paramIdEstabelecimento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fcsolicitarsaque',
      apiUrl: '${baseUrl}fc_solicitar_saque',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class ConsultarCupomCall {
  Future<ApiCallResponse> call({
    String? paramCupom = '',
    String? paramData = '',
    String? paramDv = '',
    String? paramKey = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? paramIdAfApp = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_cupom": "${escapeStringForJson(paramCupom)}",
  "param_id_af_app": "${escapeStringForJson(paramIdAfApp)}",
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Cupom',
      apiUrl: '${baseUrl}fc_consultar_cupom',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? idafiliado(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_afiliado''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
  int? idestabelecimento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_estabelecimento''',
      ));
  String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].descricao''',
      ));
  String? tipocupom(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipo_cupom''',
      ));
  int? tempo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tempo''',
      ));
  int? percdesconto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].perc_desconto''',
      ));
  bool? aceitonarenovacao(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].aceito_na_renovacao''',
      ));
  List<int>? idplanosperiodosliberados(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_planos_periodos_liberados''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idplanosnomesliberados(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_planos_nomes_liberados''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  bool? vencido(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].vencido''',
      ));
  bool? usado(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].usado''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuid''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].username''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ConsultarEmailCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramEmail = '',
    String? paramKey = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramUserIdCli = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_email": "${escapeStringForJson(paramEmail)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_user_id_cli": "${escapeStringForJson(paramUserIdCli)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Email',
      apiUrl: '${baseUrl}fc_consultar_email',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class ConsultarModelosServicosCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramIdAfiliado = '',
    String? paramKey = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdEstabelecimento = '',
    String? paramIdSegmento = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_id_afiliado": "${escapeStringForJson(paramIdAfiliado)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_estabelecimento": "${escapeStringForJson(paramIdEstabelecimento)}",
  "param_id_segmento": "${escapeStringForJson(paramIdSegmento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Modelos Servicos',
      apiUrl: '${baseUrl}fc_consultar_modelos_servicos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List<int>? idmodelo(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_modelo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? cadastrado(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastrado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? idservico(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_servico''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? result(dynamic response) => (getJsonField(
        response,
        r'''$[:].result''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? tempo(dynamic response) => (getJsonField(
        response,
        r'''$[:].tempo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? valorsobconsulta(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_sob_consulta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class FccriarpagamentoCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramIdPlanoPreco = '',
    String? paramKey = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdCupom = '',
    String? paramRenovacao = '',
    String? paramCheckout = '',
    String? paramAss = '',
    String? paramRec = '',
    String? paramDiasTry = '',
    String? paramDownUp = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_id_plano_preco": "${escapeStringForJson(paramIdPlanoPreco)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_cupom": "${escapeStringForJson(paramIdCupom)}",
  "param_renovacao": "${escapeStringForJson(paramRenovacao)}",
  "param_checkout": "${escapeStringForJson(paramCheckout)}",
  "param_ass": "${escapeStringForJson(paramAss)}",
  "param_rec": "${escapeStringForJson(paramRec)}",
  "param_dias_try": "${escapeStringForJson(paramDiasTry)}",
  "param_down_up": "${escapeStringForJson(paramDownUp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fccriarpagamento',
      apiUrl: '${baseUrl}fc_criar_pagamento',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idpg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id_pg''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class FcCriarPagamentoAfiliacaoCall {
  Future<ApiCallResponse> call({
    String? paramData = '',
    String? paramDv = '',
    String? paramIdPlanoPreco = '',
    String? paramKey = '',
    String? paramToken = '',
    String? paramUserId = '',
    String? paramIdCupom = '',
    String? paramRenovacao = '',
    String? paramCheckout = '',
    String? paramAss = '',
    String? paramRec = '',
    String? paramDiasTry = '',
    String? paramDownUp = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_data": "${escapeStringForJson(paramData)}",
  "param_dv": "${escapeStringForJson(paramDv)}",
  "param_id_plano_preco": "${escapeStringForJson(paramIdPlanoPreco)}",
  "param_key": "${escapeStringForJson(paramKey)}",
  "param_token": "${escapeStringForJson(paramToken)}",
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_id_cupom": "${escapeStringForJson(paramIdCupom)}",
  "param_renovacao": "${escapeStringForJson(paramRenovacao)}",
  "param_checkout": "${escapeStringForJson(paramCheckout)}",
  "param_ass": "${escapeStringForJson(paramAss)}",
  "param_rec": "${escapeStringForJson(paramRec)}",
  "param_dias_try": "${escapeStringForJson(paramDiasTry)}",
  "param_down_up": "${escapeStringForJson(paramDownUp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fc criar pagamento afiliacao',
      apiUrl: '${baseUrl}fc_criar_pagamento_afiliacao',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idpg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id_pg''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? result(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].result''',
      ));
}

class FcconsultarplanoslandpgCall {
  Future<ApiCallResponse> call({
    String? paramIdAfApp = '',
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "param_id_af_app": "${escapeStringForJson(paramIdAfApp)}",
  "param_id_cupom_pd": "0"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fcconsultarplanoslandpg',
      apiUrl: '${baseUrl}fc_consultar_planos_landpg',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FcdeleteauthuserCall {
  Future<ApiCallResponse> call({
    String? paramUserId = '',
    String? paramEmail = '',
    List<String>? paramMotivoList,
    String? token = '',
  }) async {
    final baseUrl = FunctionsServerSupabaseGroup.getBaseUrl(
      token: token,
    );
    final paramMotivo = _serializeList(paramMotivoList);

    final ffApiRequestBody = '''
{
  "param_user_id": "${escapeStringForJson(paramUserId)}",
  "param_email": "${escapeStringForJson(paramEmail)}",
  "param_motivo": ${paramMotivo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fcdeleteauthuser',
      apiUrl: '${baseUrl}fc_delete_auth_user',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

/// End Functions Server Supabase Group Code

/// Start Consultas Hub Dev Group Code

class ConsultasHubDevGroup {
  static String getBaseUrl() => 'https://ws.hubdodesenvolvedor.com.br/v2/';
  static Map<String, String> headers = {};
  static CpfCall cpfCall = CpfCall();
}

class CpfCall {
  Future<ApiCallResponse> call({
    String? tipoDoRetorno = '',
    String? cpf = '',
    String? dataDeNascimento = '',
    String? token = '',
  }) async {
    final baseUrl = ConsultasHubDevGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'CPF',
      apiUrl:
          '${baseUrl}cpf/?${tipoDoRetorno}&cpf=${cpf}&data=${dataDeNascimento}&token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? returnx(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.return''',
      ));
  int? consumed(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.consumed''',
      ));
  String? resultnomedapf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.nome_da_pf''',
      ));
  String? resultdatanascimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.data_nascimento''',
      ));
  String? resultsituacaocadastral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.situacao_cadastral''',
      ));
  dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.result''',
      );
  String? resultnumerodecpf(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.numero_de_cpf''',
      ));
  String? resultdatainscricao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.data_inscricao''',
      ));
  String? resultdigitoverificador(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.digito_verificador''',
      ));
  String? comprovanteemitido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.comprovante_emitido''',
      ));
  String? resultcomprovanteemitidodata(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.result.comprovante_emitido_data''',
      ));
}

/// End Consultas Hub Dev Group Code

/// Start Brasil API Group Code

class BrasilAPIGroup {
  static String getBaseUrl() => 'https://brasilapi.com.br/api/cnpj/v1/';
  static Map<String, String> headers = {};
  static ConsultarCNPJCall consultarCNPJCall = ConsultarCNPJCall();
}

class ConsultarCNPJCall {
  Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    final baseUrl = BrasilAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Consultar CNPJ',
      apiUrl: '${baseUrl}${cnpj}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  List? qsa(dynamic response) => getJsonField(
        response,
        r'''$.qsa''',
        true,
      ) as List?;
  List? qsapais(dynamic response) => getJsonField(
        response,
        r'''$.qsa[:].pais''',
        true,
      ) as List?;
  List<String>? qsanomesocio(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].nome_socio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? qsacodigopais(dynamic response) => getJsonField(
        response,
        r'''$.qsa[:].codigo_pais''',
        true,
      ) as List?;
  List<String>? qsafaixaetaria(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].faixa_etaria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? qsacnpjcpfdosocio(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].cnpj_cpf_do_socio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? qsadataentradasociedade(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].data_entrada_sociedade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? qsaidentificadordesocio(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].identificador_de_socio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? qsacpfrepresentantelegal(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].cpf_representante_legal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? qsanomerepresentantelegal(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].nome_representante_legal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? qsacodigoqualificacaosocio(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].codigo_qualificacao_socio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? qsaqualificacaorepresentantelegal(dynamic response) =>
      (getJsonField(
        response,
        r'''$.qsa[:].qualificacao_representante_legal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? qsacodigoqualificacaorepresentantelegal(dynamic response) =>
      (getJsonField(
        response,
        r'''$.qsa[:].codigo_qualificacao_representante_legal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cnpj''',
      ));
  String? porte(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.porte''',
      ));
  String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  String? dddfax(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ddd_fax''',
      ));
  String? municipio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.municipio''',
      ));
  String? logradouro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  int? cnaefiscal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cnae_fiscal''',
      ));
  String? complemento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  int? codigoporte(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.codigo_porte''',
      ));
  String? razaosocial(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.razao_social''',
      ));
  String? nomefantasia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome_fantasia''',
      ));
  int? capitalsocial(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.capital_social''',
      ));
  String? dddtelefone1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ddd_telefone_1''',
      ));
  String? dddtelefone2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ddd_telefone_2''',
      ));
  bool? opcaopelomei(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opcao_pelo_mei''',
      ));
  int? codigomunicipio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.codigo_municipio''',
      ));
  List? cnaessecundarios(dynamic response) => getJsonField(
        response,
        r'''$.cnaes_secundarios''',
        true,
      ) as List?;
  int? cnaessecundarioscodigo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cnaes_secundarios[:].codigo''',
      ));
  String? naturezajuridica(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.natureza_juridica''',
      ));
  bool? opcaopelosimples(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opcao_pelo_simples''',
      ));
  int? situacaocadastral(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.situacao_cadastral''',
      ));
  String? cnaefiscaldescricao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.cnae_fiscal_descricao''',
      ));
  int? codigomunicipioibge(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.codigo_municipio_ibge''',
      ));
  String? datainicioatividade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data_inicio_atividade''',
      ));
  String? dataopcaopelosimples(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data_opcao_pelo_simples''',
      ));
  List<int>? qsacodigofaixaetaria(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].codigo_faixa_etaria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? qsaqualificacaosocio(dynamic response) => (getJsonField(
        response,
        r'''$.qsa[:].qualificacao_socio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? datasituacaocadastral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data_situacao_cadastral''',
      ));
  int? codigonaturezajuridica(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.codigo_natureza_juridica''',
      ));
  String? dataexclusaodosimples(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data_exclusao_do_simples''',
      ));
  int? motivosituacaocadastral(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.motivo_situacao_cadastral''',
      ));
  int? identificadormatrizfilial(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.identificador_matriz_filial''',
      ));
  int? qualificacaodoresponsavel(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.qualificacao_do_responsavel''',
      ));
  String? descricaosituacaocadastral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_situacao_cadastral''',
      ));
  String? descricaotipodelogradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_tipo_de_logradouro''',
      ));
  String? descricaomotivosituacaocadastral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_motivo_situacao_cadastral''',
      ));
  String? descricaoidentificadormatrizfilial(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.descricao_identificador_matriz_filial''',
      ));
  List<String>? cnaessecundariosdescricao(dynamic response) => (getJsonField(
        response,
        r'''$.cnaes_secundarios[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? dataopcaopelomei(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data_opcao_pelo_mei''',
      ));
  String? dataexclusaodomei(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data_exclusao_do_mei''',
      ));
}

/// End Brasil API Group Code

class ViaCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ViaCep',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? localidade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
  static String? regiao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.regiao''',
      ));
  static String? ibge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ibge''',
      ));
  static String? ddd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ddd''',
      ));
  static String? siafi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.siafi''',
      ));
  static String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.erro''',
      ));
  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
}

class ConsultarCPFSuperbetCall {
  static Future<ApiCallResponse> call({
    String? dataNascimento = '',
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "CPF",
  "dateOfBirth": "${escapeStringForJson(dataNascimento)}",
  "documentNumber": "${escapeStringForJson(cpf)}",
  "clientSourceType": "Desktop_new"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar CPF Superbet',
      apiUrl:
          'https://api.web.production.betler.superbet.bet.br/api/v1/getRegulatorData?clientSourceType=Desktop_new',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static String? dataname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
  static String? notice(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.notice''',
      ));
  static int? errorscode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.errors[:].code''',
      ));
  static String? field(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].field''',
      ));
  static List? errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
        true,
      ) as List?;
}

class ConsultarCPFBetQuatroCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "email@gmail.com",
  "countryId": "${escapeStringForJson(cpf)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar CPF betQuatro',
      apiUrl: 'https://bet4.bet.br/api/Autofill',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static String? datafullName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.fullName''',
      ));
  static String? databirthDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.birthDate''',
      ));
}

class ConsultarCPFWebapiDraftplazaCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nationalId": "${escapeStringForJson(cpf)}",
  "skinId": 192347
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Consultar CPF webapi draftplaza',
      apiUrl: 'https://webapi.draftplaza.com/api_v2/validateCPF',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? inputFieldsfirstname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.inputFields.firstname''',
      ));
  static String? inputFieldslastname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.inputFields.lastname''',
      ));
  static String? inputFieldsbirthDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.inputFields.birthDate''',
      ));
  static String? inputFieldsgender(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.inputFields.gender''',
      ));
  static bool? inputFieldspep(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.inputFields.pep''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
