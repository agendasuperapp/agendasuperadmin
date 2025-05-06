// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblHorarioFuncionamentoStruct extends BaseStruct {
  TblHorarioFuncionamentoStruct({
    String? dia,
    String? horario1Inicio,
    String? horario2Inicio,
    bool? fechado,
    int? ordem,
    String? siglaDia,
    String? horario1Fim,
    String? horario2Fim,
  })  : _dia = dia,
        _horario1Inicio = horario1Inicio,
        _horario2Inicio = horario2Inicio,
        _fechado = fechado,
        _ordem = ordem,
        _siglaDia = siglaDia,
        _horario1Fim = horario1Fim,
        _horario2Fim = horario2Fim;

  // "dia" field.
  String? _dia;
  String get dia => _dia ?? '';
  set dia(String? val) => _dia = val;

  bool hasDia() => _dia != null;

  // "horario_1_inicio" field.
  String? _horario1Inicio;
  String get horario1Inicio => _horario1Inicio ?? '';
  set horario1Inicio(String? val) => _horario1Inicio = val;

  bool hasHorario1Inicio() => _horario1Inicio != null;

  // "horario_2_inicio" field.
  String? _horario2Inicio;
  String get horario2Inicio => _horario2Inicio ?? '';
  set horario2Inicio(String? val) => _horario2Inicio = val;

  bool hasHorario2Inicio() => _horario2Inicio != null;

  // "fechado" field.
  bool? _fechado;
  bool get fechado => _fechado ?? false;
  set fechado(bool? val) => _fechado = val;

  bool hasFechado() => _fechado != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "sigla_dia" field.
  String? _siglaDia;
  String get siglaDia => _siglaDia ?? '';
  set siglaDia(String? val) => _siglaDia = val;

  bool hasSiglaDia() => _siglaDia != null;

  // "horario_1_fim" field.
  String? _horario1Fim;
  String get horario1Fim => _horario1Fim ?? '';
  set horario1Fim(String? val) => _horario1Fim = val;

  bool hasHorario1Fim() => _horario1Fim != null;

  // "horario_2_fim" field.
  String? _horario2Fim;
  String get horario2Fim => _horario2Fim ?? '';
  set horario2Fim(String? val) => _horario2Fim = val;

  bool hasHorario2Fim() => _horario2Fim != null;

  static TblHorarioFuncionamentoStruct fromMap(Map<String, dynamic> data) =>
      TblHorarioFuncionamentoStruct(
        dia: data['dia'] as String?,
        horario1Inicio: data['horario_1_inicio'] as String?,
        horario2Inicio: data['horario_2_inicio'] as String?,
        fechado: data['fechado'] as bool?,
        ordem: castToType<int>(data['ordem']),
        siglaDia: data['sigla_dia'] as String?,
        horario1Fim: data['horario_1_fim'] as String?,
        horario2Fim: data['horario_2_fim'] as String?,
      );

  static TblHorarioFuncionamentoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblHorarioFuncionamentoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'dia': _dia,
        'horario_1_inicio': _horario1Inicio,
        'horario_2_inicio': _horario2Inicio,
        'fechado': _fechado,
        'ordem': _ordem,
        'sigla_dia': _siglaDia,
        'horario_1_fim': _horario1Fim,
        'horario_2_fim': _horario2Fim,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dia': serializeParam(
          _dia,
          ParamType.String,
        ),
        'horario_1_inicio': serializeParam(
          _horario1Inicio,
          ParamType.String,
        ),
        'horario_2_inicio': serializeParam(
          _horario2Inicio,
          ParamType.String,
        ),
        'fechado': serializeParam(
          _fechado,
          ParamType.bool,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'sigla_dia': serializeParam(
          _siglaDia,
          ParamType.String,
        ),
        'horario_1_fim': serializeParam(
          _horario1Fim,
          ParamType.String,
        ),
        'horario_2_fim': serializeParam(
          _horario2Fim,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblHorarioFuncionamentoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblHorarioFuncionamentoStruct(
        dia: deserializeParam(
          data['dia'],
          ParamType.String,
          false,
        ),
        horario1Inicio: deserializeParam(
          data['horario_1_inicio'],
          ParamType.String,
          false,
        ),
        horario2Inicio: deserializeParam(
          data['horario_2_inicio'],
          ParamType.String,
          false,
        ),
        fechado: deserializeParam(
          data['fechado'],
          ParamType.bool,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        siglaDia: deserializeParam(
          data['sigla_dia'],
          ParamType.String,
          false,
        ),
        horario1Fim: deserializeParam(
          data['horario_1_fim'],
          ParamType.String,
          false,
        ),
        horario2Fim: deserializeParam(
          data['horario_2_fim'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblHorarioFuncionamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblHorarioFuncionamentoStruct &&
        dia == other.dia &&
        horario1Inicio == other.horario1Inicio &&
        horario2Inicio == other.horario2Inicio &&
        fechado == other.fechado &&
        ordem == other.ordem &&
        siglaDia == other.siglaDia &&
        horario1Fim == other.horario1Fim &&
        horario2Fim == other.horario2Fim;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dia,
        horario1Inicio,
        horario2Inicio,
        fechado,
        ordem,
        siglaDia,
        horario1Fim,
        horario2Fim
      ]);
}

TblHorarioFuncionamentoStruct createTblHorarioFuncionamentoStruct({
  String? dia,
  String? horario1Inicio,
  String? horario2Inicio,
  bool? fechado,
  int? ordem,
  String? siglaDia,
  String? horario1Fim,
  String? horario2Fim,
}) =>
    TblHorarioFuncionamentoStruct(
      dia: dia,
      horario1Inicio: horario1Inicio,
      horario2Inicio: horario2Inicio,
      fechado: fechado,
      ordem: ordem,
      siglaDia: siglaDia,
      horario1Fim: horario1Fim,
      horario2Fim: horario2Fim,
    );
