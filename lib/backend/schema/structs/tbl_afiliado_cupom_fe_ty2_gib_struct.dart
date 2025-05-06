// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblAfiliadoCupomFeTy2GibStruct extends BaseStruct {
  TblAfiliadoCupomFeTy2GibStruct({
    int? id,
    int? idAfiliado,
    int? idEstabelecimento,
    String? descrio,
    String? tipoCupom,
    int? tempo,
    double? percDesconto,
    bool? aceitoNaRenovacao,
    List<int>? idPlanosPeriodosLiberados,
    List<int>? idPlanosNomesLiberados,
    String? result,
    bool? vencido,
    bool? usado,
    String? userId,
  })  : _id = id,
        _idAfiliado = idAfiliado,
        _idEstabelecimento = idEstabelecimento,
        _descrio = descrio,
        _tipoCupom = tipoCupom,
        _tempo = tempo,
        _percDesconto = percDesconto,
        _aceitoNaRenovacao = aceitoNaRenovacao,
        _idPlanosPeriodosLiberados = idPlanosPeriodosLiberados,
        _idPlanosNomesLiberados = idPlanosNomesLiberados,
        _result = result,
        _vencido = vencido,
        _usado = usado,
        _userId = userId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "id_afiliado" field.
  int? _idAfiliado;
  int get idAfiliado => _idAfiliado ?? 0;
  set idAfiliado(int? val) => _idAfiliado = val;

  void incrementIdAfiliado(int amount) => idAfiliado = idAfiliado + amount;

  bool hasIdAfiliado() => _idAfiliado != null;

  // "id_estabelecimento" field.
  int? _idEstabelecimento;
  int get idEstabelecimento => _idEstabelecimento ?? 0;
  set idEstabelecimento(int? val) => _idEstabelecimento = val;

  void incrementIdEstabelecimento(int amount) =>
      idEstabelecimento = idEstabelecimento + amount;

  bool hasIdEstabelecimento() => _idEstabelecimento != null;

  // "descrio" field.
  String? _descrio;
  String get descrio => _descrio ?? '';
  set descrio(String? val) => _descrio = val;

  bool hasDescrio() => _descrio != null;

  // "tipo_cupom" field.
  String? _tipoCupom;
  String get tipoCupom => _tipoCupom ?? '';
  set tipoCupom(String? val) => _tipoCupom = val;

  bool hasTipoCupom() => _tipoCupom != null;

  // "tempo" field.
  int? _tempo;
  int get tempo => _tempo ?? 0;
  set tempo(int? val) => _tempo = val;

  void incrementTempo(int amount) => tempo = tempo + amount;

  bool hasTempo() => _tempo != null;

  // "perc_desconto" field.
  double? _percDesconto;
  double get percDesconto => _percDesconto ?? 0.0;
  set percDesconto(double? val) => _percDesconto = val;

  void incrementPercDesconto(double amount) =>
      percDesconto = percDesconto + amount;

  bool hasPercDesconto() => _percDesconto != null;

  // "aceito_na_renovacao" field.
  bool? _aceitoNaRenovacao;
  bool get aceitoNaRenovacao => _aceitoNaRenovacao ?? false;
  set aceitoNaRenovacao(bool? val) => _aceitoNaRenovacao = val;

  bool hasAceitoNaRenovacao() => _aceitoNaRenovacao != null;

  // "id_planos_periodos_liberados" field.
  List<int>? _idPlanosPeriodosLiberados;
  List<int> get idPlanosPeriodosLiberados =>
      _idPlanosPeriodosLiberados ?? const [];
  set idPlanosPeriodosLiberados(List<int>? val) =>
      _idPlanosPeriodosLiberados = val;

  void updateIdPlanosPeriodosLiberados(Function(List<int>) updateFn) {
    updateFn(_idPlanosPeriodosLiberados ??= []);
  }

  bool hasIdPlanosPeriodosLiberados() => _idPlanosPeriodosLiberados != null;

  // "id_planos_nomes_liberados" field.
  List<int>? _idPlanosNomesLiberados;
  List<int> get idPlanosNomesLiberados => _idPlanosNomesLiberados ?? const [];
  set idPlanosNomesLiberados(List<int>? val) => _idPlanosNomesLiberados = val;

  void updateIdPlanosNomesLiberados(Function(List<int>) updateFn) {
    updateFn(_idPlanosNomesLiberados ??= []);
  }

  bool hasIdPlanosNomesLiberados() => _idPlanosNomesLiberados != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  set result(String? val) => _result = val;

  bool hasResult() => _result != null;

  // "vencido" field.
  bool? _vencido;
  bool get vencido => _vencido ?? false;
  set vencido(bool? val) => _vencido = val;

  bool hasVencido() => _vencido != null;

  // "usado" field.
  bool? _usado;
  bool get usado => _usado ?? false;
  set usado(bool? val) => _usado = val;

  bool hasUsado() => _usado != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static TblAfiliadoCupomFeTy2GibStruct fromMap(Map<String, dynamic> data) =>
      TblAfiliadoCupomFeTy2GibStruct(
        id: castToType<int>(data['id']),
        idAfiliado: castToType<int>(data['id_afiliado']),
        idEstabelecimento: castToType<int>(data['id_estabelecimento']),
        descrio: data['descrio'] as String?,
        tipoCupom: data['tipo_cupom'] as String?,
        tempo: castToType<int>(data['tempo']),
        percDesconto: castToType<double>(data['perc_desconto']),
        aceitoNaRenovacao: data['aceito_na_renovacao'] as bool?,
        idPlanosPeriodosLiberados:
            getDataList(data['id_planos_periodos_liberados']),
        idPlanosNomesLiberados: getDataList(data['id_planos_nomes_liberados']),
        result: data['result'] as String?,
        vencido: data['vencido'] as bool?,
        usado: data['usado'] as bool?,
        userId: data['user_id'] as String?,
      );

  static TblAfiliadoCupomFeTy2GibStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblAfiliadoCupomFeTy2GibStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'id_afiliado': _idAfiliado,
        'id_estabelecimento': _idEstabelecimento,
        'descrio': _descrio,
        'tipo_cupom': _tipoCupom,
        'tempo': _tempo,
        'perc_desconto': _percDesconto,
        'aceito_na_renovacao': _aceitoNaRenovacao,
        'id_planos_periodos_liberados': _idPlanosPeriodosLiberados,
        'id_planos_nomes_liberados': _idPlanosNomesLiberados,
        'result': _result,
        'vencido': _vencido,
        'usado': _usado,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'id_afiliado': serializeParam(
          _idAfiliado,
          ParamType.int,
        ),
        'id_estabelecimento': serializeParam(
          _idEstabelecimento,
          ParamType.int,
        ),
        'descrio': serializeParam(
          _descrio,
          ParamType.String,
        ),
        'tipo_cupom': serializeParam(
          _tipoCupom,
          ParamType.String,
        ),
        'tempo': serializeParam(
          _tempo,
          ParamType.int,
        ),
        'perc_desconto': serializeParam(
          _percDesconto,
          ParamType.double,
        ),
        'aceito_na_renovacao': serializeParam(
          _aceitoNaRenovacao,
          ParamType.bool,
        ),
        'id_planos_periodos_liberados': serializeParam(
          _idPlanosPeriodosLiberados,
          ParamType.int,
          isList: true,
        ),
        'id_planos_nomes_liberados': serializeParam(
          _idPlanosNomesLiberados,
          ParamType.int,
          isList: true,
        ),
        'result': serializeParam(
          _result,
          ParamType.String,
        ),
        'vencido': serializeParam(
          _vencido,
          ParamType.bool,
        ),
        'usado': serializeParam(
          _usado,
          ParamType.bool,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblAfiliadoCupomFeTy2GibStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblAfiliadoCupomFeTy2GibStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idAfiliado: deserializeParam(
          data['id_afiliado'],
          ParamType.int,
          false,
        ),
        idEstabelecimento: deserializeParam(
          data['id_estabelecimento'],
          ParamType.int,
          false,
        ),
        descrio: deserializeParam(
          data['descrio'],
          ParamType.String,
          false,
        ),
        tipoCupom: deserializeParam(
          data['tipo_cupom'],
          ParamType.String,
          false,
        ),
        tempo: deserializeParam(
          data['tempo'],
          ParamType.int,
          false,
        ),
        percDesconto: deserializeParam(
          data['perc_desconto'],
          ParamType.double,
          false,
        ),
        aceitoNaRenovacao: deserializeParam(
          data['aceito_na_renovacao'],
          ParamType.bool,
          false,
        ),
        idPlanosPeriodosLiberados: deserializeParam<int>(
          data['id_planos_periodos_liberados'],
          ParamType.int,
          true,
        ),
        idPlanosNomesLiberados: deserializeParam<int>(
          data['id_planos_nomes_liberados'],
          ParamType.int,
          true,
        ),
        result: deserializeParam(
          data['result'],
          ParamType.String,
          false,
        ),
        vencido: deserializeParam(
          data['vencido'],
          ParamType.bool,
          false,
        ),
        usado: deserializeParam(
          data['usado'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblAfiliadoCupomFeTy2GibStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TblAfiliadoCupomFeTy2GibStruct &&
        id == other.id &&
        idAfiliado == other.idAfiliado &&
        idEstabelecimento == other.idEstabelecimento &&
        descrio == other.descrio &&
        tipoCupom == other.tipoCupom &&
        tempo == other.tempo &&
        percDesconto == other.percDesconto &&
        aceitoNaRenovacao == other.aceitoNaRenovacao &&
        listEquality.equals(
            idPlanosPeriodosLiberados, other.idPlanosPeriodosLiberados) &&
        listEquality.equals(
            idPlanosNomesLiberados, other.idPlanosNomesLiberados) &&
        result == other.result &&
        vencido == other.vencido &&
        usado == other.usado &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        idAfiliado,
        idEstabelecimento,
        descrio,
        tipoCupom,
        tempo,
        percDesconto,
        aceitoNaRenovacao,
        idPlanosPeriodosLiberados,
        idPlanosNomesLiberados,
        result,
        vencido,
        usado,
        userId
      ]);
}

TblAfiliadoCupomFeTy2GibStruct createTblAfiliadoCupomFeTy2GibStruct({
  int? id,
  int? idAfiliado,
  int? idEstabelecimento,
  String? descrio,
  String? tipoCupom,
  int? tempo,
  double? percDesconto,
  bool? aceitoNaRenovacao,
  String? result,
  bool? vencido,
  bool? usado,
  String? userId,
}) =>
    TblAfiliadoCupomFeTy2GibStruct(
      id: id,
      idAfiliado: idAfiliado,
      idEstabelecimento: idEstabelecimento,
      descrio: descrio,
      tipoCupom: tipoCupom,
      tempo: tempo,
      percDesconto: percDesconto,
      aceitoNaRenovacao: aceitoNaRenovacao,
      result: result,
      vencido: vencido,
      usado: usado,
      userId: userId,
    );
