import '../database.dart';

class TblPagamentosStripeTable extends SupabaseTable<TblPagamentosStripeRow> {
  @override
  String get tableName => 'tbl_pagamentos_stripe';

  @override
  TblPagamentosStripeRow createRow(Map<String, dynamic> data) =>
      TblPagamentosStripeRow(data);
}

class TblPagamentosStripeRow extends SupabaseDataRow {
  TblPagamentosStripeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPagamentosStripeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get idStripe => getField<String>('id_stripe');
  set idStripe(String? value) => setField<String>('id_stripe', value);

  bool? get enabled => getField<bool>('enabled');
  set enabled(bool? value) => setField<bool>('enabled', value);

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

  String? get successUrl => getField<String>('success_url');
  set successUrl(String? value) => setField<String>('success_url', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get amountTotal => getField<double>('amount_total');
  set amountTotal(double? value) => setField<double>('amount_total', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  String? get paymentIntent => getField<String>('payment_intent');
  set paymentIntent(String? value) => setField<String>('payment_intent', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  String? get mode => getField<String>('mode');
  set mode(String? value) => setField<String>('mode', value);
}
