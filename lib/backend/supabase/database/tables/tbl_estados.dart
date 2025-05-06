import '../database.dart';

class TblEstadosTable extends SupabaseTable<TblEstadosRow> {
  @override
  String get tableName => 'tbl_estados';

  @override
  TblEstadosRow createRow(Map<String, dynamic> data) => TblEstadosRow(data);
}

class TblEstadosRow extends SupabaseDataRow {
  TblEstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblEstadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get sigla => getField<String>('sigla')!;
  set sigla(String value) => setField<String>('sigla', value);

  String? get regiao => getField<String>('regiao');
  set regiao(String? value) => setField<String>('regiao', value);

  String? get bandeira => getField<String>('bandeira');
  set bandeira(String? value) => setField<String>('bandeira', value);
}
