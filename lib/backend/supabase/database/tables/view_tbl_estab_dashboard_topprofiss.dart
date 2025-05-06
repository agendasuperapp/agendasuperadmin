import '../database.dart';

class ViewTblEstabDashboardTopprofissTable
    extends SupabaseTable<ViewTblEstabDashboardTopprofissRow> {
  @override
  String get tableName => 'view_tbl_estab_dashboard_topprofiss';

  @override
  ViewTblEstabDashboardTopprofissRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabDashboardTopprofissRow(data);
}

class ViewTblEstabDashboardTopprofissRow extends SupabaseDataRow {
  ViewTblEstabDashboardTopprofissRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabDashboardTopprofissTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

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
