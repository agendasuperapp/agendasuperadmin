import '../database.dart';

class TblPagamentosStripeAppsTable
    extends SupabaseTable<TblPagamentosStripeAppsRow> {
  @override
  String get tableName => 'tbl_pagamentos_stripe_apps';

  @override
  TblPagamentosStripeAppsRow createRow(Map<String, dynamic> data) =>
      TblPagamentosStripeAppsRow(data);
}

class TblPagamentosStripeAppsRow extends SupabaseDataRow {
  TblPagamentosStripeAppsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPagamentosStripeAppsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  bool get renovacao => getField<bool>('renovacao')!;
  set renovacao(bool value) => setField<bool>('renovacao', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get stripeUrl => getField<String>('stripe_url');
  set stripeUrl(String? value) => setField<String>('stripe_url', value);

  String? get stripeStatusPg => getField<String>('stripe_status_pg');
  set stripeStatusPg(String? value) =>
      setField<String>('stripe_status_pg', value);

  bool get gerarCheckout => getField<bool>('gerar_checkout')!;
  set gerarCheckout(bool value) => setField<bool>('gerar_checkout', value);

  bool get assinatura => getField<bool>('assinatura')!;
  set assinatura(bool value) => setField<bool>('assinatura', value);

  int get idPlanoProduto => getField<int>('id_plano_produto')!;
  set idPlanoProduto(int value) => setField<int>('id_plano_produto', value);

  int get idPlanoBanco => getField<int>('id_plano_banco')!;
  set idPlanoBanco(int value) => setField<int>('id_plano_banco', value);

  int get idPlanoConta => getField<int>('id_plano_conta')!;
  set idPlanoConta(int value) => setField<int>('id_plano_conta', value);

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

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);

  String? get uuidPlanoApp => getField<String>('uuid_plano_app');
  set uuidPlanoApp(String? value) => setField<String>('uuid_plano_app', value);

  int get idPlanoPreco => getField<int>('id_plano_preco')!;
  set idPlanoPreco(int value) => setField<int>('id_plano_preco', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get cupomId => getField<int>('cupom_id');
  set cupomId(int? value) => setField<int>('cupom_id', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  int? get quantProfissionaisMin => getField<int>('quant_profissionais_min');
  set quantProfissionaisMin(int? value) =>
      setField<int>('quant_profissionais_min', value);

  int? get quantProfissionaisMax => getField<int>('quant_profissionais_max');
  set quantProfissionaisMax(int? value) =>
      setField<int>('quant_profissionais_max', value);

  String get periodo => getField<String>('periodo')!;
  set periodo(String value) => setField<String>('periodo', value);

  bool get updateConcluido => getField<bool>('update_concluido')!;
  set updateConcluido(bool value) => setField<bool>('update_concluido', value);

  String? get updateEvento => getField<String>('update_evento');
  set updateEvento(String? value) => setField<String>('update_evento', value);

  DateTime? get updateData => getField<DateTime>('update_data');
  set updateData(DateTime? value) => setField<DateTime>('update_data', value);

  int get updateCount => getField<int>('update_count')!;
  set updateCount(int value) => setField<int>('update_count', value);

  double? get percComissao => getField<double>('perc_comissao');
  set percComissao(double? value) => setField<double>('perc_comissao', value);
}
