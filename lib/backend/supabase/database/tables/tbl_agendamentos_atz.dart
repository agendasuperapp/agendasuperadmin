import '../database.dart';

class TblAgendamentosAtzTable extends SupabaseTable<TblAgendamentosAtzRow> {
  @override
  String get tableName => 'tbl_agendamentos_atz';

  @override
  TblAgendamentosAtzRow createRow(Map<String, dynamic> data) =>
      TblAgendamentosAtzRow(data);
}

class TblAgendamentosAtzRow extends SupabaseDataRow {
  TblAgendamentosAtzRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAgendamentosAtzTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  int? get idAgendamentoCarrinho => getField<int>('id_agendamento_carrinho');
  set idAgendamentoCarrinho(int? value) =>
      setField<int>('id_agendamento_carrinho', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

  int? get idStatus => getField<int>('id_status');
  set idStatus(int? value) => setField<int>('id_status', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);
}
