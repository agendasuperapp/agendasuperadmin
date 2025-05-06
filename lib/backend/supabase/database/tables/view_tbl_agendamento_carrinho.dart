import '../database.dart';

class ViewTblAgendamentoCarrinhoTable
    extends SupabaseTable<ViewTblAgendamentoCarrinhoRow> {
  @override
  String get tableName => 'view_tbl_agendamento_carrinho';

  @override
  ViewTblAgendamentoCarrinhoRow createRow(Map<String, dynamic> data) =>
      ViewTblAgendamentoCarrinhoRow(data);
}

class ViewTblAgendamentoCarrinhoRow extends SupabaseDataRow {
  ViewTblAgendamentoCarrinhoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAgendamentoCarrinhoTable();

  DateTime? get dataCadastroDate => getField<DateTime>('data_cadastro_date');
  set dataCadastroDate(DateTime? value) =>
      setField<DateTime>('data_cadastro_date', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);

  double? get valorEntrada => getField<double>('valor_entrada');
  set valorEntrada(double? value) => setField<double>('valor_entrada', value);

  bool? get entradaConfirmada => getField<bool>('entrada_confirmada');
  set entradaConfirmada(bool? value) =>
      setField<bool>('entrada_confirmada', value);

  int? get quantServicos => getField<int>('quant_servicos');
  set quantServicos(int? value) => setField<int>('quant_servicos', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  bool? get confirmadoCliente => getField<bool>('confirmado_cliente');
  set confirmadoCliente(bool? value) =>
      setField<bool>('confirmado_cliente', value);

  DateTime? get dataHoraConfirmacao =>
      getField<DateTime>('data_hora_confirmacao');
  set dataHoraConfirmacao(DateTime? value) =>
      setField<DateTime>('data_hora_confirmacao', value);

  int? get idStatusAgendamento => getField<int>('id_status_agendamento');
  set idStatusAgendamento(int? value) =>
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

  bool? get finalizadoCliente => getField<bool>('finalizado_cliente');
  set finalizadoCliente(bool? value) =>
      setField<bool>('finalizado_cliente', value);

  bool? get finalizadoEstab => getField<bool>('finalizado_estab');
  set finalizadoEstab(bool? value) => setField<bool>('finalizado_estab', value);

  DateTime? get dataHoraFinalizacao =>
      getField<DateTime>('data_hora_finalizacao');
  set dataHoraFinalizacao(DateTime? value) =>
      setField<DateTime>('data_hora_finalizacao', value);

  String? get userIdCliente => getField<String>('user_id_cliente');
  set userIdCliente(String? value) =>
      setField<String>('user_id_cliente', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  String? get siglaStatus => getField<String>('sigla_status');
  set siglaStatus(String? value) => setField<String>('sigla_status', value);

  String? get corStatus => getField<String>('cor_status');
  set corStatus(String? value) => setField<String>('cor_status', value);

  bool? get aceitarEdicao => getField<bool>('aceitar_edicao');
  set aceitarEdicao(bool? value) => setField<bool>('aceitar_edicao', value);

  bool? get aceitarCancelamento => getField<bool>('aceitar_cancelamento');
  set aceitarCancelamento(bool? value) =>
      setField<bool>('aceitar_cancelamento', value);

  String? get nomeSecundarioStatus =>
      getField<String>('nome_secundario_status');
  set nomeSecundarioStatus(String? value) =>
      setField<String>('nome_secundario_status', value);

  int? get idCarrinho => getField<int>('id_carrinho');
  set idCarrinho(int? value) => setField<int>('id_carrinho', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get nomeEstabelecimento => getField<String>('nome_estabelecimento');
  set nomeEstabelecimento(String? value) =>
      setField<String>('nome_estabelecimento', value);

  String? get fotoPerfilEstabelecimento =>
      getField<String>('foto_perfil_estabelecimento');
  set fotoPerfilEstabelecimento(String? value) =>
      setField<String>('foto_perfil_estabelecimento', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);
}
