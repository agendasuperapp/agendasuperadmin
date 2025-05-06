// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblVerificarSenhaStruct extends BaseStruct {
  TblVerificarSenhaStruct({
    String? senha,
    DateTime? dataSenha,
    String? idTemp,
    bool? senhaCorreta,
  })  : _senha = senha,
        _dataSenha = dataSenha,
        _idTemp = idTemp,
        _senhaCorreta = senhaCorreta;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  set senha(String? val) => _senha = val;

  bool hasSenha() => _senha != null;

  // "data_senha" field.
  DateTime? _dataSenha;
  DateTime? get dataSenha => _dataSenha;
  set dataSenha(DateTime? val) => _dataSenha = val;

  bool hasDataSenha() => _dataSenha != null;

  // "id_temp" field.
  String? _idTemp;
  String get idTemp => _idTemp ?? '';
  set idTemp(String? val) => _idTemp = val;

  bool hasIdTemp() => _idTemp != null;

  // "senha_correta" field.
  bool? _senhaCorreta;
  bool get senhaCorreta => _senhaCorreta ?? false;
  set senhaCorreta(bool? val) => _senhaCorreta = val;

  bool hasSenhaCorreta() => _senhaCorreta != null;

  static TblVerificarSenhaStruct fromMap(Map<String, dynamic> data) =>
      TblVerificarSenhaStruct(
        senha: data['senha'] as String?,
        dataSenha: data['data_senha'] as DateTime?,
        idTemp: data['id_temp'] as String?,
        senhaCorreta: data['senha_correta'] as bool?,
      );

  static TblVerificarSenhaStruct? maybeFromMap(dynamic data) => data is Map
      ? TblVerificarSenhaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'senha': _senha,
        'data_senha': _dataSenha,
        'id_temp': _idTemp,
        'senha_correta': _senhaCorreta,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'senha': serializeParam(
          _senha,
          ParamType.String,
        ),
        'data_senha': serializeParam(
          _dataSenha,
          ParamType.DateTime,
        ),
        'id_temp': serializeParam(
          _idTemp,
          ParamType.String,
        ),
        'senha_correta': serializeParam(
          _senhaCorreta,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblVerificarSenhaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblVerificarSenhaStruct(
        senha: deserializeParam(
          data['senha'],
          ParamType.String,
          false,
        ),
        dataSenha: deserializeParam(
          data['data_senha'],
          ParamType.DateTime,
          false,
        ),
        idTemp: deserializeParam(
          data['id_temp'],
          ParamType.String,
          false,
        ),
        senhaCorreta: deserializeParam(
          data['senha_correta'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblVerificarSenhaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblVerificarSenhaStruct &&
        senha == other.senha &&
        dataSenha == other.dataSenha &&
        idTemp == other.idTemp &&
        senhaCorreta == other.senhaCorreta;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([senha, dataSenha, idTemp, senhaCorreta]);
}

TblVerificarSenhaStruct createTblVerificarSenhaStruct({
  String? senha,
  DateTime? dataSenha,
  String? idTemp,
  bool? senhaCorreta,
}) =>
    TblVerificarSenhaStruct(
      senha: senha,
      dataSenha: dataSenha,
      idTemp: idTemp,
      senhaCorreta: senhaCorreta,
    );
