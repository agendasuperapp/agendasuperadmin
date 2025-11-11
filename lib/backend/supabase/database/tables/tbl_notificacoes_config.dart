import '../database.dart';

class TblNotificacoesConfigTable
    extends SupabaseTable<TblNotificacoesConfigRow> {
  @override
  String get tableName => 'tbl_notificacoes_config';

  @override
  TblNotificacoesConfigRow createRow(Map<String, dynamic> data) =>
      TblNotificacoesConfigRow(data);
}

class TblNotificacoesConfigRow extends SupabaseDataRow {
  TblNotificacoesConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblNotificacoesConfigTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get urlSite => getField<String>('url_site');
  set urlSite(String? value) => setField<String>('url_site', value);

  String? get appId => getField<String>('app_id');
  set appId(String? value) => setField<String>('app_id', value);

  String? get authToken => getField<String>('auth_token');
  set authToken(String? value) => setField<String>('auth_token', value);

  String? get chromeWebImage => getField<String>('chrome_web_image');
  set chromeWebImage(String? value) =>
      setField<String>('chrome_web_image', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);
}
