// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblModelosBannersXTfv1c8Struct extends BaseStruct {
  TblModelosBannersXTfv1c8Struct({
    int? id,
    String? nome,
    bool? situacao,
    bool? escuro,
    String? foto,
  })  : _id = id,
        _nome = nome,
        _situacao = situacao,
        _escuro = escuro,
        _foto = foto;

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

  // "situacao" field.
  bool? _situacao;
  bool get situacao => _situacao ?? false;
  set situacao(bool? val) => _situacao = val;

  bool hasSituacao() => _situacao != null;

  // "escuro" field.
  bool? _escuro;
  bool get escuro => _escuro ?? false;
  set escuro(bool? val) => _escuro = val;

  bool hasEscuro() => _escuro != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  static TblModelosBannersXTfv1c8Struct fromMap(Map<String, dynamic> data) =>
      TblModelosBannersXTfv1c8Struct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        situacao: data['situacao'] as bool?,
        escuro: data['escuro'] as bool?,
        foto: data['foto'] as String?,
      );

  static TblModelosBannersXTfv1c8Struct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblModelosBannersXTfv1c8Struct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'situacao': _situacao,
        'escuro': _escuro,
        'foto': _foto,
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
        'situacao': serializeParam(
          _situacao,
          ParamType.bool,
        ),
        'escuro': serializeParam(
          _escuro,
          ParamType.bool,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblModelosBannersXTfv1c8Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblModelosBannersXTfv1c8Struct(
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
        situacao: deserializeParam(
          data['situacao'],
          ParamType.bool,
          false,
        ),
        escuro: deserializeParam(
          data['escuro'],
          ParamType.bool,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblModelosBannersXTfv1c8Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblModelosBannersXTfv1c8Struct &&
        id == other.id &&
        nome == other.nome &&
        situacao == other.situacao &&
        escuro == other.escuro &&
        foto == other.foto;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nome, situacao, escuro, foto]);
}

TblModelosBannersXTfv1c8Struct createTblModelosBannersXTfv1c8Struct({
  int? id,
  String? nome,
  bool? situacao,
  bool? escuro,
  String? foto,
}) =>
    TblModelosBannersXTfv1c8Struct(
      id: id,
      nome: nome,
      situacao: situacao,
      escuro: escuro,
      foto: foto,
    );
