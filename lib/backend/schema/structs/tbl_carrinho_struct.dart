// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblCarrinhoStruct extends BaseStruct {
  TblCarrinhoStruct({
    int? id,
    DateTime? dataCadastro,
    int? idCarrinho,
    int? idServico,
    String? nomeItem,
    String? descricaoItem,
    String? fotoItem,
    double? valorItem,
    int? tempoEstimadoServico,
    int? quant,
    int? idProfissional,
    String? nomeProfissional,
    String? fotoProfissional,
    int? idHorario,
    int? idCliente,
    bool? confirmado,
    DateTime? dataHoraConfirmacao,
    String? observacao,
    DateTime? dataAgendamento,
    String? horaAgendamento,
    bool? precisaAtualizar,
    String? mensagemErro,
    DateTime? dataUltimaAtualizacao,
    int? indexAgendamentoEdit,
    bool? cadastrando,
    int? iDHorarioEditando,
    String? navegarParaPag,
    String? userIdEstabelecimento,
    String? userIdCliente,
  })  : _id = id,
        _dataCadastro = dataCadastro,
        _idCarrinho = idCarrinho,
        _idServico = idServico,
        _nomeItem = nomeItem,
        _descricaoItem = descricaoItem,
        _fotoItem = fotoItem,
        _valorItem = valorItem,
        _tempoEstimadoServico = tempoEstimadoServico,
        _quant = quant,
        _idProfissional = idProfissional,
        _nomeProfissional = nomeProfissional,
        _fotoProfissional = fotoProfissional,
        _idHorario = idHorario,
        _idCliente = idCliente,
        _confirmado = confirmado,
        _dataHoraConfirmacao = dataHoraConfirmacao,
        _observacao = observacao,
        _dataAgendamento = dataAgendamento,
        _horaAgendamento = horaAgendamento,
        _precisaAtualizar = precisaAtualizar,
        _mensagemErro = mensagemErro,
        _dataUltimaAtualizacao = dataUltimaAtualizacao,
        _indexAgendamentoEdit = indexAgendamentoEdit,
        _cadastrando = cadastrando,
        _iDHorarioEditando = iDHorarioEditando,
        _navegarParaPag = navegarParaPag,
        _userIdEstabelecimento = userIdEstabelecimento,
        _userIdCliente = userIdCliente;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "data_cadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  set dataCadastro(DateTime? val) => _dataCadastro = val;

  bool hasDataCadastro() => _dataCadastro != null;

  // "id_carrinho" field.
  int? _idCarrinho;
  int get idCarrinho => _idCarrinho ?? 0;
  set idCarrinho(int? val) => _idCarrinho = val;

  void incrementIdCarrinho(int amount) => idCarrinho = idCarrinho + amount;

  bool hasIdCarrinho() => _idCarrinho != null;

  // "id_servico" field.
  int? _idServico;
  int get idServico => _idServico ?? 0;
  set idServico(int? val) => _idServico = val;

  void incrementIdServico(int amount) => idServico = idServico + amount;

  bool hasIdServico() => _idServico != null;

  // "nome_item" field.
  String? _nomeItem;
  String get nomeItem => _nomeItem ?? '';
  set nomeItem(String? val) => _nomeItem = val;

  bool hasNomeItem() => _nomeItem != null;

  // "descricao_item" field.
  String? _descricaoItem;
  String get descricaoItem => _descricaoItem ?? '';
  set descricaoItem(String? val) => _descricaoItem = val;

  bool hasDescricaoItem() => _descricaoItem != null;

  // "foto_item" field.
  String? _fotoItem;
  String get fotoItem => _fotoItem ?? '';
  set fotoItem(String? val) => _fotoItem = val;

  bool hasFotoItem() => _fotoItem != null;

  // "valor_item" field.
  double? _valorItem;
  double get valorItem => _valorItem ?? 0.0;
  set valorItem(double? val) => _valorItem = val;

  void incrementValorItem(double amount) => valorItem = valorItem + amount;

  bool hasValorItem() => _valorItem != null;

  // "tempo_estimado_servico" field.
  int? _tempoEstimadoServico;
  int get tempoEstimadoServico => _tempoEstimadoServico ?? 0;
  set tempoEstimadoServico(int? val) => _tempoEstimadoServico = val;

  void incrementTempoEstimadoServico(int amount) =>
      tempoEstimadoServico = tempoEstimadoServico + amount;

  bool hasTempoEstimadoServico() => _tempoEstimadoServico != null;

  // "quant" field.
  int? _quant;
  int get quant => _quant ?? 0;
  set quant(int? val) => _quant = val;

  void incrementQuant(int amount) => quant = quant + amount;

  bool hasQuant() => _quant != null;

  // "id_profissional" field.
  int? _idProfissional;
  int get idProfissional => _idProfissional ?? 0;
  set idProfissional(int? val) => _idProfissional = val;

  void incrementIdProfissional(int amount) =>
      idProfissional = idProfissional + amount;

  bool hasIdProfissional() => _idProfissional != null;

  // "nome_profissional" field.
  String? _nomeProfissional;
  String get nomeProfissional => _nomeProfissional ?? '';
  set nomeProfissional(String? val) => _nomeProfissional = val;

  bool hasNomeProfissional() => _nomeProfissional != null;

  // "foto_profissional" field.
  String? _fotoProfissional;
  String get fotoProfissional => _fotoProfissional ?? '';
  set fotoProfissional(String? val) => _fotoProfissional = val;

  bool hasFotoProfissional() => _fotoProfissional != null;

  // "id_horario" field.
  int? _idHorario;
  int get idHorario => _idHorario ?? 0;
  set idHorario(int? val) => _idHorario = val;

  void incrementIdHorario(int amount) => idHorario = idHorario + amount;

  bool hasIdHorario() => _idHorario != null;

  // "id_cliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  set idCliente(int? val) => _idCliente = val;

  void incrementIdCliente(int amount) => idCliente = idCliente + amount;

  bool hasIdCliente() => _idCliente != null;

  // "confirmado" field.
  bool? _confirmado;
  bool get confirmado => _confirmado ?? false;
  set confirmado(bool? val) => _confirmado = val;

  bool hasConfirmado() => _confirmado != null;

  // "data_hora_confirmacao" field.
  DateTime? _dataHoraConfirmacao;
  DateTime? get dataHoraConfirmacao => _dataHoraConfirmacao;
  set dataHoraConfirmacao(DateTime? val) => _dataHoraConfirmacao = val;

  bool hasDataHoraConfirmacao() => _dataHoraConfirmacao != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;

  bool hasObservacao() => _observacao != null;

  // "data_agendamento" field.
  DateTime? _dataAgendamento;
  DateTime? get dataAgendamento => _dataAgendamento;
  set dataAgendamento(DateTime? val) => _dataAgendamento = val;

  bool hasDataAgendamento() => _dataAgendamento != null;

  // "hora_agendamento" field.
  String? _horaAgendamento;
  String get horaAgendamento => _horaAgendamento ?? '';
  set horaAgendamento(String? val) => _horaAgendamento = val;

  bool hasHoraAgendamento() => _horaAgendamento != null;

  // "precisa_atualizar" field.
  bool? _precisaAtualizar;
  bool get precisaAtualizar => _precisaAtualizar ?? false;
  set precisaAtualizar(bool? val) => _precisaAtualizar = val;

  bool hasPrecisaAtualizar() => _precisaAtualizar != null;

  // "mensagem_erro" field.
  String? _mensagemErro;
  String get mensagemErro => _mensagemErro ?? '';
  set mensagemErro(String? val) => _mensagemErro = val;

  bool hasMensagemErro() => _mensagemErro != null;

  // "data_ultima_atualizacao" field.
  DateTime? _dataUltimaAtualizacao;
  DateTime? get dataUltimaAtualizacao => _dataUltimaAtualizacao;
  set dataUltimaAtualizacao(DateTime? val) => _dataUltimaAtualizacao = val;

  bool hasDataUltimaAtualizacao() => _dataUltimaAtualizacao != null;

  // "IndexAgendamentoEdit" field.
  int? _indexAgendamentoEdit;
  int get indexAgendamentoEdit => _indexAgendamentoEdit ?? 0;
  set indexAgendamentoEdit(int? val) => _indexAgendamentoEdit = val;

  void incrementIndexAgendamentoEdit(int amount) =>
      indexAgendamentoEdit = indexAgendamentoEdit + amount;

  bool hasIndexAgendamentoEdit() => _indexAgendamentoEdit != null;

  // "cadastrando" field.
  bool? _cadastrando;
  bool get cadastrando => _cadastrando ?? false;
  set cadastrando(bool? val) => _cadastrando = val;

  bool hasCadastrando() => _cadastrando != null;

  // "IDHorarioEditando" field.
  int? _iDHorarioEditando;
  int get iDHorarioEditando => _iDHorarioEditando ?? 0;
  set iDHorarioEditando(int? val) => _iDHorarioEditando = val;

  void incrementIDHorarioEditando(int amount) =>
      iDHorarioEditando = iDHorarioEditando + amount;

  bool hasIDHorarioEditando() => _iDHorarioEditando != null;

  // "navegarParaPag" field.
  String? _navegarParaPag;
  String get navegarParaPag => _navegarParaPag ?? '';
  set navegarParaPag(String? val) => _navegarParaPag = val;

  bool hasNavegarParaPag() => _navegarParaPag != null;

  // "user_id_estabelecimento" field.
  String? _userIdEstabelecimento;
  String get userIdEstabelecimento => _userIdEstabelecimento ?? '';
  set userIdEstabelecimento(String? val) => _userIdEstabelecimento = val;

  bool hasUserIdEstabelecimento() => _userIdEstabelecimento != null;

  // "user_id_cliente" field.
  String? _userIdCliente;
  String get userIdCliente => _userIdCliente ?? '';
  set userIdCliente(String? val) => _userIdCliente = val;

  bool hasUserIdCliente() => _userIdCliente != null;

  static TblCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      TblCarrinhoStruct(
        id: castToType<int>(data['id']),
        dataCadastro: data['data_cadastro'] as DateTime?,
        idCarrinho: castToType<int>(data['id_carrinho']),
        idServico: castToType<int>(data['id_servico']),
        nomeItem: data['nome_item'] as String?,
        descricaoItem: data['descricao_item'] as String?,
        fotoItem: data['foto_item'] as String?,
        valorItem: castToType<double>(data['valor_item']),
        tempoEstimadoServico: castToType<int>(data['tempo_estimado_servico']),
        quant: castToType<int>(data['quant']),
        idProfissional: castToType<int>(data['id_profissional']),
        nomeProfissional: data['nome_profissional'] as String?,
        fotoProfissional: data['foto_profissional'] as String?,
        idHorario: castToType<int>(data['id_horario']),
        idCliente: castToType<int>(data['id_cliente']),
        confirmado: data['confirmado'] as bool?,
        dataHoraConfirmacao: data['data_hora_confirmacao'] as DateTime?,
        observacao: data['observacao'] as String?,
        dataAgendamento: data['data_agendamento'] as DateTime?,
        horaAgendamento: data['hora_agendamento'] as String?,
        precisaAtualizar: data['precisa_atualizar'] as bool?,
        mensagemErro: data['mensagem_erro'] as String?,
        dataUltimaAtualizacao: data['data_ultima_atualizacao'] as DateTime?,
        indexAgendamentoEdit: castToType<int>(data['IndexAgendamentoEdit']),
        cadastrando: data['cadastrando'] as bool?,
        iDHorarioEditando: castToType<int>(data['IDHorarioEditando']),
        navegarParaPag: data['navegarParaPag'] as String?,
        userIdEstabelecimento: data['user_id_estabelecimento'] as String?,
        userIdCliente: data['user_id_cliente'] as String?,
      );

  static TblCarrinhoStruct? maybeFromMap(dynamic data) => data is Map
      ? TblCarrinhoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'data_cadastro': _dataCadastro,
        'id_carrinho': _idCarrinho,
        'id_servico': _idServico,
        'nome_item': _nomeItem,
        'descricao_item': _descricaoItem,
        'foto_item': _fotoItem,
        'valor_item': _valorItem,
        'tempo_estimado_servico': _tempoEstimadoServico,
        'quant': _quant,
        'id_profissional': _idProfissional,
        'nome_profissional': _nomeProfissional,
        'foto_profissional': _fotoProfissional,
        'id_horario': _idHorario,
        'id_cliente': _idCliente,
        'confirmado': _confirmado,
        'data_hora_confirmacao': _dataHoraConfirmacao,
        'observacao': _observacao,
        'data_agendamento': _dataAgendamento,
        'hora_agendamento': _horaAgendamento,
        'precisa_atualizar': _precisaAtualizar,
        'mensagem_erro': _mensagemErro,
        'data_ultima_atualizacao': _dataUltimaAtualizacao,
        'IndexAgendamentoEdit': _indexAgendamentoEdit,
        'cadastrando': _cadastrando,
        'IDHorarioEditando': _iDHorarioEditando,
        'navegarParaPag': _navegarParaPag,
        'user_id_estabelecimento': _userIdEstabelecimento,
        'user_id_cliente': _userIdCliente,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'data_cadastro': serializeParam(
          _dataCadastro,
          ParamType.DateTime,
        ),
        'id_carrinho': serializeParam(
          _idCarrinho,
          ParamType.int,
        ),
        'id_servico': serializeParam(
          _idServico,
          ParamType.int,
        ),
        'nome_item': serializeParam(
          _nomeItem,
          ParamType.String,
        ),
        'descricao_item': serializeParam(
          _descricaoItem,
          ParamType.String,
        ),
        'foto_item': serializeParam(
          _fotoItem,
          ParamType.String,
        ),
        'valor_item': serializeParam(
          _valorItem,
          ParamType.double,
        ),
        'tempo_estimado_servico': serializeParam(
          _tempoEstimadoServico,
          ParamType.int,
        ),
        'quant': serializeParam(
          _quant,
          ParamType.int,
        ),
        'id_profissional': serializeParam(
          _idProfissional,
          ParamType.int,
        ),
        'nome_profissional': serializeParam(
          _nomeProfissional,
          ParamType.String,
        ),
        'foto_profissional': serializeParam(
          _fotoProfissional,
          ParamType.String,
        ),
        'id_horario': serializeParam(
          _idHorario,
          ParamType.int,
        ),
        'id_cliente': serializeParam(
          _idCliente,
          ParamType.int,
        ),
        'confirmado': serializeParam(
          _confirmado,
          ParamType.bool,
        ),
        'data_hora_confirmacao': serializeParam(
          _dataHoraConfirmacao,
          ParamType.DateTime,
        ),
        'observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
        'data_agendamento': serializeParam(
          _dataAgendamento,
          ParamType.DateTime,
        ),
        'hora_agendamento': serializeParam(
          _horaAgendamento,
          ParamType.String,
        ),
        'precisa_atualizar': serializeParam(
          _precisaAtualizar,
          ParamType.bool,
        ),
        'mensagem_erro': serializeParam(
          _mensagemErro,
          ParamType.String,
        ),
        'data_ultima_atualizacao': serializeParam(
          _dataUltimaAtualizacao,
          ParamType.DateTime,
        ),
        'IndexAgendamentoEdit': serializeParam(
          _indexAgendamentoEdit,
          ParamType.int,
        ),
        'cadastrando': serializeParam(
          _cadastrando,
          ParamType.bool,
        ),
        'IDHorarioEditando': serializeParam(
          _iDHorarioEditando,
          ParamType.int,
        ),
        'navegarParaPag': serializeParam(
          _navegarParaPag,
          ParamType.String,
        ),
        'user_id_estabelecimento': serializeParam(
          _userIdEstabelecimento,
          ParamType.String,
        ),
        'user_id_cliente': serializeParam(
          _userIdCliente,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblCarrinhoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TblCarrinhoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dataCadastro: deserializeParam(
          data['data_cadastro'],
          ParamType.DateTime,
          false,
        ),
        idCarrinho: deserializeParam(
          data['id_carrinho'],
          ParamType.int,
          false,
        ),
        idServico: deserializeParam(
          data['id_servico'],
          ParamType.int,
          false,
        ),
        nomeItem: deserializeParam(
          data['nome_item'],
          ParamType.String,
          false,
        ),
        descricaoItem: deserializeParam(
          data['descricao_item'],
          ParamType.String,
          false,
        ),
        fotoItem: deserializeParam(
          data['foto_item'],
          ParamType.String,
          false,
        ),
        valorItem: deserializeParam(
          data['valor_item'],
          ParamType.double,
          false,
        ),
        tempoEstimadoServico: deserializeParam(
          data['tempo_estimado_servico'],
          ParamType.int,
          false,
        ),
        quant: deserializeParam(
          data['quant'],
          ParamType.int,
          false,
        ),
        idProfissional: deserializeParam(
          data['id_profissional'],
          ParamType.int,
          false,
        ),
        nomeProfissional: deserializeParam(
          data['nome_profissional'],
          ParamType.String,
          false,
        ),
        fotoProfissional: deserializeParam(
          data['foto_profissional'],
          ParamType.String,
          false,
        ),
        idHorario: deserializeParam(
          data['id_horario'],
          ParamType.int,
          false,
        ),
        idCliente: deserializeParam(
          data['id_cliente'],
          ParamType.int,
          false,
        ),
        confirmado: deserializeParam(
          data['confirmado'],
          ParamType.bool,
          false,
        ),
        dataHoraConfirmacao: deserializeParam(
          data['data_hora_confirmacao'],
          ParamType.DateTime,
          false,
        ),
        observacao: deserializeParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
        dataAgendamento: deserializeParam(
          data['data_agendamento'],
          ParamType.DateTime,
          false,
        ),
        horaAgendamento: deserializeParam(
          data['hora_agendamento'],
          ParamType.String,
          false,
        ),
        precisaAtualizar: deserializeParam(
          data['precisa_atualizar'],
          ParamType.bool,
          false,
        ),
        mensagemErro: deserializeParam(
          data['mensagem_erro'],
          ParamType.String,
          false,
        ),
        dataUltimaAtualizacao: deserializeParam(
          data['data_ultima_atualizacao'],
          ParamType.DateTime,
          false,
        ),
        indexAgendamentoEdit: deserializeParam(
          data['IndexAgendamentoEdit'],
          ParamType.int,
          false,
        ),
        cadastrando: deserializeParam(
          data['cadastrando'],
          ParamType.bool,
          false,
        ),
        iDHorarioEditando: deserializeParam(
          data['IDHorarioEditando'],
          ParamType.int,
          false,
        ),
        navegarParaPag: deserializeParam(
          data['navegarParaPag'],
          ParamType.String,
          false,
        ),
        userIdEstabelecimento: deserializeParam(
          data['user_id_estabelecimento'],
          ParamType.String,
          false,
        ),
        userIdCliente: deserializeParam(
          data['user_id_cliente'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblCarrinhoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblCarrinhoStruct &&
        id == other.id &&
        dataCadastro == other.dataCadastro &&
        idCarrinho == other.idCarrinho &&
        idServico == other.idServico &&
        nomeItem == other.nomeItem &&
        descricaoItem == other.descricaoItem &&
        fotoItem == other.fotoItem &&
        valorItem == other.valorItem &&
        tempoEstimadoServico == other.tempoEstimadoServico &&
        quant == other.quant &&
        idProfissional == other.idProfissional &&
        nomeProfissional == other.nomeProfissional &&
        fotoProfissional == other.fotoProfissional &&
        idHorario == other.idHorario &&
        idCliente == other.idCliente &&
        confirmado == other.confirmado &&
        dataHoraConfirmacao == other.dataHoraConfirmacao &&
        observacao == other.observacao &&
        dataAgendamento == other.dataAgendamento &&
        horaAgendamento == other.horaAgendamento &&
        precisaAtualizar == other.precisaAtualizar &&
        mensagemErro == other.mensagemErro &&
        dataUltimaAtualizacao == other.dataUltimaAtualizacao &&
        indexAgendamentoEdit == other.indexAgendamentoEdit &&
        cadastrando == other.cadastrando &&
        iDHorarioEditando == other.iDHorarioEditando &&
        navegarParaPag == other.navegarParaPag &&
        userIdEstabelecimento == other.userIdEstabelecimento &&
        userIdCliente == other.userIdCliente;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dataCadastro,
        idCarrinho,
        idServico,
        nomeItem,
        descricaoItem,
        fotoItem,
        valorItem,
        tempoEstimadoServico,
        quant,
        idProfissional,
        nomeProfissional,
        fotoProfissional,
        idHorario,
        idCliente,
        confirmado,
        dataHoraConfirmacao,
        observacao,
        dataAgendamento,
        horaAgendamento,
        precisaAtualizar,
        mensagemErro,
        dataUltimaAtualizacao,
        indexAgendamentoEdit,
        cadastrando,
        iDHorarioEditando,
        navegarParaPag,
        userIdEstabelecimento,
        userIdCliente
      ]);
}

TblCarrinhoStruct createTblCarrinhoStruct({
  int? id,
  DateTime? dataCadastro,
  int? idCarrinho,
  int? idServico,
  String? nomeItem,
  String? descricaoItem,
  String? fotoItem,
  double? valorItem,
  int? tempoEstimadoServico,
  int? quant,
  int? idProfissional,
  String? nomeProfissional,
  String? fotoProfissional,
  int? idHorario,
  int? idCliente,
  bool? confirmado,
  DateTime? dataHoraConfirmacao,
  String? observacao,
  DateTime? dataAgendamento,
  String? horaAgendamento,
  bool? precisaAtualizar,
  String? mensagemErro,
  DateTime? dataUltimaAtualizacao,
  int? indexAgendamentoEdit,
  bool? cadastrando,
  int? iDHorarioEditando,
  String? navegarParaPag,
  String? userIdEstabelecimento,
  String? userIdCliente,
}) =>
    TblCarrinhoStruct(
      id: id,
      dataCadastro: dataCadastro,
      idCarrinho: idCarrinho,
      idServico: idServico,
      nomeItem: nomeItem,
      descricaoItem: descricaoItem,
      fotoItem: fotoItem,
      valorItem: valorItem,
      tempoEstimadoServico: tempoEstimadoServico,
      quant: quant,
      idProfissional: idProfissional,
      nomeProfissional: nomeProfissional,
      fotoProfissional: fotoProfissional,
      idHorario: idHorario,
      idCliente: idCliente,
      confirmado: confirmado,
      dataHoraConfirmacao: dataHoraConfirmacao,
      observacao: observacao,
      dataAgendamento: dataAgendamento,
      horaAgendamento: horaAgendamento,
      precisaAtualizar: precisaAtualizar,
      mensagemErro: mensagemErro,
      dataUltimaAtualizacao: dataUltimaAtualizacao,
      indexAgendamentoEdit: indexAgendamentoEdit,
      cadastrando: cadastrando,
      iDHorarioEditando: iDHorarioEditando,
      navegarParaPag: navegarParaPag,
      userIdEstabelecimento: userIdEstabelecimento,
      userIdCliente: userIdCliente,
    );
