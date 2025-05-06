import '../database.dart';

class ViewTblAgendamentoCarrinhoNotifTable
    extends SupabaseTable<ViewTblAgendamentoCarrinhoNotifRow> {
  @override
  String get tableName => 'view_tbl_agendamento_carrinho_notif';

  @override
  ViewTblAgendamentoCarrinhoNotifRow createRow(Map<String, dynamic> data) =>
      ViewTblAgendamentoCarrinhoNotifRow(data);
}

class ViewTblAgendamentoCarrinhoNotifRow extends SupabaseDataRow {
  ViewTblAgendamentoCarrinhoNotifRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAgendamentoCarrinhoNotifTable();

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  int? get quantAgendamentos => getField<int>('quant_agendamentos');
  set quantAgendamentos(int? value) =>
      setField<int>('quant_agendamentos', value);
}
