import '../database.dart';

class TblTesteTable extends SupabaseTable<TblTesteRow> {
  @override
  String get tableName => 'tbl_teste';

  @override
  TblTesteRow createRow(Map<String, dynamic> data) => TblTesteRow(data);
}

class TblTesteRow extends SupabaseDataRow {
  TblTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblTesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idade => getField<int>('idade');
  set idade(int? value) => setField<int>('idade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);
}
