import '../database.dart';

class TblAgendamentoCarrinhoTable
    extends SupabaseTable<TblAgendamentoCarrinhoRow> {
  @override
  String get tableName => 'tbl_agendamento_carrinho';

  @override
  TblAgendamentoCarrinhoRow createRow(Map<String, dynamic> data) =>
      TblAgendamentoCarrinhoRow(data);
}

class TblAgendamentoCarrinhoRow extends SupabaseDataRow {
  TblAgendamentoCarrinhoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAgendamentoCarrinhoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idCliente => getField<int>('id_cliente')!;
  set idCliente(int value) => setField<int>('id_cliente', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);

  double? get valorEntrada => getField<double>('valor_entrada');
  set valorEntrada(double? value) => setField<double>('valor_entrada', value);

  bool? get entradaConfirmada => getField<bool>('entrada_confirmada');
  set entradaConfirmada(bool? value) =>
      setField<bool>('entrada_confirmada', value);

  int? get quantServicos => getField<int>('quant_servicos');
  set quantServicos(int? value) => setField<int>('quant_servicos', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  bool? get confirmadoCliente => getField<bool>('confirmado_cliente');
  set confirmadoCliente(bool? value) =>
      setField<bool>('confirmado_cliente', value);

  DateTime? get dataHoraConfirmacao =>
      getField<DateTime>('data_hora_confirmacao');
  set dataHoraConfirmacao(DateTime? value) =>
      setField<DateTime>('data_hora_confirmacao', value);

  String? get codigoIdentifPix => getField<String>('codigo_identif_pix');
  set codigoIdentifPix(String? value) =>
      setField<String>('codigo_identif_pix', value);

  int get idStatusAgendamento => getField<int>('id_status_agendamento')!;
  set idStatusAgendamento(int value) =>
      setField<int>('id_status_agendamento', value);

  bool? get aprovadoEstabelecimento =>
      getField<bool>('aprovado_estabelecimento');
  set aprovadoEstabelecimento(bool? value) =>
      setField<bool>('aprovado_estabelecimento', value);

  DateTime? get dataHoraAprovacao => getField<DateTime>('data_hora_aprovacao');
  set dataHoraAprovacao(DateTime? value) =>
      setField<DateTime>('data_hora_aprovacao', value);

  bool? get canceladoCliente => getField<bool>('cancelado_cliente');
  set canceladoCliente(bool? value) =>
      setField<bool>('cancelado_cliente', value);

  bool? get canceladoEstabelecimento =>
      getField<bool>('cancelado_estabelecimento');
  set canceladoEstabelecimento(bool? value) =>
      setField<bool>('cancelado_estabelecimento', value);

  bool? get confirmadoClienteEstab =>
      getField<bool>('confirmado_cliente_estab');
  set confirmadoClienteEstab(bool? value) =>
      setField<bool>('confirmado_cliente_estab', value);

  DateTime? get dataHoraCancelamento =>
      getField<DateTime>('data_hora_cancelamento');
  set dataHoraCancelamento(DateTime? value) =>
      setField<DateTime>('data_hora_cancelamento', value);

  bool? get finalizadoEstab => getField<bool>('finalizado_estab');
  set finalizadoEstab(bool? value) => setField<bool>('finalizado_estab', value);

  bool? get finalizadoCliente => getField<bool>('finalizado_cliente');
  set finalizadoCliente(bool? value) =>
      setField<bool>('finalizado_cliente', value);

  DateTime? get dataHoraFinalizacao =>
      getField<DateTime>('data_hora_finalizacao');
  set dataHoraFinalizacao(DateTime? value) =>
      setField<DateTime>('data_hora_finalizacao', value);

  String get userIdCliente => getField<String>('user_id_cliente')!;
  set userIdCliente(String value) => setField<String>('user_id_cliente', value);

  String get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento')!;
  set userIdEstabelecimento(String value) =>
      setField<String>('user_id_estabelecimento', value);

  String get versao => getField<String>('versao')!;
  set versao(String value) => setField<String>('versao', value);

  int? get idDevice => getField<int>('id_device');
  set idDevice(int? value) => setField<int>('id_device', value);

  String? get textoNotificacao => getField<String>('texto_notificacao');
  set textoNotificacao(String? value) =>
      setField<String>('texto_notificacao', value);
}
