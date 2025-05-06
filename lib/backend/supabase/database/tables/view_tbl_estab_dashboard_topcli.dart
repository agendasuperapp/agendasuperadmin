import '../database.dart';

class ViewTblEstabDashboardTopcliTable
    extends SupabaseTable<ViewTblEstabDashboardTopcliRow> {
  @override
  String get tableName => 'view_tbl_estab_dashboard_topcli';

  @override
  ViewTblEstabDashboardTopcliRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabDashboardTopcliRow(data);
}

class ViewTblEstabDashboardTopcliRow extends SupabaseDataRow {
  ViewTblEstabDashboardTopcliRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabDashboardTopcliTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

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
