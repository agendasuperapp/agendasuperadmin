import '../database.dart';

class ViewInternalTblPlanosContasPxvvgvevxvaTable
    extends SupabaseTable<ViewInternalTblPlanosContasPxvvgvevxvaRow> {
  @override
  String get tableName => 'view_internal_tbl_planos_contas_pxvvgvevxva';

  @override
  ViewInternalTblPlanosContasPxvvgvevxvaRow createRow(
          Map<String, dynamic> data) =>
      ViewInternalTblPlanosContasPxvvgvevxvaRow(data);
}

class ViewInternalTblPlanosContasPxvvgvevxvaRow extends SupabaseDataRow {
  ViewInternalTblPlanosContasPxvvgvevxvaRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ViewInternalTblPlanosContasPxvvgvevxvaTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idBanco => getField<int>('id_banco');
  set idBanco(int? value) => setField<int>('id_banco', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get excluida => getField<bool>('excluida');
  set excluida(bool? value) => setField<bool>('excluida', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);
}
