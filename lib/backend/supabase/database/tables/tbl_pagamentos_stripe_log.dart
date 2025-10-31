import '../database.dart';

class TblPagamentosStripeLogTable
    extends SupabaseTable<TblPagamentosStripeLogRow> {
  @override
  String get tableName => 'tbl_pagamentos_stripe_log';

  @override
  TblPagamentosStripeLogRow createRow(Map<String, dynamic> data) =>
      TblPagamentosStripeLogRow(data);
}

class TblPagamentosStripeLogRow extends SupabaseDataRow {
  TblPagamentosStripeLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPagamentosStripeLogTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get eventoId => getField<String>('evento_id');
  set eventoId(String? value) => setField<String>('evento_id', value);

  bool? get signingSecretValido => getField<bool>('signing_secret_valido');
  set signingSecretValido(bool? value) =>
      setField<bool>('signing_secret_valido', value);

  String? get statusEvento => getField<String>('status_evento');
  set statusEvento(String? value) => setField<String>('status_evento', value);

  bool? get sucesso => getField<bool>('sucesso');
  set sucesso(bool? value) => setField<bool>('sucesso', value);

  String? get messageErro => getField<String>('message_erro');
  set messageErro(String? value) => setField<String>('message_erro', value);

  String? get subscriptionId => getField<String>('subscription_id');
  set subscriptionId(String? value) =>
      setField<String>('subscription_id', value);

  String? get priceId => getField<String>('price_id');
  set priceId(String? value) => setField<String>('price_id', value);

  String? get prodId => getField<String>('prod_id');
  set prodId(String? value) => setField<String>('prod_id', value);

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

  double? get amountSubtotal => getField<double>('amount_subtotal');
  set amountSubtotal(double? value) =>
      setField<double>('amount_subtotal', value);

  String? get paymentMethodTypes => getField<String>('payment_method_types');
  set paymentMethodTypes(String? value) =>
      setField<String>('payment_method_types', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get amountTotal => getField<double>('amount_total');
  set amountTotal(double? value) => setField<double>('amount_total', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  String? get mode => getField<String>('mode');
  set mode(String? value) => setField<String>('mode', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

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

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

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

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get statusEventoRec => getField<String>('status_evento_rec');
  set statusEventoRec(String? value) =>
      setField<String>('status_evento_rec', value);

  String? get billingReason => getField<String>('billing_reason');
  set billingReason(String? value) => setField<String>('billing_reason', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get feedback => getField<String>('feedback');
  set feedback(String? value) => setField<String>('feedback', value);

  String? get feedbackPt => getField<String>('feedback_pt');
  set feedbackPt(String? value) => setField<String>('feedback_pt', value);

  int? get idPgStripeApp => getField<int>('id_pg_stripe_app');
  set idPgStripeApp(int? value) => setField<int>('id_pg_stripe_app', value);

  String? get uuidPgStripeApp => getField<String>('uuid_pg_stripe_app');
  set uuidPgStripeApp(String? value) =>
      setField<String>('uuid_pg_stripe_app', value);
}
