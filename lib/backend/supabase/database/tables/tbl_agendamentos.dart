import '../database.dart';

class TblAgendamentosTable extends SupabaseTable<TblAgendamentosRow> {
  @override
  String get tableName => 'tbl_agendamentos';

  @override
  TblAgendamentosRow createRow(Map<String, dynamic> data) =>
      TblAgendamentosRow(data);
}

class TblAgendamentosRow extends SupabaseDataRow {
  TblAgendamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAgendamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idServico => getField<int>('id_servico')!;
  set idServico(int value) => setField<int>('id_servico', value);

  int get idProfissional => getField<int>('id_profissional')!;
  set idProfissional(int value) => setField<int>('id_profissional', value);

  int? get idHorario => getField<int>('id_horario');
  set idHorario(int? value) => setField<int>('id_horario', value);

  int get idCliente => getField<int>('id_cliente')!;
  set idCliente(int value) => setField<int>('id_cliente', value);

  bool? get confirmado => getField<bool>('confirmado');
  set confirmado(bool? value) => setField<bool>('confirmado', value);

  DateTime? get dataHoraConfirmacao =>
      getField<DateTime>('data_hora_confirmacao');
  set dataHoraConfirmacao(DateTime? value) =>
      setField<DateTime>('data_hora_confirmacao', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  int get idCarrinho => getField<int>('id_carrinho')!;
  set idCarrinho(int value) => setField<int>('id_carrinho', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  bool get valorSobConsulta => getField<bool>('valor_sob_consulta')!;
  set valorSobConsulta(bool value) =>
      setField<bool>('valor_sob_consulta', value);

  String get userIdCliente => getField<String>('user_id_cliente')!;
  set userIdCliente(String value) => setField<String>('user_id_cliente', value);

  String get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento')!;
  set userIdEstabelecimento(String value) =>
      setField<String>('user_id_estabelecimento', value);
}
