import '../database.dart';

class ViewTblPagamentosStripeEventosTable
    extends SupabaseTable<ViewTblPagamentosStripeEventosRow> {
  @override
  String get tableName => 'view_tbl_pagamentos_stripe_eventos';

  @override
  ViewTblPagamentosStripeEventosRow createRow(Map<String, dynamic> data) =>
      ViewTblPagamentosStripeEventosRow(data);
}

class ViewTblPagamentosStripeEventosRow extends SupabaseDataRow {
  ViewTblPagamentosStripeEventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPagamentosStripeEventosTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get nomeEventoPt => getField<String>('nome_evento_pt');
  set nomeEventoPt(String? value) => setField<String>('nome_evento_pt', value);
}
