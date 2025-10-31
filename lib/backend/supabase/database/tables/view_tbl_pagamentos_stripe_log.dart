import '../database.dart';

class ViewTblPagamentosStripeLogTable
    extends SupabaseTable<ViewTblPagamentosStripeLogRow> {
  @override
  String get tableName => 'view_tbl_pagamentos_stripe_log';

  @override
  ViewTblPagamentosStripeLogRow createRow(Map<String, dynamic> data) =>
      ViewTblPagamentosStripeLogRow(data);
}

class ViewTblPagamentosStripeLogRow extends SupabaseDataRow {
  ViewTblPagamentosStripeLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPagamentosStripeLogTable();

  String? get idEstabelecimento => getField<String>('id_estabelecimento');
  set idEstabelecimento(String? value) =>
      setField<String>('id_estabelecimento', value);

  String? get nomeEstabelecimento => getField<String>('nome_estabelecimento');
  set nomeEstabelecimento(String? value) =>
      setField<String>('nome_estabelecimento', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  String? get nomeEventoPt => getField<String>('nome_evento_pt');
  set nomeEventoPt(String? value) => setField<String>('nome_evento_pt', value);

  DateTime? get dataCadastroSp => getField<DateTime>('data_cadastro_sp');
  set dataCadastroSp(DateTime? value) =>
      setField<DateTime>('data_cadastro_sp', value);

  String? get nomeConta => getField<String>('nome_conta');
  set nomeConta(String? value) => setField<String>('nome_conta', value);

  String? get nomeBanco => getField<String>('nome_banco');
  set nomeBanco(String? value) => setField<String>('nome_banco', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get statusEvento => getField<String>('status_evento');
  set statusEvento(String? value) => setField<String>('status_evento', value);

  bool? get sucesso => getField<bool>('sucesso');
  set sucesso(bool? value) => setField<bool>('sucesso', value);

  String? get messageErro => getField<String>('message_erro');
  set messageErro(String? value) => setField<String>('message_erro', value);

  String? get subscriptionId => getField<String>('subscription_id');
  set subscriptionId(String? value) =>
      setField<String>('subscription_id', value);

  DateTime? get assinaturaInicio => getField<DateTime>('assinatura_inicio');
  set assinaturaInicio(DateTime? value) =>
      setField<DateTime>('assinatura_inicio', value);

  DateTime? get assinaturaFinal => getField<DateTime>('assinatura_final');
  set assinaturaFinal(DateTime? value) =>
      setField<DateTime>('assinatura_final', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  String? get idStripe => getField<String>('id_stripe');
  set idStripe(String? value) => setField<String>('id_stripe', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get amountTotal => getField<double>('amount_total');
  set amountTotal(double? value) => setField<double>('amount_total', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  String? get chargeId => getField<String>('charge_id');
  set chargeId(String? value) => setField<String>('charge_id', value);

  bool? get cancelAtPeriodEnd => getField<bool>('cancel_at_period_end');
  set cancelAtPeriodEnd(bool? value) =>
      setField<bool>('cancel_at_period_end', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  DateTime? get trialStart => getField<DateTime>('trial_start');
  set trialStart(DateTime? value) => setField<DateTime>('trial_start', value);

  DateTime? get trialEnd => getField<DateTime>('trial_end');
  set trialEnd(DateTime? value) => setField<DateTime>('trial_end', value);

  String? get displayBrand => getField<String>('display_brand');
  set displayBrand(String? value) => setField<String>('display_brand', value);

  String? get expMonth => getField<String>('exp_month');
  set expMonth(String? value) => setField<String>('exp_month', value);

  String? get expYear => getField<String>('exp_year');
  set expYear(String? value) => setField<String>('exp_year', value);

  String? get funding => getField<String>('funding');
  set funding(String? value) => setField<String>('funding', value);

  String? get last4 => getField<String>('last4');
  set last4(String? value) => setField<String>('last4', value);

  String? get billingReason => getField<String>('billing_reason');
  set billingReason(String? value) => setField<String>('billing_reason', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get feedback => getField<String>('feedback');
  set feedback(String? value) => setField<String>('feedback', value);

  String? get feedbackPt => getField<String>('feedback_pt');
  set feedbackPt(String? value) => setField<String>('feedback_pt', value);

  int? get trialPeriodDays => getField<int>('trial_period_days');
  set trialPeriodDays(int? value) => setField<int>('trial_period_days', value);

  String? get assinaturaCancSolicitado =>
      getField<String>('assinatura_canc_solicitado');
  set assinaturaCancSolicitado(String? value) =>
      setField<String>('assinatura_canc_solicitado', value);

  String? get periodoTeste => getField<String>('periodo_teste');
  set periodoTeste(String? value) => setField<String>('periodo_teste', value);

  String? get semEstabelecimento => getField<String>('sem_estabelecimento');
  set semEstabelecimento(String? value) =>
      setField<String>('sem_estabelecimento', value);

  String? get erro => getField<String>('erro');
  set erro(String? value) => setField<String>('erro', value);
}
