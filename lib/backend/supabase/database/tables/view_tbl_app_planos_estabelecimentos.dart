import '../database.dart';

class ViewTblAppPlanosEstabelecimentosTable
    extends SupabaseTable<ViewTblAppPlanosEstabelecimentosRow> {
  @override
  String get tableName => 'view_tbl_app_planos_estabelecimentos';

  @override
  ViewTblAppPlanosEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      ViewTblAppPlanosEstabelecimentosRow(data);
}

class ViewTblAppPlanosEstabelecimentosRow extends SupabaseDataRow {
  ViewTblAppPlanosEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppPlanosEstabelecimentosTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idPlanoPeriodo => getField<int>('id_plano_periodo');
  set idPlanoPeriodo(int? value) => setField<int>('id_plano_periodo', value);

  int? get idPlanoNome => getField<int>('id_plano_nome');
  set idPlanoNome(int? value) => setField<int>('id_plano_nome', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

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

  int? get idPlanoEstabelecimento => getField<int>('id_plano_estabelecimento');
  set idPlanoEstabelecimento(int? value) =>
      setField<int>('id_plano_estabelecimento', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  bool? get situacaoPlano => getField<bool>('situacao_plano');
  set situacaoPlano(bool? value) => setField<bool>('situacao_plano', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  String? get cupomTipo => getField<String>('cupom_tipo');
  set cupomTipo(String? value) => setField<String>('cupom_tipo', value);

  int? get cupomTempo => getField<int>('cupom_tempo');
  set cupomTempo(int? value) => setField<int>('cupom_tempo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  int? get quantProfissionaisMinSalvo =>
      getField<int>('quant_profissionais_min_salvo');
  set quantProfissionaisMinSalvo(int? value) =>
      setField<int>('quant_profissionais_min_salvo', value);

  int? get quantProfissionaisMaxSalvo =>
      getField<int>('quant_profissionais_max_salvo');
  set quantProfissionaisMaxSalvo(int? value) =>
      setField<int>('quant_profissionais_max_salvo', value);

  int? get quantProfissionaisCad => getField<int>('quant_profissionais_cad');
  set quantProfissionaisCad(int? value) =>
      setField<int>('quant_profissionais_cad', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  bool? get renovacao => getField<bool>('renovacao');
  set renovacao(bool? value) => setField<bool>('renovacao', value);

  String? get stripeUrl => getField<String>('stripe_url');
  set stripeUrl(String? value) => setField<String>('stripe_url', value);

  String? get stripeStatusPg => getField<String>('stripe_status_pg');
  set stripeStatusPg(String? value) =>
      setField<String>('stripe_status_pg', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  double? get precoAssinatura => getField<double>('preco_assinatura');
  set precoAssinatura(double? value) =>
      setField<double>('preco_assinatura', value);

  String? get stripeStatus => getField<String>('stripe_status');
  set stripeStatus(String? value) => setField<String>('stripe_status', value);

  String? get stripeSubscriptionId =>
      getField<String>('stripe_subscription_id');
  set stripeSubscriptionId(String? value) =>
      setField<String>('stripe_subscription_id', value);

  String? get chargeId => getField<String>('charge_id');
  set chargeId(String? value) => setField<String>('charge_id', value);

  bool? get assinaturaCancSolicitado =>
      getField<bool>('assinatura_canc_solicitado');
  set assinaturaCancSolicitado(bool? value) =>
      setField<bool>('assinatura_canc_solicitado', value);

  DateTime? get assinaturaCancSolicData =>
      getField<DateTime>('assinatura_canc_solic_data');
  set assinaturaCancSolicData(DateTime? value) =>
      setField<DateTime>('assinatura_canc_solic_data', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  int? get trialPeriodDays => getField<int>('trial_period_days');
  set trialPeriodDays(int? value) => setField<int>('trial_period_days', value);

  DateTime? get trialPeriodDate => getField<DateTime>('trial_period_date');
  set trialPeriodDate(DateTime? value) =>
      setField<DateTime>('trial_period_date', value);

  bool? get trialPeriod => getField<bool>('trial_period');
  set trialPeriod(bool? value) => setField<bool>('trial_period', value);

  String? get upgradeDowngrade => getField<String>('upgrade_downgrade');
  set upgradeDowngrade(String? value) =>
      setField<String>('upgrade_downgrade', value);

  DateTime? get assinaturaInicio => getField<DateTime>('assinatura_inicio');
  set assinaturaInicio(DateTime? value) =>
      setField<DateTime>('assinatura_inicio', value);

  DateTime? get assinaturaFinal => getField<DateTime>('assinatura_final');
  set assinaturaFinal(DateTime? value) =>
      setField<DateTime>('assinatura_final', value);

  String? get stripeCustomerId => getField<String>('stripe_customer_id');
  set stripeCustomerId(String? value) =>
      setField<String>('stripe_customer_id', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  double? get percComissao => getField<double>('perc_comissao');
  set percComissao(double? value) => setField<double>('perc_comissao', value);
}
