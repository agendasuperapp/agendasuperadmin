import '../database.dart';

class TblDiasSemanaTable extends SupabaseTable<TblDiasSemanaRow> {
  @override
  String get tableName => 'tbl_dias_semana';

  @override
  TblDiasSemanaRow createRow(Map<String, dynamic> data) =>
      TblDiasSemanaRow(data);
}

class TblDiasSemanaRow extends SupabaseDataRow {
  TblDiasSemanaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblDiasSemanaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get dia => getField<String>('dia')!;
  set dia(String value) => setField<String>('dia', value);

  String get sigla => getField<String>('sigla')!;
  set sigla(String value) => setField<String>('sigla', value);
}
