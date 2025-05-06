import '../database.dart';

class ViewTblAfiliadosComissaoTotaisTable
    extends SupabaseTable<ViewTblAfiliadosComissaoTotaisRow> {
  @override
  String get tableName => 'view_tbl_afiliados_comissao_totais';

  @override
  ViewTblAfiliadosComissaoTotaisRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosComissaoTotaisRow(data);
}

class ViewTblAfiliadosComissaoTotaisRow extends SupabaseDataRow {
  ViewTblAfiliadosComissaoTotaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosComissaoTotaisTable();

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  int? get quantPagRecebidos => getField<int>('quant_pag_recebidos');
  set quantPagRecebidos(int? value) =>
      setField<int>('quant_pag_recebidos', value);

  double? get valorPagoCliente => getField<double>('valor_pago_cliente');
  set valorPagoCliente(double? value) =>
      setField<double>('valor_pago_cliente', value);

  int? get percComissao => getField<int>('perc_comissao');
  set percComissao(int? value) => setField<int>('perc_comissao', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);
}
