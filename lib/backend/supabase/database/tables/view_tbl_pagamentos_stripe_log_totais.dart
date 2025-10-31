import '../database.dart';

class ViewTblPagamentosStripeLogTotaisTable
    extends SupabaseTable<ViewTblPagamentosStripeLogTotaisRow> {
  @override
  String get tableName => 'view_tbl_pagamentos_stripe_log_totais';

  @override
  ViewTblPagamentosStripeLogTotaisRow createRow(Map<String, dynamic> data) =>
      ViewTblPagamentosStripeLogTotaisRow(data);
}

class ViewTblPagamentosStripeLogTotaisRow extends SupabaseDataRow {
  ViewTblPagamentosStripeLogTotaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPagamentosStripeLogTotaisTable();

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);
}
