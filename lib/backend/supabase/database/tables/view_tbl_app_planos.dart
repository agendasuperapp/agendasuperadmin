import '../database.dart';

class ViewTblAppPlanosTable extends SupabaseTable<ViewTblAppPlanosRow> {
  @override
  String get tableName => 'view_tbl_app_planos';

  @override
  ViewTblAppPlanosRow createRow(Map<String, dynamic> data) =>
      ViewTblAppPlanosRow(data);
}

class ViewTblAppPlanosRow extends SupabaseDataRow {
  ViewTblAppPlanosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppPlanosTable();

  String? get nomePlanoPeriodos => getField<String>('nome_plano_periodos');
  set nomePlanoPeriodos(String? value) =>
      setField<String>('nome_plano_periodos', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);

  bool? get parcelamentoSjuros => getField<bool>('parcelamento_sjuros');
  set parcelamentoSjuros(bool? value) =>
      setField<bool>('parcelamento_sjuros', value);

  int? get maxParcSjuros => getField<int>('max_parc_sjuros');
  set maxParcSjuros(int? value) => setField<int>('max_parc_sjuros', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idPlanoPeriodo => getField<int>('id_plano_periodo');
  set idPlanoPeriodo(int? value) => setField<int>('id_plano_periodo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  int? get quantProfissionaisMin => getField<int>('quant_profissionais_min');
  set quantProfissionaisMin(int? value) =>
      setField<int>('quant_profissionais_min', value);

  int? get quantProfissionaisMax => getField<int>('quant_profissionais_max');
  set quantProfissionaisMax(int? value) =>
      setField<int>('quant_profissionais_max', value);

  int? get quantAgendamentosMax => getField<int>('quant_agendamentos_max');
  set quantAgendamentosMax(int? value) =>
      setField<int>('quant_agendamentos_max', value);

  int? get idPlanoNome => getField<int>('id_plano_nome');
  set idPlanoNome(int? value) => setField<int>('id_plano_nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get situacaoPeriodo => getField<bool>('situacao_periodo');
  set situacaoPeriodo(bool? value) => setField<bool>('situacao_periodo', value);
}
