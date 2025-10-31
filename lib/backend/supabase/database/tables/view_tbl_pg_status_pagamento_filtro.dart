import '../database.dart';

class ViewTblPgStatusPagamentoFiltroTable
    extends SupabaseTable<ViewTblPgStatusPagamentoFiltroRow> {
  @override
  String get tableName => 'view_tbl_pg_status_pagamento_filtro';

  @override
  ViewTblPgStatusPagamentoFiltroRow createRow(Map<String, dynamic> data) =>
      ViewTblPgStatusPagamentoFiltroRow(data);
}

class ViewTblPgStatusPagamentoFiltroRow extends SupabaseDataRow {
  ViewTblPgStatusPagamentoFiltroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPgStatusPagamentoFiltroTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  String? get nomeStatusPt => getField<String>('nome_status_pt');
  set nomeStatusPt(String? value) => setField<String>('nome_status_pt', value);
}
