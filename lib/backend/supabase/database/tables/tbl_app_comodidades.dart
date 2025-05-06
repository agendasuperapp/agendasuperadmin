import '../database.dart';

class TblAppComodidadesTable extends SupabaseTable<TblAppComodidadesRow> {
  @override
  String get tableName => 'tbl_app_comodidades';

  @override
  TblAppComodidadesRow createRow(Map<String, dynamic> data) =>
      TblAppComodidadesRow(data);
}

class TblAppComodidadesRow extends SupabaseDataRow {
  TblAppComodidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppComodidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get icone => getField<String>('icone');
  set icone(String? value) => setField<String>('icone', value);
}
