import '../database.dart';

class TblAfiliadosPlanoTable extends SupabaseTable<TblAfiliadosPlanoRow> {
  @override
  String get tableName => 'tbl_afiliados_plano';

  @override
  TblAfiliadosPlanoRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosPlanoRow(data);
}

class TblAfiliadosPlanoRow extends SupabaseDataRow {
  TblAfiliadosPlanoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosPlanoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get idPlanoAnterior => getField<int>('id_plano_anterior');
  set idPlanoAnterior(int? value) => setField<int>('id_plano_anterior', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get cupomIdAfiliado => getField<int>('cupom_id_afiliado');
  set cupomIdAfiliado(int? value) => setField<int>('cupom_id_afiliado', value);

  int? get cupomIdAfiliadoCupom => getField<int>('cupom_id_afiliado_cupom');
  set cupomIdAfiliadoCupom(int? value) =>
      setField<int>('cupom_id_afiliado_cupom', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  String? get cupomTipo => getField<String>('cupom_tipo');
  set cupomTipo(String? value) => setField<String>('cupom_tipo', value);

  int? get cupomTempo => getField<int>('cupom_tempo');
  set cupomTempo(int? value) => setField<int>('cupom_tempo', value);

  double? get cupomDesconto => getField<double>('cupom_desconto');
  set cupomDesconto(double? value) => setField<double>('cupom_desconto', value);

  double? get valorSemDesconto => getField<double>('valor_sem_desconto');
  set valorSemDesconto(double? value) =>
      setField<double>('valor_sem_desconto', value);

  double? get valorComDesconto => getField<double>('valor_com_desconto');
  set valorComDesconto(double? value) =>
      setField<double>('valor_com_desconto', value);

  int? get idFormaPagamento => getField<int>('id_forma_pagamento');
  set idFormaPagamento(int? value) =>
      setField<int>('id_forma_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  String? get periodoMesDia => getField<String>('periodo_mes_dia');
  set periodoMesDia(String? value) =>
      setField<String>('periodo_mes_dia', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  String? get idPagamentoBanco => getField<String>('id_pagamento_banco');
  set idPagamentoBanco(String? value) =>
      setField<String>('id_pagamento_banco', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get idAfiliado => getField<int>('id_afiliado')!;
  set idAfiliado(int value) => setField<int>('id_afiliado', value);

  bool get renovacao => getField<bool>('renovacao')!;
  set renovacao(bool value) => setField<bool>('renovacao', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get stripeUrl => getField<String>('stripe_url');
  set stripeUrl(String? value) => setField<String>('stripe_url', value);

  String? get stripeStatusPg => getField<String>('stripe_status_pg');
  set stripeStatusPg(String? value) =>
      setField<String>('stripe_status_pg', value);

  bool? get gerarCheckout => getField<bool>('gerar_checkout');
  set gerarCheckout(bool? value) => setField<bool>('gerar_checkout', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  int? get idPlanoProduto => getField<int>('id_plano_produto');
  set idPlanoProduto(int? value) => setField<int>('id_plano_produto', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);

  String? get stripeSubscriptionId =>
      getField<String>('stripe_subscription_id');
  set stripeSubscriptionId(String? value) =>
      setField<String>('stripe_subscription_id', value);

  String? get stripeCustomerId => getField<String>('stripe_customer_id');
  set stripeCustomerId(String? value) =>
      setField<String>('stripe_customer_id', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  DateTime? get dtRenovacaoAssinatura =>
      getField<DateTime>('dt_renovacao_assinatura');
  set dtRenovacaoAssinatura(DateTime? value) =>
      setField<DateTime>('dt_renovacao_assinatura', value);

  String? get stripeInvoiceId => getField<String>('stripe_invoice_id');
  set stripeInvoiceId(String? value) =>
      setField<String>('stripe_invoice_id', value);

  DateTime? get assinaturaInicio => getField<DateTime>('assinatura_inicio');
  set assinaturaInicio(DateTime? value) =>
      setField<DateTime>('assinatura_inicio', value);

  DateTime? get assinaturaFinal => getField<DateTime>('assinatura_final');
  set assinaturaFinal(DateTime? value) =>
      setField<DateTime>('assinatura_final', value);

  bool get assinaturaCancSolicitado =>
      getField<bool>('assinatura_canc_solicitado')!;
  set assinaturaCancSolicitado(bool value) =>
      setField<bool>('assinatura_canc_solicitado', value);

  DateTime? get assinaturaCancSolicData =>
      getField<DateTime>('assinatura_canc_solic_data');
  set assinaturaCancSolicData(DateTime? value) =>
      setField<DateTime>('assinatura_canc_solic_data', value);

  int get trialPeriodDays => getField<int>('trial_period_days')!;
  set trialPeriodDays(int value) => setField<int>('trial_period_days', value);

  DateTime? get trialPeriodDate => getField<DateTime>('trial_period_date');
  set trialPeriodDate(DateTime? value) =>
      setField<DateTime>('trial_period_date', value);

  String? get upgradeDowngrade => getField<String>('upgrade_downgrade');
  set upgradeDowngrade(String? value) =>
      setField<String>('upgrade_downgrade', value);

  int? get idLogPaymentMethod => getField<int>('id_log_payment_method');
  set idLogPaymentMethod(int? value) =>
      setField<int>('id_log_payment_method', value);

  bool get trialPeriod => getField<bool>('trial_period')!;
  set trialPeriod(bool value) => setField<bool>('trial_period', value);

  bool get contaTeste => getField<bool>('conta_teste')!;
  set contaTeste(bool value) => setField<bool>('conta_teste', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
