import '../database.dart';

class ViewInternalTblPlanosBancosXvvgeza23bvzTable
    extends SupabaseTable<ViewInternalTblPlanosBancosXvvgeza23bvzRow> {
  @override
  String get tableName => 'view_internal_tbl_planos_bancos_xvvgeza23bvz';

  @override
  ViewInternalTblPlanosBancosXvvgeza23bvzRow createRow(
          Map<String, dynamic> data) =>
      ViewInternalTblPlanosBancosXvvgeza23bvzRow(data);
}

class ViewInternalTblPlanosBancosXvvgeza23bvzRow extends SupabaseDataRow {
  ViewInternalTblPlanosBancosXvvgeza23bvzRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ViewInternalTblPlanosBancosXvvgeza23bvzTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);
}
