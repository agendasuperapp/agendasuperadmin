// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblWhatsAppStruct extends BaseStruct {
  TblWhatsAppStruct({
    String? instanceName,
    String? instanceId,
    String? integration,
    String? hash,
    String? pairingCode,
    String? qrcode,
    String? base64,
    int? count,
    String? connectionStatus,
    String? ownerJid,
    String? numberWhatsApp,
    String? profilePicUrl,
    String? profileName,
    String? apikey,
  })  : _instanceName = instanceName,
        _instanceId = instanceId,
        _integration = integration,
        _hash = hash,
        _pairingCode = pairingCode,
        _qrcode = qrcode,
        _base64 = base64,
        _count = count,
        _connectionStatus = connectionStatus,
        _ownerJid = ownerJid,
        _numberWhatsApp = numberWhatsApp,
        _profilePicUrl = profilePicUrl,
        _profileName = profileName,
        _apikey = apikey;

  // "instanceName" field.
  String? _instanceName;
  String get instanceName => _instanceName ?? '';
  set instanceName(String? val) => _instanceName = val;

  bool hasInstanceName() => _instanceName != null;

  // "instanceId" field.
  String? _instanceId;
  String get instanceId => _instanceId ?? '';
  set instanceId(String? val) => _instanceId = val;

  bool hasInstanceId() => _instanceId != null;

  // "integration" field.
  String? _integration;
  String get integration => _integration ?? '';
  set integration(String? val) => _integration = val;

  bool hasIntegration() => _integration != null;

  // "hash" field.
  String? _hash;
  String get hash => _hash ?? '';
  set hash(String? val) => _hash = val;

  bool hasHash() => _hash != null;

  // "pairingCode" field.
  String? _pairingCode;
  String get pairingCode => _pairingCode ?? '';
  set pairingCode(String? val) => _pairingCode = val;

  bool hasPairingCode() => _pairingCode != null;

  // "qrcode" field.
  String? _qrcode;
  String get qrcode => _qrcode ?? '';
  set qrcode(String? val) => _qrcode = val;

  bool hasQrcode() => _qrcode != null;

  // "base64" field.
  String? _base64;
  String get base64 => _base64 ?? '';
  set base64(String? val) => _base64 = val;

  bool hasBase64() => _base64 != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "connectionStatus" field.
  String? _connectionStatus;
  String get connectionStatus => _connectionStatus ?? '';
  set connectionStatus(String? val) => _connectionStatus = val;

  bool hasConnectionStatus() => _connectionStatus != null;

  // "ownerJid" field.
  String? _ownerJid;
  String get ownerJid => _ownerJid ?? '';
  set ownerJid(String? val) => _ownerJid = val;

  bool hasOwnerJid() => _ownerJid != null;

  // "numberWhatsApp" field.
  String? _numberWhatsApp;
  String get numberWhatsApp => _numberWhatsApp ?? '';
  set numberWhatsApp(String? val) => _numberWhatsApp = val;

  bool hasNumberWhatsApp() => _numberWhatsApp != null;

  // "profilePicUrl" field.
  String? _profilePicUrl;
  String get profilePicUrl => _profilePicUrl ?? '';
  set profilePicUrl(String? val) => _profilePicUrl = val;

  bool hasProfilePicUrl() => _profilePicUrl != null;

  // "profileName" field.
  String? _profileName;
  String get profileName => _profileName ?? '';
  set profileName(String? val) => _profileName = val;

  bool hasProfileName() => _profileName != null;

  // "apikey" field.
  String? _apikey;
  String get apikey => _apikey ?? '';
  set apikey(String? val) => _apikey = val;

  bool hasApikey() => _apikey != null;

  static TblWhatsAppStruct fromMap(Map<String, dynamic> data) =>
      TblWhatsAppStruct(
        instanceName: data['instanceName'] as String?,
        instanceId: data['instanceId'] as String?,
        integration: data['integration'] as String?,
        hash: data['hash'] as String?,
        pairingCode: data['pairingCode'] as String?,
        qrcode: data['qrcode'] as String?,
        base64: data['base64'] as String?,
        count: castToType<int>(data['count']),
        connectionStatus: data['connectionStatus'] as String?,
        ownerJid: data['ownerJid'] as String?,
        numberWhatsApp: data['numberWhatsApp'] as String?,
        profilePicUrl: data['profilePicUrl'] as String?,
        profileName: data['profileName'] as String?,
        apikey: data['apikey'] as String?,
      );

  static TblWhatsAppStruct? maybeFromMap(dynamic data) => data is Map
      ? TblWhatsAppStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'instanceName': _instanceName,
        'instanceId': _instanceId,
        'integration': _integration,
        'hash': _hash,
        'pairingCode': _pairingCode,
        'qrcode': _qrcode,
        'base64': _base64,
        'count': _count,
        'connectionStatus': _connectionStatus,
        'ownerJid': _ownerJid,
        'numberWhatsApp': _numberWhatsApp,
        'profilePicUrl': _profilePicUrl,
        'profileName': _profileName,
        'apikey': _apikey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'instanceName': serializeParam(
          _instanceName,
          ParamType.String,
        ),
        'instanceId': serializeParam(
          _instanceId,
          ParamType.String,
        ),
        'integration': serializeParam(
          _integration,
          ParamType.String,
        ),
        'hash': serializeParam(
          _hash,
          ParamType.String,
        ),
        'pairingCode': serializeParam(
          _pairingCode,
          ParamType.String,
        ),
        'qrcode': serializeParam(
          _qrcode,
          ParamType.String,
        ),
        'base64': serializeParam(
          _base64,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'connectionStatus': serializeParam(
          _connectionStatus,
          ParamType.String,
        ),
        'ownerJid': serializeParam(
          _ownerJid,
          ParamType.String,
        ),
        'numberWhatsApp': serializeParam(
          _numberWhatsApp,
          ParamType.String,
        ),
        'profilePicUrl': serializeParam(
          _profilePicUrl,
          ParamType.String,
        ),
        'profileName': serializeParam(
          _profileName,
          ParamType.String,
        ),
        'apikey': serializeParam(
          _apikey,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblWhatsAppStruct fromSerializableMap(Map<String, dynamic> data) =>
      TblWhatsAppStruct(
        instanceName: deserializeParam(
          data['instanceName'],
          ParamType.String,
          false,
        ),
        instanceId: deserializeParam(
          data['instanceId'],
          ParamType.String,
          false,
        ),
        integration: deserializeParam(
          data['integration'],
          ParamType.String,
          false,
        ),
        hash: deserializeParam(
          data['hash'],
          ParamType.String,
          false,
        ),
        pairingCode: deserializeParam(
          data['pairingCode'],
          ParamType.String,
          false,
        ),
        qrcode: deserializeParam(
          data['qrcode'],
          ParamType.String,
          false,
        ),
        base64: deserializeParam(
          data['base64'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        connectionStatus: deserializeParam(
          data['connectionStatus'],
          ParamType.String,
          false,
        ),
        ownerJid: deserializeParam(
          data['ownerJid'],
          ParamType.String,
          false,
        ),
        numberWhatsApp: deserializeParam(
          data['numberWhatsApp'],
          ParamType.String,
          false,
        ),
        profilePicUrl: deserializeParam(
          data['profilePicUrl'],
          ParamType.String,
          false,
        ),
        profileName: deserializeParam(
          data['profileName'],
          ParamType.String,
          false,
        ),
        apikey: deserializeParam(
          data['apikey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblWhatsAppStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblWhatsAppStruct &&
        instanceName == other.instanceName &&
        instanceId == other.instanceId &&
        integration == other.integration &&
        hash == other.hash &&
        pairingCode == other.pairingCode &&
        qrcode == other.qrcode &&
        base64 == other.base64 &&
        count == other.count &&
        connectionStatus == other.connectionStatus &&
        ownerJid == other.ownerJid &&
        numberWhatsApp == other.numberWhatsApp &&
        profilePicUrl == other.profilePicUrl &&
        profileName == other.profileName &&
        apikey == other.apikey;
  }

  @override
  int get hashCode => const ListEquality().hash([
        instanceName,
        instanceId,
        integration,
        hash,
        pairingCode,
        qrcode,
        base64,
        count,
        connectionStatus,
        ownerJid,
        numberWhatsApp,
        profilePicUrl,
        profileName,
        apikey
      ]);
}

TblWhatsAppStruct createTblWhatsAppStruct({
  String? instanceName,
  String? instanceId,
  String? integration,
  String? hash,
  String? pairingCode,
  String? qrcode,
  String? base64,
  int? count,
  String? connectionStatus,
  String? ownerJid,
  String? numberWhatsApp,
  String? profilePicUrl,
  String? profileName,
  String? apikey,
}) =>
    TblWhatsAppStruct(
      instanceName: instanceName,
      instanceId: instanceId,
      integration: integration,
      hash: hash,
      pairingCode: pairingCode,
      qrcode: qrcode,
      base64: base64,
      count: count,
      connectionStatus: connectionStatus,
      ownerJid: ownerJid,
      numberWhatsApp: numberWhatsApp,
      profilePicUrl: profilePicUrl,
      profileName: profileName,
      apikey: apikey,
    );
