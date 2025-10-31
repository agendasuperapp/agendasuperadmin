import '../database.dart';

class ViewInternalTblPagamentosStripeLogPxafxveaTable
    extends SupabaseTable<ViewInternalTblPagamentosStripeLogPxafxveaRow> {
  @override
  String get tableName => 'view_internal_tbl_pagamentos_stripe_log_pxafxvea';

  @override
  ViewInternalTblPagamentosStripeLogPxafxveaRow createRow(
          Map<String, dynamic> data) =>
      ViewInternalTblPagamentosStripeLogPxafxveaRow(data);
}

class ViewInternalTblPagamentosStripeLogPxafxveaRow extends SupabaseDataRow {
  ViewInternalTblPagamentosStripeLogPxafxveaRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ViewInternalTblPagamentosStripeLogPxafxveaTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get subscriptionId => getField<String>('subscription_id');
  set subscriptionId(String? value) =>
      setField<String>('subscription_id', value);
}
