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

  double? get precoAssinatura => getField<double>('preco_assinatura');
  set precoAssinatura(double? value) =>
      setField<double>('preco_assinatura', value);

  int? get percDescontoAss => getField<int>('perc_desconto_ass');
  set percDescontoAss(int? value) => setField<int>('perc_desconto_ass', value);

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

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  int? get idCupomPadrao => getField<int>('id_cupom_padrao');
  set idCupomPadrao(int? value) => setField<int>('id_cupom_padrao', value);

  String? get obsPlano => getField<String>('obs_plano');
  set obsPlano(String? value) => setField<String>('obs_plano', value);

  String? get obsDesconto => getField<String>('obs_desconto');
  set obsDesconto(String? value) => setField<String>('obs_desconto', value);

  double? get precoAnterior => getField<double>('preco_anterior');
  set precoAnterior(double? value) => setField<double>('preco_anterior', value);

  List<String> get detalhes => getListField<String>('detalhes');
  set detalhes(List<String>? value) => setListField<String>('detalhes', value);

  String? get nomeCupomPadrao => getField<String>('nome_cupom_padrao');
  set nomeCupomPadrao(String? value) =>
      setField<String>('nome_cupom_padrao', value);

  String? get descricaoCupom => getField<String>('descricao_cupom');
  set descricaoCupom(String? value) =>
      setField<String>('descricao_cupom', value);

  String? get obsCupom => getField<String>('obs_cupom');
  set obsCupom(String? value) => setField<String>('obs_cupom', value);

  int? get tempoTrial => getField<int>('tempo_trial');
  set tempoTrial(int? value) => setField<int>('tempo_trial', value);

  double? get percComissao => getField<double>('perc_comissao');
  set percComissao(double? value) => setField<double>('perc_comissao', value);
}
