// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblHorariosDisponiveisProfissionalStruct extends BaseStruct {
  TblHorariosDisponiveisProfissionalStruct({
    int? idEstabelecimento,
    int? idProfissional,
    String? diaSemana,
    String? hora,
    int? idCliente,
    bool? situacaoAgendamento,
    int? idServico,
    DateTime? diaMesData,
    int? ordem,
    int? idAgendamento,
    String? nomeCliente,
    String? nomeServico,
    bool? agendamentoConfirmado,
    String? obsAgendamento,
    bool? selecionado,
  })  : _idEstabelecimento = idEstabelecimento,
        _idProfissional = idProfissional,
        _diaSemana = diaSemana,
        _hora = hora,
        _idCliente = idCliente,
        _situacaoAgendamento = situacaoAgendamento,
        _idServico = idServico,
        _diaMesData = diaMesData,
        _ordem = ordem,
        _idAgendamento = idAgendamento,
        _nomeCliente = nomeCliente,
        _nomeServico = nomeServico,
        _agendamentoConfirmado = agendamentoConfirmado,
        _obsAgendamento = obsAgendamento,
        _selecionado = selecionado;

  // "id_estabelecimento" field.
  int? _idEstabelecimento;
  int get idEstabelecimento => _idEstabelecimento ?? 0;
  set idEstabelecimento(int? val) => _idEstabelecimento = val;

  void incrementIdEstabelecimento(int amount) =>
      idEstabelecimento = idEstabelecimento + amount;

  bool hasIdEstabelecimento() => _idEstabelecimento != null;

  // "id_profissional" field.
  int? _idProfissional;
  int get idProfissional => _idProfissional ?? 0;
  set idProfissional(int? val) => _idProfissional = val;

  void incrementIdProfissional(int amount) =>
      idProfissional = idProfissional + amount;

  bool hasIdProfissional() => _idProfissional != null;

  // "dia_semana" field.
  String? _diaSemana;
  String get diaSemana => _diaSemana ?? '';
  set diaSemana(String? val) => _diaSemana = val;

  bool hasDiaSemana() => _diaSemana != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  set hora(String? val) => _hora = val;

  bool hasHora() => _hora != null;

  // "id_cliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  set idCliente(int? val) => _idCliente = val;

  void incrementIdCliente(int amount) => idCliente = idCliente + amount;

  bool hasIdCliente() => _idCliente != null;

  // "situacao_agendamento" field.
  bool? _situacaoAgendamento;
  bool get situacaoAgendamento => _situacaoAgendamento ?? false;
  set situacaoAgendamento(bool? val) => _situacaoAgendamento = val;

  bool hasSituacaoAgendamento() => _situacaoAgendamento != null;

  // "id_servico" field.
  int? _idServico;
  int get idServico => _idServico ?? 0;
  set idServico(int? val) => _idServico = val;

  void incrementIdServico(int amount) => idServico = idServico + amount;

  bool hasIdServico() => _idServico != null;

  // "dia_mes_data" field.
  DateTime? _diaMesData;
  DateTime? get diaMesData => _diaMesData;
  set diaMesData(DateTime? val) => _diaMesData = val;

  bool hasDiaMesData() => _diaMesData != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "id_agendamento" field.
  int? _idAgendamento;
  int get idAgendamento => _idAgendamento ?? 0;
  set idAgendamento(int? val) => _idAgendamento = val;

  void incrementIdAgendamento(int amount) =>
      idAgendamento = idAgendamento + amount;

  bool hasIdAgendamento() => _idAgendamento != null;

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;

  bool hasNomeCliente() => _nomeCliente != null;

  // "nome_servico" field.
  String? _nomeServico;
  String get nomeServico => _nomeServico ?? '';
  set nomeServico(String? val) => _nomeServico = val;

  bool hasNomeServico() => _nomeServico != null;

  // "agendamento_confirmado" field.
  bool? _agendamentoConfirmado;
  bool get agendamentoConfirmado => _agendamentoConfirmado ?? false;
  set agendamentoConfirmado(bool? val) => _agendamentoConfirmado = val;

  bool hasAgendamentoConfirmado() => _agendamentoConfirmado != null;

  // "obs_agendamento" field.
  String? _obsAgendamento;
  String get obsAgendamento => _obsAgendamento ?? '';
  set obsAgendamento(String? val) => _obsAgendamento = val;

  bool hasObsAgendamento() => _obsAgendamento != null;

  // "selecionado" field.
  bool? _selecionado;
  bool get selecionado => _selecionado ?? false;
  set selecionado(bool? val) => _selecionado = val;

  bool hasSelecionado() => _selecionado != null;

  static TblHorariosDisponiveisProfissionalStruct fromMap(
          Map<String, dynamic> data) =>
      TblHorariosDisponiveisProfissionalStruct(
        idEstabelecimento: castToType<int>(data['id_estabelecimento']),
        idProfissional: castToType<int>(data['id_profissional']),
        diaSemana: data['dia_semana'] as String?,
        hora: data['hora'] as String?,
        idCliente: castToType<int>(data['id_cliente']),
        situacaoAgendamento: data['situacao_agendamento'] as bool?,
        idServico: castToType<int>(data['id_servico']),
        diaMesData: data['dia_mes_data'] as DateTime?,
        ordem: castToType<int>(data['ordem']),
        idAgendamento: castToType<int>(data['id_agendamento']),
        nomeCliente: data['nome_cliente'] as String?,
        nomeServico: data['nome_servico'] as String?,
        agendamentoConfirmado: data['agendamento_confirmado'] as bool?,
        obsAgendamento: data['obs_agendamento'] as String?,
        selecionado: data['selecionado'] as bool?,
      );

  static TblHorariosDisponiveisProfissionalStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblHorariosDisponiveisProfissionalStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id_estabelecimento': _idEstabelecimento,
        'id_profissional': _idProfissional,
        'dia_semana': _diaSemana,
        'hora': _hora,
        'id_cliente': _idCliente,
        'situacao_agendamento': _situacaoAgendamento,
        'id_servico': _idServico,
        'dia_mes_data': _diaMesData,
        'ordem': _ordem,
        'id_agendamento': _idAgendamento,
        'nome_cliente': _nomeCliente,
        'nome_servico': _nomeServico,
        'agendamento_confirmado': _agendamentoConfirmado,
        'obs_agendamento': _obsAgendamento,
        'selecionado': _selecionado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_estabelecimento': serializeParam(
          _idEstabelecimento,
          ParamType.int,
        ),
        'id_profissional': serializeParam(
          _idProfissional,
          ParamType.int,
        ),
        'dia_semana': serializeParam(
          _diaSemana,
          ParamType.String,
        ),
        'hora': serializeParam(
          _hora,
          ParamType.String,
        ),
        'id_cliente': serializeParam(
          _idCliente,
          ParamType.int,
        ),
        'situacao_agendamento': serializeParam(
          _situacaoAgendamento,
          ParamType.bool,
        ),
        'id_servico': serializeParam(
          _idServico,
          ParamType.int,
        ),
        'dia_mes_data': serializeParam(
          _diaMesData,
          ParamType.DateTime,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'id_agendamento': serializeParam(
          _idAgendamento,
          ParamType.int,
        ),
        'nome_cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'nome_servico': serializeParam(
          _nomeServico,
          ParamType.String,
        ),
        'agendamento_confirmado': serializeParam(
          _agendamentoConfirmado,
          ParamType.bool,
        ),
        'obs_agendamento': serializeParam(
          _obsAgendamento,
          ParamType.String,
        ),
        'selecionado': serializeParam(
          _selecionado,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblHorariosDisponiveisProfissionalStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblHorariosDisponiveisProfissionalStruct(
        idEstabelecimento: deserializeParam(
          data['id_estabelecimento'],
          ParamType.int,
          false,
        ),
        idProfissional: deserializeParam(
          data['id_profissional'],
          ParamType.int,
          false,
        ),
        diaSemana: deserializeParam(
          data['dia_semana'],
          ParamType.String,
          false,
        ),
        hora: deserializeParam(
          data['hora'],
          ParamType.String,
          false,
        ),
        idCliente: deserializeParam(
          data['id_cliente'],
          ParamType.int,
          false,
        ),
        situacaoAgendamento: deserializeParam(
          data['situacao_agendamento'],
          ParamType.bool,
          false,
        ),
        idServico: deserializeParam(
          data['id_servico'],
          ParamType.int,
          false,
        ),
        diaMesData: deserializeParam(
          data['dia_mes_data'],
          ParamType.DateTime,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        idAgendamento: deserializeParam(
          data['id_agendamento'],
          ParamType.int,
          false,
        ),
        nomeCliente: deserializeParam(
          data['nome_cliente'],
          ParamType.String,
          false,
        ),
        nomeServico: deserializeParam(
          data['nome_servico'],
          ParamType.String,
          false,
        ),
        agendamentoConfirmado: deserializeParam(
          data['agendamento_confirmado'],
          ParamType.bool,
          false,
        ),
        obsAgendamento: deserializeParam(
          data['obs_agendamento'],
          ParamType.String,
          false,
        ),
        selecionado: deserializeParam(
          data['selecionado'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblHorariosDisponiveisProfissionalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblHorariosDisponiveisProfissionalStruct &&
        idEstabelecimento == other.idEstabelecimento &&
        idProfissional == other.idProfissional &&
        diaSemana == other.diaSemana &&
        hora == other.hora &&
        idCliente == other.idCliente &&
        situacaoAgendamento == other.situacaoAgendamento &&
        idServico == other.idServico &&
        diaMesData == other.diaMesData &&
        ordem == other.ordem &&
        idAgendamento == other.idAgendamento &&
        nomeCliente == other.nomeCliente &&
        nomeServico == other.nomeServico &&
        agendamentoConfirmado == other.agendamentoConfirmado &&
        obsAgendamento == other.obsAgendamento &&
        selecionado == other.selecionado;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idEstabelecimento,
        idProfissional,
        diaSemana,
        hora,
        idCliente,
        situacaoAgendamento,
        idServico,
        diaMesData,
        ordem,
        idAgendamento,
        nomeCliente,
        nomeServico,
        agendamentoConfirmado,
        obsAgendamento,
        selecionado
      ]);
}

TblHorariosDisponiveisProfissionalStruct
    createTblHorariosDisponiveisProfissionalStruct({
  int? idEstabelecimento,
  int? idProfissional,
  String? diaSemana,
  String? hora,
  int? idCliente,
  bool? situacaoAgendamento,
  int? idServico,
  DateTime? diaMesData,
  int? ordem,
  int? idAgendamento,
  String? nomeCliente,
  String? nomeServico,
  bool? agendamentoConfirmado,
  String? obsAgendamento,
  bool? selecionado,
}) =>
        TblHorariosDisponiveisProfissionalStruct(
          idEstabelecimento: idEstabelecimento,
          idProfissional: idProfissional,
          diaSemana: diaSemana,
          hora: hora,
          idCliente: idCliente,
          situacaoAgendamento: situacaoAgendamento,
          idServico: idServico,
          diaMesData: diaMesData,
          ordem: ordem,
          idAgendamento: idAgendamento,
          nomeCliente: nomeCliente,
          nomeServico: nomeServico,
          agendamentoConfirmado: agendamentoConfirmado,
          obsAgendamento: obsAgendamento,
          selecionado: selecionado,
        );
