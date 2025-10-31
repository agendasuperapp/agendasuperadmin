import '../database.dart';

class ViewTblEstabStatusAssinaturaFiltroTable
    extends SupabaseTable<ViewTblEstabStatusAssinaturaFiltroRow> {
  @override
  String get tableName => 'view_tbl_estab_status_assinatura_filtro';

  @override
  ViewTblEstabStatusAssinaturaFiltroRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabStatusAssinaturaFiltroRow(data);
}

class ViewTblEstabStatusAssinaturaFiltroRow extends SupabaseDataRow {
  ViewTblEstabStatusAssinaturaFiltroRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => ViewTblEstabStatusAssinaturaFiltroTable();

  int? get tipo => getField<int>('tipo');
  set tipo(int? value) => setField<int>('tipo', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);
}
