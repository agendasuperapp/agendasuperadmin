import '../database.dart';

class TblDevicesTable extends SupabaseTable<TblDevicesRow> {
  @override
  String get tableName => 'tbl_devices';

  @override
  TblDevicesRow createRow(Map<String, dynamic> data) => TblDevicesRow(data);
}

class TblDevicesRow extends SupabaseDataRow {
  TblDevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblDevicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get osName => getField<String>('os_name');
  set osName(String? value) => setField<String>('os_name', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  String? get deviceName => getField<String>('device_name');
  set deviceName(String? value) => setField<String>('device_name', value);

  String? get osVersion => getField<String>('os_version');
  set osVersion(String? value) => setField<String>('os_version', value);

  String? get osVersionCode => getField<String>('os_version_code');
  set osVersionCode(String? value) =>
      setField<String>('os_version_code', value);

  String? get softwareName => getField<String>('software_name');
  set softwareName(String? value) => setField<String>('software_name', value);

  String? get softwareVersion => getField<String>('software_version');
  set softwareVersion(String? value) =>
      setField<String>('software_version', value);

  String? get applicationId => getField<String>('application_Id');
  set applicationId(String? value) => setField<String>('application_Id', value);

  String? get applicationType => getField<String>('application_type');
  set applicationType(String? value) =>
      setField<String>('application_type', value);

  String? get applicationName => getField<String>('application_name');
  set applicationName(String? value) =>
      setField<String>('application_name', value);

  String? get applicationVersion => getField<String>('application_version');
  set applicationVersion(String? value) =>
      setField<String>('application_version', value);

  String? get applicationBuildCode =>
      getField<String>('application_build_code');
  set applicationBuildCode(String? value) =>
      setField<String>('application_build_code', value);

  String? get tamanhoTela => getField<String>('tamanho_tela');
  set tamanhoTela(String? value) => setField<String>('tamanho_tela', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);
}
