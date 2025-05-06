// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblProfissionalServLibStruct extends BaseStruct {
  TblProfissionalServLibStruct({
    int? idProfissional,
    int? idServico,
    int? usuarioLiberou,
    DateTime? dataCadastro,
  })  : _idProfissional = idProfissional,
        _idServico = idServico,
        _usuarioLiberou = usuarioLiberou,
        _dataCadastro = dataCadastro;

  // "id_profissional" field.
  int? _idProfissional;
  int get idProfissional => _idProfissional ?? 0;
  set idProfissional(int? val) => _idProfissional = val;

  void incrementIdProfissional(int amount) =>
      idProfissional = idProfissional + amount;

  bool hasIdProfissional() => _idProfissional != null;

  // "id_servico" field.
  int? _idServico;
  int get idServico => _idServico ?? 0;
  set idServico(int? val) => _idServico = val;

  void incrementIdServico(int amount) => idServico = idServico + amount;

  bool hasIdServico() => _idServico != null;

  // "usuario_liberou" field.
  int? _usuarioLiberou;
  int get usuarioLiberou => _usuarioLiberou ?? 0;
  set usuarioLiberou(int? val) => _usuarioLiberou = val;

  void incrementUsuarioLiberou(int amount) =>
      usuarioLiberou = usuarioLiberou + amount;

  bool hasUsuarioLiberou() => _usuarioLiberou != null;

  // "data_cadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  set dataCadastro(DateTime? val) => _dataCadastro = val;

  bool hasDataCadastro() => _dataCadastro != null;

  static TblProfissionalServLibStruct fromMap(Map<String, dynamic> data) =>
      TblProfissionalServLibStruct(
        idProfissional: castToType<int>(data['id_profissional']),
        idServico: castToType<int>(data['id_servico']),
        usuarioLiberou: castToType<int>(data['usuario_liberou']),
        dataCadastro: data['data_cadastro'] as DateTime?,
      );

  static TblProfissionalServLibStruct? maybeFromMap(dynamic data) => data is Map
      ? TblProfissionalServLibStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_profissional': _idProfissional,
        'id_servico': _idServico,
        'usuario_liberou': _usuarioLiberou,
        'data_cadastro': _dataCadastro,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_profissional': serializeParam(
          _idProfissional,
          ParamType.int,
        ),
        'id_servico': serializeParam(
          _idServico,
          ParamType.int,
        ),
        'usuario_liberou': serializeParam(
          _usuarioLiberou,
          ParamType.int,
        ),
        'data_cadastro': serializeParam(
          _dataCadastro,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TblProfissionalServLibStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblProfissionalServLibStruct(
        idProfissional: deserializeParam(
          data['id_profissional'],
          ParamType.int,
          false,
        ),
        idServico: deserializeParam(
          data['id_servico'],
          ParamType.int,
          false,
        ),
        usuarioLiberou: deserializeParam(
          data['usuario_liberou'],
          ParamType.int,
          false,
        ),
        dataCadastro: deserializeParam(
          data['data_cadastro'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TblProfissionalServLibStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblProfissionalServLibStruct &&
        idProfissional == other.idProfissional &&
        idServico == other.idServico &&
        usuarioLiberou == other.usuarioLiberou &&
        dataCadastro == other.dataCadastro;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idProfissional, idServico, usuarioLiberou, dataCadastro]);
}

TblProfissionalServLibStruct createTblProfissionalServLibStruct({
  int? idProfissional,
  int? idServico,
  int? usuarioLiberou,
  DateTime? dataCadastro,
}) =>
    TblProfissionalServLibStruct(
      idProfissional: idProfissional,
      idServico: idServico,
      usuarioLiberou: usuarioLiberou,
      dataCadastro: dataCadastro,
    );
