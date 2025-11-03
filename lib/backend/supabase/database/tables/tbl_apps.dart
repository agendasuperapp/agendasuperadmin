import '../database.dart';

class TblAppsTable extends SupabaseTable<TblAppsRow> {
  @override
  String get tableName => 'tbl_apps';

  @override
  TblAppsRow createRow(Map<String, dynamic> data) => TblAppsRow(data);
}

class TblAppsRow extends SupabaseDataRow {
  TblAppsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get versao => getField<String>('versao');
  set versao(String? value) => setField<String>('versao', value);

  DateTime? get dataVersao => getField<DateTime>('data_versao');
  set dataVersao(DateTime? value) => setField<DateTime>('data_versao', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  int? get idAppAfiliado => getField<int>('id_app_afiliado');
  set idAppAfiliado(int? value) => setField<int>('id_app_afiliado', value);
}
