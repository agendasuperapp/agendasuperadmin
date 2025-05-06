import '../database.dart';

class TblDiasMesTable extends SupabaseTable<TblDiasMesRow> {
  @override
  String get tableName => 'tbl_dias_mes';

  @override
  TblDiasMesRow createRow(Map<String, dynamic> data) => TblDiasMesRow(data);
}

class TblDiasMesRow extends SupabaseDataRow {
  TblDiasMesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblDiasMesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get dia => getField<int>('dia')!;
  set dia(int value) => setField<int>('dia', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);
}
