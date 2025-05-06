// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblAgenTempStruct extends BaseStruct {
  TblAgenTempStruct({
    int? id,
    DateTime? dataCadastro,
    int? idEstabelecimento,
    int? idServico,
    String? nomeItem,
    String? descricaoItem,
    String? fotoItem,
    double? valorItem,
    int? tempoEstimadoServico,
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
  })  : _id = id,
        _dataCadastro = dataCadastro,
        _idEstabelecimento = idEstabelecimento,
        _idServico = idServico,
        _nomeItem = nomeItem,
        _descricaoItem = descricaoItem,
        _fotoItem = fotoItem,
        _valorItem = valorItem,
        _tempoEstimadoServico = tempoEstimadoServico,
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
        _dataUltimaAtualizacao = dataUltimaAtualizacao;

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

  // "id_estabelecimento" field.
  int? _idEstabelecimento;
  int get idEstabelecimento => _idEstabelecimento ?? 0;
  set idEstabelecimento(int? val) => _idEstabelecimento = val;

  void incrementIdEstabelecimento(int amount) =>
      idEstabelecimento = idEstabelecimento + amount;

  bool hasIdEstabelecimento() => _idEstabelecimento != null;

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

  static TblAgenTempStruct fromMap(Map<String, dynamic> data) =>
      TblAgenTempStruct(
        id: castToType<int>(data['id']),
        dataCadastro: data['data_cadastro'] as DateTime?,
        idEstabelecimento: castToType<int>(data['id_estabelecimento']),
        idServico: castToType<int>(data['id_servico']),
        nomeItem: data['nome_item'] as String?,
        descricaoItem: data['descricao_item'] as String?,
        fotoItem: data['foto_item'] as String?,
        valorItem: castToType<double>(data['valor_item']),
        tempoEstimadoServico: castToType<int>(data['tempo_estimado_servico']),
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
      );

  static TblAgenTempStruct? maybeFromMap(dynamic data) => data is Map
      ? TblAgenTempStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'data_cadastro': _dataCadastro,
        'id_estabelecimento': _idEstabelecimento,
        'id_servico': _idServico,
        'nome_item': _nomeItem,
        'descricao_item': _descricaoItem,
        'foto_item': _fotoItem,
        'valor_item': _valorItem,
        'tempo_estimado_servico': _tempoEstimadoServico,
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
        'id_estabelecimento': serializeParam(
          _idEstabelecimento,
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
      }.withoutNulls;

  static TblAgenTempStruct fromSerializableMap(Map<String, dynamic> data) =>
      TblAgenTempStruct(
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
        idEstabelecimento: deserializeParam(
          data['id_estabelecimento'],
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
      );

  @override
  String toString() => 'TblAgenTempStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblAgenTempStruct &&
        id == other.id &&
        dataCadastro == other.dataCadastro &&
        idEstabelecimento == other.idEstabelecimento &&
        idServico == other.idServico &&
        nomeItem == other.nomeItem &&
        descricaoItem == other.descricaoItem &&
        fotoItem == other.fotoItem &&
        valorItem == other.valorItem &&
        tempoEstimadoServico == other.tempoEstimadoServico &&
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
        dataUltimaAtualizacao == other.dataUltimaAtualizacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dataCadastro,
        idEstabelecimento,
        idServico,
        nomeItem,
        descricaoItem,
        fotoItem,
        valorItem,
        tempoEstimadoServico,
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
        dataUltimaAtualizacao
      ]);
}

TblAgenTempStruct createTblAgenTempStruct({
  int? id,
  DateTime? dataCadastro,
  int? idEstabelecimento,
  int? idServico,
  String? nomeItem,
  String? descricaoItem,
  String? fotoItem,
  double? valorItem,
  int? tempoEstimadoServico,
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
}) =>
    TblAgenTempStruct(
      id: id,
      dataCadastro: dataCadastro,
      idEstabelecimento: idEstabelecimento,
      idServico: idServico,
      nomeItem: nomeItem,
      descricaoItem: descricaoItem,
      fotoItem: fotoItem,
      valorItem: valorItem,
      tempoEstimadoServico: tempoEstimadoServico,
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
    );
