// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblEstabelecimentoDashboardFeB31K3Struct extends BaseStruct {
  TblEstabelecimentoDashboardFeB31K3Struct({
    int? id,
    String? nome,
    double? valorVdDia,
    double? valorVd7dias,
    double? valorVdMes,
    int? quantVdDia,
    int? quantVd7dias,
    int? quantVdMes,
    double? valorVdGeral,
    int? quantVdGeral,
    double? valorMeta,
    bool? sistema,
  })  : _id = id,
        _nome = nome,
        _valorVdDia = valorVdDia,
        _valorVd7dias = valorVd7dias,
        _valorVdMes = valorVdMes,
        _quantVdDia = quantVdDia,
        _quantVd7dias = quantVd7dias,
        _quantVdMes = quantVdMes,
        _valorVdGeral = valorVdGeral,
        _quantVdGeral = quantVdGeral,
        _valorMeta = valorMeta,
        _sistema = sistema;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "valor_vd_dia" field.
  double? _valorVdDia;
  double get valorVdDia => _valorVdDia ?? 0.0;
  set valorVdDia(double? val) => _valorVdDia = val;

  void incrementValorVdDia(double amount) => valorVdDia = valorVdDia + amount;

  bool hasValorVdDia() => _valorVdDia != null;

  // "valor_vd_7dias" field.
  double? _valorVd7dias;
  double get valorVd7dias => _valorVd7dias ?? 0.0;
  set valorVd7dias(double? val) => _valorVd7dias = val;

  void incrementValorVd7dias(double amount) =>
      valorVd7dias = valorVd7dias + amount;

  bool hasValorVd7dias() => _valorVd7dias != null;

  // "valor_vd_mes" field.
  double? _valorVdMes;
  double get valorVdMes => _valorVdMes ?? 0.0;
  set valorVdMes(double? val) => _valorVdMes = val;

  void incrementValorVdMes(double amount) => valorVdMes = valorVdMes + amount;

  bool hasValorVdMes() => _valorVdMes != null;

  // "quant_vd_dia" field.
  int? _quantVdDia;
  int get quantVdDia => _quantVdDia ?? 0;
  set quantVdDia(int? val) => _quantVdDia = val;

  void incrementQuantVdDia(int amount) => quantVdDia = quantVdDia + amount;

  bool hasQuantVdDia() => _quantVdDia != null;

  // "quant_vd_7dias" field.
  int? _quantVd7dias;
  int get quantVd7dias => _quantVd7dias ?? 0;
  set quantVd7dias(int? val) => _quantVd7dias = val;

  void incrementQuantVd7dias(int amount) =>
      quantVd7dias = quantVd7dias + amount;

  bool hasQuantVd7dias() => _quantVd7dias != null;

  // "quant_vd_mes" field.
  int? _quantVdMes;
  int get quantVdMes => _quantVdMes ?? 0;
  set quantVdMes(int? val) => _quantVdMes = val;

  void incrementQuantVdMes(int amount) => quantVdMes = quantVdMes + amount;

  bool hasQuantVdMes() => _quantVdMes != null;

  // "valor_vd_geral" field.
  double? _valorVdGeral;
  double get valorVdGeral => _valorVdGeral ?? 0.0;
  set valorVdGeral(double? val) => _valorVdGeral = val;

  void incrementValorVdGeral(double amount) =>
      valorVdGeral = valorVdGeral + amount;

  bool hasValorVdGeral() => _valorVdGeral != null;

  // "quant_vd_geral" field.
  int? _quantVdGeral;
  int get quantVdGeral => _quantVdGeral ?? 0;
  set quantVdGeral(int? val) => _quantVdGeral = val;

  void incrementQuantVdGeral(int amount) =>
      quantVdGeral = quantVdGeral + amount;

  bool hasQuantVdGeral() => _quantVdGeral != null;

  // "valor_meta" field.
  double? _valorMeta;
  double get valorMeta => _valorMeta ?? 0.0;
  set valorMeta(double? val) => _valorMeta = val;

  void incrementValorMeta(double amount) => valorMeta = valorMeta + amount;

  bool hasValorMeta() => _valorMeta != null;

  // "sistema" field.
  bool? _sistema;
  bool get sistema => _sistema ?? false;
  set sistema(bool? val) => _sistema = val;

  bool hasSistema() => _sistema != null;

  static TblEstabelecimentoDashboardFeB31K3Struct fromMap(
          Map<String, dynamic> data) =>
      TblEstabelecimentoDashboardFeB31K3Struct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        valorVdDia: castToType<double>(data['valor_vd_dia']),
        valorVd7dias: castToType<double>(data['valor_vd_7dias']),
        valorVdMes: castToType<double>(data['valor_vd_mes']),
        quantVdDia: castToType<int>(data['quant_vd_dia']),
        quantVd7dias: castToType<int>(data['quant_vd_7dias']),
        quantVdMes: castToType<int>(data['quant_vd_mes']),
        valorVdGeral: castToType<double>(data['valor_vd_geral']),
        quantVdGeral: castToType<int>(data['quant_vd_geral']),
        valorMeta: castToType<double>(data['valor_meta']),
        sistema: data['sistema'] as bool?,
      );

  static TblEstabelecimentoDashboardFeB31K3Struct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblEstabelecimentoDashboardFeB31K3Struct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'valor_vd_dia': _valorVdDia,
        'valor_vd_7dias': _valorVd7dias,
        'valor_vd_mes': _valorVdMes,
        'quant_vd_dia': _quantVdDia,
        'quant_vd_7dias': _quantVd7dias,
        'quant_vd_mes': _quantVdMes,
        'valor_vd_geral': _valorVdGeral,
        'quant_vd_geral': _quantVdGeral,
        'valor_meta': _valorMeta,
        'sistema': _sistema,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'valor_vd_dia': serializeParam(
          _valorVdDia,
          ParamType.double,
        ),
        'valor_vd_7dias': serializeParam(
          _valorVd7dias,
          ParamType.double,
        ),
        'valor_vd_mes': serializeParam(
          _valorVdMes,
          ParamType.double,
        ),
        'quant_vd_dia': serializeParam(
          _quantVdDia,
          ParamType.int,
        ),
        'quant_vd_7dias': serializeParam(
          _quantVd7dias,
          ParamType.int,
        ),
        'quant_vd_mes': serializeParam(
          _quantVdMes,
          ParamType.int,
        ),
        'valor_vd_geral': serializeParam(
          _valorVdGeral,
          ParamType.double,
        ),
        'quant_vd_geral': serializeParam(
          _quantVdGeral,
          ParamType.int,
        ),
        'valor_meta': serializeParam(
          _valorMeta,
          ParamType.double,
        ),
        'sistema': serializeParam(
          _sistema,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblEstabelecimentoDashboardFeB31K3Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblEstabelecimentoDashboardFeB31K3Struct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        valorVdDia: deserializeParam(
          data['valor_vd_dia'],
          ParamType.double,
          false,
        ),
        valorVd7dias: deserializeParam(
          data['valor_vd_7dias'],
          ParamType.double,
          false,
        ),
        valorVdMes: deserializeParam(
          data['valor_vd_mes'],
          ParamType.double,
          false,
        ),
        quantVdDia: deserializeParam(
          data['quant_vd_dia'],
          ParamType.int,
          false,
        ),
        quantVd7dias: deserializeParam(
          data['quant_vd_7dias'],
          ParamType.int,
          false,
        ),
        quantVdMes: deserializeParam(
          data['quant_vd_mes'],
          ParamType.int,
          false,
        ),
        valorVdGeral: deserializeParam(
          data['valor_vd_geral'],
          ParamType.double,
          false,
        ),
        quantVdGeral: deserializeParam(
          data['quant_vd_geral'],
          ParamType.int,
          false,
        ),
        valorMeta: deserializeParam(
          data['valor_meta'],
          ParamType.double,
          false,
        ),
        sistema: deserializeParam(
          data['sistema'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblEstabelecimentoDashboardFeB31K3Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblEstabelecimentoDashboardFeB31K3Struct &&
        id == other.id &&
        nome == other.nome &&
        valorVdDia == other.valorVdDia &&
        valorVd7dias == other.valorVd7dias &&
        valorVdMes == other.valorVdMes &&
        quantVdDia == other.quantVdDia &&
        quantVd7dias == other.quantVd7dias &&
        quantVdMes == other.quantVdMes &&
        valorVdGeral == other.valorVdGeral &&
        quantVdGeral == other.quantVdGeral &&
        valorMeta == other.valorMeta &&
        sistema == other.sistema;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        valorVdDia,
        valorVd7dias,
        valorVdMes,
        quantVdDia,
        quantVd7dias,
        quantVdMes,
        valorVdGeral,
        quantVdGeral,
        valorMeta,
        sistema
      ]);
}

TblEstabelecimentoDashboardFeB31K3Struct
    createTblEstabelecimentoDashboardFeB31K3Struct({
  int? id,
  String? nome,
  double? valorVdDia,
  double? valorVd7dias,
  double? valorVdMes,
  int? quantVdDia,
  int? quantVd7dias,
  int? quantVdMes,
  double? valorVdGeral,
  int? quantVdGeral,
  double? valorMeta,
  bool? sistema,
}) =>
        TblEstabelecimentoDashboardFeB31K3Struct(
          id: id,
          nome: nome,
          valorVdDia: valorVdDia,
          valorVd7dias: valorVd7dias,
          valorVdMes: valorVdMes,
          quantVdDia: quantVdDia,
          quantVd7dias: quantVd7dias,
          quantVdMes: quantVdMes,
          valorVdGeral: valorVdGeral,
          quantVdGeral: quantVdGeral,
          valorMeta: valorMeta,
          sistema: sistema,
        );
