import '../database.dart';

class ZDeleteTblTesteTable extends SupabaseTable<ZDeleteTblTesteRow> {
  @override
  String get tableName => 'z_delete_tbl_teste';

  @override
  ZDeleteTblTesteRow createRow(Map<String, dynamic> data) =>
      ZDeleteTblTesteRow(data);
}

class ZDeleteTblTesteRow extends SupabaseDataRow {
  ZDeleteTblTesteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ZDeleteTblTesteTable();

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
