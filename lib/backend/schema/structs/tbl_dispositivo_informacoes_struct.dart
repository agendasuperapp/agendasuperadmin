// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblDispositivoInformacoesStruct extends BaseStruct {
  TblDispositivoInformacoesStruct({
    String? osName,
    String? deviceId,
    String? deviceName,
    String? osVersion,
    String? osVersionCode,
    String? softwareName,
    String? softwareVersion,
    String? applicationId,
    String? applicationType,
    String? applicationName,
    String? applicationVersion,
    String? applicationBuildCode,
    String? tamanhoTela,
  })  : _osName = osName,
        _deviceId = deviceId,
        _deviceName = deviceName,
        _osVersion = osVersion,
        _osVersionCode = osVersionCode,
        _softwareName = softwareName,
        _softwareVersion = softwareVersion,
        _applicationId = applicationId,
        _applicationType = applicationType,
        _applicationName = applicationName,
        _applicationVersion = applicationVersion,
        _applicationBuildCode = applicationBuildCode,
        _tamanhoTela = tamanhoTela;

  // "osName" field.
  String? _osName;
  String get osName => _osName ?? '';
  set osName(String? val) => _osName = val;

  bool hasOsName() => _osName != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "deviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "osVersion" field.
  String? _osVersion;
  String get osVersion => _osVersion ?? '';
  set osVersion(String? val) => _osVersion = val;

  bool hasOsVersion() => _osVersion != null;

  // "osVersionCode" field.
  String? _osVersionCode;
  String get osVersionCode => _osVersionCode ?? '';
  set osVersionCode(String? val) => _osVersionCode = val;

  bool hasOsVersionCode() => _osVersionCode != null;

  // "softwareName" field.
  String? _softwareName;
  String get softwareName => _softwareName ?? '';
  set softwareName(String? val) => _softwareName = val;

  bool hasSoftwareName() => _softwareName != null;

  // "softwareVersion" field.
  String? _softwareVersion;
  String get softwareVersion => _softwareVersion ?? '';
  set softwareVersion(String? val) => _softwareVersion = val;

  bool hasSoftwareVersion() => _softwareVersion != null;

  // "applicationId" field.
  String? _applicationId;
  String get applicationId => _applicationId ?? '';
  set applicationId(String? val) => _applicationId = val;

  bool hasApplicationId() => _applicationId != null;

  // "applicationType" field.
  String? _applicationType;
  String get applicationType => _applicationType ?? '';
  set applicationType(String? val) => _applicationType = val;

  bool hasApplicationType() => _applicationType != null;

  // "applicationName" field.
  String? _applicationName;
  String get applicationName => _applicationName ?? '';
  set applicationName(String? val) => _applicationName = val;

  bool hasApplicationName() => _applicationName != null;

  // "applicationVersion" field.
  String? _applicationVersion;
  String get applicationVersion => _applicationVersion ?? '';
  set applicationVersion(String? val) => _applicationVersion = val;

  bool hasApplicationVersion() => _applicationVersion != null;

  // "applicationBuildCode" field.
  String? _applicationBuildCode;
  String get applicationBuildCode => _applicationBuildCode ?? '';
  set applicationBuildCode(String? val) => _applicationBuildCode = val;

  bool hasApplicationBuildCode() => _applicationBuildCode != null;

  // "tamanho_tela" field.
  String? _tamanhoTela;
  String get tamanhoTela => _tamanhoTela ?? '';
  set tamanhoTela(String? val) => _tamanhoTela = val;

  bool hasTamanhoTela() => _tamanhoTela != null;

  static TblDispositivoInformacoesStruct fromMap(Map<String, dynamic> data) =>
      TblDispositivoInformacoesStruct(
        osName: data['osName'] as String?,
        deviceId: data['deviceId'] as String?,
        deviceName: data['deviceName'] as String?,
        osVersion: data['osVersion'] as String?,
        osVersionCode: data['osVersionCode'] as String?,
        softwareName: data['softwareName'] as String?,
        softwareVersion: data['softwareVersion'] as String?,
        applicationId: data['applicationId'] as String?,
        applicationType: data['applicationType'] as String?,
        applicationName: data['applicationName'] as String?,
        applicationVersion: data['applicationVersion'] as String?,
        applicationBuildCode: data['applicationBuildCode'] as String?,
        tamanhoTela: data['tamanho_tela'] as String?,
      );

  static TblDispositivoInformacoesStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TblDispositivoInformacoesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'osName': _osName,
        'deviceId': _deviceId,
        'deviceName': _deviceName,
        'osVersion': _osVersion,
        'osVersionCode': _osVersionCode,
        'softwareName': _softwareName,
        'softwareVersion': _softwareVersion,
        'applicationId': _applicationId,
        'applicationType': _applicationType,
        'applicationName': _applicationName,
        'applicationVersion': _applicationVersion,
        'applicationBuildCode': _applicationBuildCode,
        'tamanho_tela': _tamanhoTela,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'osName': serializeParam(
          _osName,
          ParamType.String,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'osVersion': serializeParam(
          _osVersion,
          ParamType.String,
        ),
        'osVersionCode': serializeParam(
          _osVersionCode,
          ParamType.String,
        ),
        'softwareName': serializeParam(
          _softwareName,
          ParamType.String,
        ),
        'softwareVersion': serializeParam(
          _softwareVersion,
          ParamType.String,
        ),
        'applicationId': serializeParam(
          _applicationId,
          ParamType.String,
        ),
        'applicationType': serializeParam(
          _applicationType,
          ParamType.String,
        ),
        'applicationName': serializeParam(
          _applicationName,
          ParamType.String,
        ),
        'applicationVersion': serializeParam(
          _applicationVersion,
          ParamType.String,
        ),
        'applicationBuildCode': serializeParam(
          _applicationBuildCode,
          ParamType.String,
        ),
        'tamanho_tela': serializeParam(
          _tamanhoTela,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblDispositivoInformacoesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblDispositivoInformacoesStruct(
        osName: deserializeParam(
          data['osName'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['deviceName'],
          ParamType.String,
          false,
        ),
        osVersion: deserializeParam(
          data['osVersion'],
          ParamType.String,
          false,
        ),
        osVersionCode: deserializeParam(
          data['osVersionCode'],
          ParamType.String,
          false,
        ),
        softwareName: deserializeParam(
          data['softwareName'],
          ParamType.String,
          false,
        ),
        softwareVersion: deserializeParam(
          data['softwareVersion'],
          ParamType.String,
          false,
        ),
        applicationId: deserializeParam(
          data['applicationId'],
          ParamType.String,
          false,
        ),
        applicationType: deserializeParam(
          data['applicationType'],
          ParamType.String,
          false,
        ),
        applicationName: deserializeParam(
          data['applicationName'],
          ParamType.String,
          false,
        ),
        applicationVersion: deserializeParam(
          data['applicationVersion'],
          ParamType.String,
          false,
        ),
        applicationBuildCode: deserializeParam(
          data['applicationBuildCode'],
          ParamType.String,
          false,
        ),
        tamanhoTela: deserializeParam(
          data['tamanho_tela'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblDispositivoInformacoesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblDispositivoInformacoesStruct &&
        osName == other.osName &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        osVersion == other.osVersion &&
        osVersionCode == other.osVersionCode &&
        softwareName == other.softwareName &&
        softwareVersion == other.softwareVersion &&
        applicationId == other.applicationId &&
        applicationType == other.applicationType &&
        applicationName == other.applicationName &&
        applicationVersion == other.applicationVersion &&
        applicationBuildCode == other.applicationBuildCode &&
        tamanhoTela == other.tamanhoTela;
  }

  @override
  int get hashCode => const ListEquality().hash([
        osName,
        deviceId,
        deviceName,
        osVersion,
        osVersionCode,
        softwareName,
        softwareVersion,
        applicationId,
        applicationType,
        applicationName,
        applicationVersion,
        applicationBuildCode,
        tamanhoTela
      ]);
}

TblDispositivoInformacoesStruct createTblDispositivoInformacoesStruct({
  String? osName,
  String? deviceId,
  String? deviceName,
  String? osVersion,
  String? osVersionCode,
  String? softwareName,
  String? softwareVersion,
  String? applicationId,
  String? applicationType,
  String? applicationName,
  String? applicationVersion,
  String? applicationBuildCode,
  String? tamanhoTela,
}) =>
    TblDispositivoInformacoesStruct(
      osName: osName,
      deviceId: deviceId,
      deviceName: deviceName,
      osVersion: osVersion,
      osVersionCode: osVersionCode,
      softwareName: softwareName,
      softwareVersion: softwareVersion,
      applicationId: applicationId,
      applicationType: applicationType,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationBuildCode: applicationBuildCode,
      tamanhoTela: tamanhoTela,
    );
