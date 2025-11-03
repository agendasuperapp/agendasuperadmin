import '../database.dart';

class ViewTblAfiliadoAppsTable extends SupabaseTable<ViewTblAfiliadoAppsRow> {
  @override
  String get tableName => 'view_tbl_afiliado_apps';

  @override
  ViewTblAfiliadoAppsRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadoAppsRow(data);
}

class ViewTblAfiliadoAppsRow extends SupabaseDataRow {
  ViewTblAfiliadoAppsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadoAppsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  String? get siteLandpage => getField<String>('site_landpage');
  set siteLandpage(String? value) => setField<String>('site_landpage', value);

  String? get nomeApk => getField<String>('nome_apk');
  set nomeApk(String? value) => setField<String>('nome_apk', value);

  String? get urlApk => getField<String>('url_apk');
  set urlApk(String? value) => setField<String>('url_apk', value);
}
