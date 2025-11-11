import '../database.dart';

class TblAuthMultiSessionTable extends SupabaseTable<TblAuthMultiSessionRow> {
  @override
  String get tableName => 'tbl_auth_multi_session';

  @override
  TblAuthMultiSessionRow createRow(Map<String, dynamic> data) =>
      TblAuthMultiSessionRow(data);
}

class TblAuthMultiSessionRow extends SupabaseDataRow {
  TblAuthMultiSessionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAuthMultiSessionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get lastLogin => getField<DateTime>('last_login');
  set lastLogin(DateTime? value) => setField<DateTime>('last_login', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get deviceUid => getField<String>('device_uid');
  set deviceUid(String? value) => setField<String>('device_uid', value);

  String? get accessToken => getField<String>('access_token');
  set accessToken(String? value) => setField<String>('access_token', value);

  String? get platform => getField<String>('platform');
  set platform(String? value) => setField<String>('platform', value);

  bool? get isPwa => getField<bool>('is_pwa');
  set isPwa(bool? value) => setField<bool>('is_pwa', value);

  String? get osName => getField<String>('os_name');
  set osName(String? value) => setField<String>('os_name', value);

  String? get osVersion => getField<String>('os_version');
  set osVersion(String? value) => setField<String>('os_version', value);

  String? get deviceName => getField<String>('device_name');
  set deviceName(String? value) => setField<String>('device_name', value);

  int? get screenWidth => getField<int>('screen_width');
  set screenWidth(int? value) => setField<int>('screen_width', value);

  int? get screenHeight => getField<int>('screen_height');
  set screenHeight(int? value) => setField<int>('screen_height', value);

  String? get applicationName => getField<String>('application_name');
  set applicationName(String? value) =>
      setField<String>('application_name', value);

  String? get applicationVersion => getField<String>('application_version');
  set applicationVersion(String? value) =>
      setField<String>('application_version', value);

  DateTime? get ultimaAtividade => getField<DateTime>('ultima_atividade');
  set ultimaAtividade(DateTime? value) =>
      setField<DateTime>('ultima_atividade', value);

  String? get ipPublico => getField<String>('ip_publico');
  set ipPublico(String? value) => setField<String>('ip_publico', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get timezone => getField<String>('timezone');
  set timezone(String? value) => setField<String>('timezone', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get asOrganization => getField<String>('as_organization');
  set asOrganization(String? value) =>
      setField<String>('as_organization', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get regionCode => getField<String>('region_code');
  set regionCode(String? value) => setField<String>('region_code', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get fonteGeo => getField<String>('fonte_geo');
  set fonteGeo(String? value) => setField<String>('fonte_geo', value);
}
