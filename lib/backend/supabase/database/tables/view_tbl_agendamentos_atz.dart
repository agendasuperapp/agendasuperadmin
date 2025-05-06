import '../database.dart';

class ViewTblAgendamentosAtzTable
    extends SupabaseTable<ViewTblAgendamentosAtzRow> {
  @override
  String get tableName => 'view_tbl_agendamentos_atz';

  @override
  ViewTblAgendamentosAtzRow createRow(Map<String, dynamic> data) =>
      ViewTblAgendamentosAtzRow(data);
}

class ViewTblAgendamentosAtzRow extends SupabaseDataRow {
  ViewTblAgendamentosAtzRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAgendamentosAtzTable();

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);
}
