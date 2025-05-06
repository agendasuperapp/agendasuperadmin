// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblCalendarioPersonalizadoStruct extends BaseStruct {
  TblCalendarioPersonalizadoStruct({
    String? diaSemana,
    String? dia,
    DateTime? data,
  })  : _diaSemana = diaSemana,
        _dia = dia,
        _data = data;

  // "dia_semana" field.
  String? _diaSemana;
  String get diaSemana => _diaSemana ?? '';
  set diaSemana(String? val) => _diaSemana = val;

  bool hasDiaSemana() => _diaSemana != null;

  // "dia" field.
  String? _dia;
  String get dia => _dia ?? '';
  set dia(String? val) => _dia = val;

  bool hasDia() => _dia != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  static TblCalendarioPersonalizadoStruct fromMap(Map<String, dynamic> data) =>
      TblCalendarioPersonalizadoStruct(
        diaSemana: data['dia_semana'] as String?,
        dia: data['dia'] as String?,
        data: data['data'] as DateTime?,
      );

  static TblCalendarioPersonalizadoStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TblCalendarioPersonalizadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dia_semana': _diaSemana,
        'dia': _dia,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dia_semana': serializeParam(
          _diaSemana,
          ParamType.String,
        ),
        'dia': serializeParam(
          _dia,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TblCalendarioPersonalizadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblCalendarioPersonalizadoStruct(
        diaSemana: deserializeParam(
          data['dia_semana'],
          ParamType.String,
          false,
        ),
        dia: deserializeParam(
          data['dia'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TblCalendarioPersonalizadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblCalendarioPersonalizadoStruct &&
        diaSemana == other.diaSemana &&
        dia == other.dia &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([diaSemana, dia, data]);
}

TblCalendarioPersonalizadoStruct createTblCalendarioPersonalizadoStruct({
  String? diaSemana,
  String? dia,
  DateTime? data,
}) =>
    TblCalendarioPersonalizadoStruct(
      diaSemana: diaSemana,
      dia: dia,
      data: data,
    );
