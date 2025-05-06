import '../database.dart';

class ViewTblAfiliadosEstabelecimentosQuantTable
    extends SupabaseTable<ViewTblAfiliadosEstabelecimentosQuantRow> {
  @override
  String get tableName => 'view_tbl_afiliados_estabelecimentos_quant';

  @override
  ViewTblAfiliadosEstabelecimentosQuantRow createRow(
          Map<String, dynamic> data) =>
      ViewTblAfiliadosEstabelecimentosQuantRow(data);
}

class ViewTblAfiliadosEstabelecimentosQuantRow extends SupabaseDataRow {
  ViewTblAfiliadosEstabelecimentosQuantRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosEstabelecimentosQuantTable();

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);
}
