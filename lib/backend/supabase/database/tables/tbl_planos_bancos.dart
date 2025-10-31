import '../database.dart';

class TblPlanosBancosTable extends SupabaseTable<TblPlanosBancosRow> {
  @override
  String get tableName => 'tbl_planos_bancos';

  @override
  TblPlanosBancosRow createRow(Map<String, dynamic> data) =>
      TblPlanosBancosRow(data);
}

class TblPlanosBancosRow extends SupabaseDataRow {
  TblPlanosBancosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPlanosBancosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool get assinatura => getField<bool>('assinatura')!;
  set assinatura(bool value) => setField<bool>('assinatura', value);
}
