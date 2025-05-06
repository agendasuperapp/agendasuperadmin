import '../database.dart';

class ViewTblAfiliadoDashboardTable
    extends SupabaseTable<ViewTblAfiliadoDashboardRow> {
  @override
  String get tableName => 'view_tbl_afiliado_dashboard';

  @override
  ViewTblAfiliadoDashboardRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadoDashboardRow(data);
}

class ViewTblAfiliadoDashboardRow extends SupabaseDataRow {
  ViewTblAfiliadoDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadoDashboardTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get comissaoDia => getField<double>('comissao_dia');
  set comissaoDia(double? value) => setField<double>('comissao_dia', value);

  double? get comissao7dias => getField<double>('comissao_7dias');
  set comissao7dias(double? value) => setField<double>('comissao_7dias', value);

  double? get comissaoMes => getField<double>('comissao_mes');
  set comissaoMes(double? value) => setField<double>('comissao_mes', value);

  double? get comissaoDisponivel => getField<double>('comissao_disponivel');
  set comissaoDisponivel(double? value) =>
      setField<double>('comissao_disponivel', value);

  double? get comissaoPendente => getField<double>('comissao_pendente');
  set comissaoPendente(double? value) =>
      setField<double>('comissao_pendente', value);

  int? get quantIndicacoes => getField<int>('quant_indicacoes');
  set quantIndicacoes(int? value) => setField<int>('quant_indicacoes', value);

  int? get quantSubAfiliados => getField<int>('quant_sub_afiliados');
  set quantSubAfiliados(int? value) =>
      setField<int>('quant_sub_afiliados', value);

  int? get quantIndicacoesAtivos => getField<int>('quant_indicacoes_ativos');
  set quantIndicacoesAtivos(int? value) =>
      setField<int>('quant_indicacoes_ativos', value);

  int? get quantSubAfiliadosAtivos =>
      getField<int>('quant_sub_afiliados_ativos');
  set quantSubAfiliadosAtivos(int? value) =>
      setField<int>('quant_sub_afiliados_ativos', value);

  double? get valorMeta => getField<double>('valor_meta');
  set valorMeta(double? value) => setField<double>('valor_meta', value);
}
