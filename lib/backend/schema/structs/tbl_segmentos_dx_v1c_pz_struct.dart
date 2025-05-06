// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblSegmentosDxV1cPzStruct extends BaseStruct {
  TblSegmentosDxV1cPzStruct({
    int? id,
    String? nome,
    String? descricao,
    String? foto,
    int? ordem,
  })  : _id = id,
        _nome = nome,
        _descricao = descricao,
        _foto = foto,
        _ordem = ordem;

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

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  static TblSegmentosDxV1cPzStruct fromMap(Map<String, dynamic> data) =>
      TblSegmentosDxV1cPzStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        foto: data['foto'] as String?,
        ordem: castToType<int>(data['ordem']),
      );

  static TblSegmentosDxV1cPzStruct? maybeFromMap(dynamic data) => data is Map
      ? TblSegmentosDxV1cPzStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'descricao': _descricao,
        'foto': _foto,
        'ordem': _ordem,
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
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
      }.withoutNulls;

  static TblSegmentosDxV1cPzStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblSegmentosDxV1cPzStruct(
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
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TblSegmentosDxV1cPzStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblSegmentosDxV1cPzStruct &&
        id == other.id &&
        nome == other.nome &&
        descricao == other.descricao &&
        foto == other.foto &&
        ordem == other.ordem;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, nome, descricao, foto, ordem]);
}

TblSegmentosDxV1cPzStruct createTblSegmentosDxV1cPzStruct({
  int? id,
  String? nome,
  String? descricao,
  String? foto,
  int? ordem,
}) =>
    TblSegmentosDxV1cPzStruct(
      id: id,
      nome: nome,
      descricao: descricao,
      foto: foto,
      ordem: ordem,
    );
