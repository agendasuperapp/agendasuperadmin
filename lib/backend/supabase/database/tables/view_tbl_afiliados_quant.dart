import '../database.dart';

class ViewTblAfiliadosQuantTable
    extends SupabaseTable<ViewTblAfiliadosQuantRow> {
  @override
  String get tableName => 'view_tbl_afiliados_quant';

  @override
  ViewTblAfiliadosQuantRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosQuantRow(data);
}

class ViewTblAfiliadosQuantRow extends SupabaseDataRow {
  ViewTblAfiliadosQuantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosQuantTable();

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);
}
