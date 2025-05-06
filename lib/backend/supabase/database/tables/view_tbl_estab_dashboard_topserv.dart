import '../database.dart';

class ViewTblEstabDashboardTopservTable
    extends SupabaseTable<ViewTblEstabDashboardTopservRow> {
  @override
  String get tableName => 'view_tbl_estab_dashboard_topserv';

  @override
  ViewTblEstabDashboardTopservRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabDashboardTopservRow(data);
}

class ViewTblEstabDashboardTopservRow extends SupabaseDataRow {
  ViewTblEstabDashboardTopservRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabDashboardTopservTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idServico => getField<int>('id_servico');
  set idServico(int? value) => setField<int>('id_servico', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  int? get quantAgendamentos => getField<int>('quant_agendamentos');
  set quantAgendamentos(int? value) =>
      setField<int>('quant_agendamentos', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
