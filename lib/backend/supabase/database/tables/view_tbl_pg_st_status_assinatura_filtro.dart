import '../database.dart';

class ViewTblPgStStatusAssinaturaFiltroTable
    extends SupabaseTable<ViewTblPgStStatusAssinaturaFiltroRow> {
  @override
  String get tableName => 'view_tbl_pg_st_status_assinatura_filtro';

  @override
  ViewTblPgStStatusAssinaturaFiltroRow createRow(Map<String, dynamic> data) =>
      ViewTblPgStStatusAssinaturaFiltroRow(data);
}

class ViewTblPgStStatusAssinaturaFiltroRow extends SupabaseDataRow {
  ViewTblPgStStatusAssinaturaFiltroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPgStStatusAssinaturaFiltroTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  String? get nomeStatusPt => getField<String>('nome_status_pt');
  set nomeStatusPt(String? value) => setField<String>('nome_status_pt', value);
}
