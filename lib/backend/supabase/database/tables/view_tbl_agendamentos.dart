import '../database.dart';

class ViewTblAgendamentosTable extends SupabaseTable<ViewTblAgendamentosRow> {
  @override
  String get tableName => 'view_tbl_agendamentos';

  @override
  ViewTblAgendamentosRow createRow(Map<String, dynamic> data) =>
      ViewTblAgendamentosRow(data);
}

class ViewTblAgendamentosRow extends SupabaseDataRow {
  ViewTblAgendamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAgendamentosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idServico => getField<int>('id_servico');
  set idServico(int? value) => setField<int>('id_servico', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  int? get idHorario => getField<int>('id_horario');
  set idHorario(int? value) => setField<int>('id_horario', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  bool? get confirmado => getField<bool>('confirmado');
  set confirmado(bool? value) => setField<bool>('confirmado', value);

  DateTime? get dataHoraConfirmacao =>
      getField<DateTime>('data_hora_confirmacao');
  set dataHoraConfirmacao(DateTime? value) =>
      setField<DateTime>('data_hora_confirmacao', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  int? get idCarrinho => getField<int>('id_carrinho');
  set idCarrinho(int? value) => setField<int>('id_carrinho', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get valorSobConsulta => getField<bool>('valor_sob_consulta');
  set valorSobConsulta(bool? value) =>
      setField<bool>('valor_sob_consulta', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

  DateTime? get dataCadCarrinho => getField<DateTime>('data_cad_carrinho');
  set dataCadCarrinho(DateTime? value) =>
      setField<DateTime>('data_cad_carrinho', value);

  int? get quantServicosCarrinho => getField<int>('quant_servicos_carrinho');
  set quantServicosCarrinho(int? value) =>
      setField<int>('quant_servicos_carrinho', value);

  double? get valorTotalCarrinho => getField<double>('valor_total_carrinho');
  set valorTotalCarrinho(double? value) =>
      setField<double>('valor_total_carrinho', value);

  String? get nomeServico => getField<String>('nome_servico');
  set nomeServico(String? value) => setField<String>('nome_servico', value);

  String? get nomeProfissional => getField<String>('nome_profissional');
  set nomeProfissional(String? value) =>
      setField<String>('nome_profissional', value);

  DateTime? get dataAgendamento => getField<DateTime>('data_agendamento');
  set dataAgendamento(DateTime? value) =>
      setField<DateTime>('data_agendamento', value);

  String? get horaAgendamento => getField<String>('hora_agendamento');
  set horaAgendamento(String? value) =>
      setField<String>('hora_agendamento', value);

  bool? get situacaoAgendamento => getField<bool>('situacao_agendamento');
  set situacaoAgendamento(bool? value) =>
      setField<bool>('situacao_agendamento', value);

  String? get fotoServico => getField<String>('foto_servico');
  set fotoServico(String? value) => setField<String>('foto_servico', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  int? get idStatusAgendamento => getField<int>('id_status_agendamento');
  set idStatusAgendamento(int? value) =>
      setField<int>('id_status_agendamento', value);

  String? get siglaStatus => getField<String>('sigla_status');
  set siglaStatus(String? value) => setField<String>('sigla_status', value);

  String? get nomeSecundario => getField<String>('nome_secundario');
  set nomeSecundario(String? value) =>
      setField<String>('nome_secundario', value);

  String? get corStatus => getField<String>('cor_status');
  set corStatus(String? value) => setField<String>('cor_status', value);
}
