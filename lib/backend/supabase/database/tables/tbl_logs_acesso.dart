import '../database.dart';

class TblLogsAcessoTable extends SupabaseTable<TblLogsAcessoRow> {
  @override
  String get tableName => 'tbl_logs_acesso';

  @override
  TblLogsAcessoRow createRow(Map<String, dynamic> data) =>
      TblLogsAcessoRow(data);
}

class TblLogsAcessoRow extends SupabaseDataRow {
  TblLogsAcessoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblLogsAcessoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dataRegistro => getField<DateTime>('data_registro');
  set dataRegistro(DateTime? value) =>
      setField<DateTime>('data_registro', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get deviceUid => getField<String>('device_uid');
  set deviceUid(String? value) => setField<String>('device_uid', value);

  String? get ipPublico => getField<String>('ip_publico');
  set ipPublico(String? value) => setField<String>('ip_publico', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get timezone => getField<String>('timezone');
  set timezone(String? value) => setField<String>('timezone', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get applicationVersion => getField<String>('application_version');
  set applicationVersion(String? value) =>
      setField<String>('application_version', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);

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
