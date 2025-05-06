// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblClienteLogadoStruct extends BaseStruct {
  TblClienteLogadoStruct({
    int? id,
    String? foto,
    String? nome,
    String? email,
    bool? emailVerificado,
    String? telefone,
    bool? telefoneVerificado,
  })  : _id = id,
        _foto = foto,
        _nome = nome,
        _email = email,
        _emailVerificado = emailVerificado,
        _telefone = telefone,
        _telefoneVerificado = telefoneVerificado;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "email_verificado" field.
  bool? _emailVerificado;
  bool get emailVerificado => _emailVerificado ?? false;
  set emailVerificado(bool? val) => _emailVerificado = val;

  bool hasEmailVerificado() => _emailVerificado != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "telefone_verificado" field.
  bool? _telefoneVerificado;
  bool get telefoneVerificado => _telefoneVerificado ?? false;
  set telefoneVerificado(bool? val) => _telefoneVerificado = val;

  bool hasTelefoneVerificado() => _telefoneVerificado != null;

  static TblClienteLogadoStruct fromMap(Map<String, dynamic> data) =>
      TblClienteLogadoStruct(
        id: castToType<int>(data['id']),
        foto: data['foto'] as String?,
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        emailVerificado: data['email_verificado'] as bool?,
        telefone: data['telefone'] as String?,
        telefoneVerificado: data['telefone_verificado'] as bool?,
      );

  static TblClienteLogadoStruct? maybeFromMap(dynamic data) => data is Map
      ? TblClienteLogadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'foto': _foto,
        'nome': _nome,
        'email': _email,
        'email_verificado': _emailVerificado,
        'telefone': _telefone,
        'telefone_verificado': _telefoneVerificado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'email_verificado': serializeParam(
          _emailVerificado,
          ParamType.bool,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'telefone_verificado': serializeParam(
          _telefoneVerificado,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblClienteLogadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblClienteLogadoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emailVerificado: deserializeParam(
          data['email_verificado'],
          ParamType.bool,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        telefoneVerificado: deserializeParam(
          data['telefone_verificado'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblClienteLogadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblClienteLogadoStruct &&
        id == other.id &&
        foto == other.foto &&
        nome == other.nome &&
        email == other.email &&
        emailVerificado == other.emailVerificado &&
        telefone == other.telefone &&
        telefoneVerificado == other.telefoneVerificado;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, foto, nome, email, emailVerificado, telefone, telefoneVerificado]);
}

TblClienteLogadoStruct createTblClienteLogadoStruct({
  int? id,
  String? foto,
  String? nome,
  String? email,
  bool? emailVerificado,
  String? telefone,
  bool? telefoneVerificado,
}) =>
    TblClienteLogadoStruct(
      id: id,
      foto: foto,
      nome: nome,
      email: email,
      emailVerificado: emailVerificado,
      telefone: telefone,
      telefoneVerificado: telefoneVerificado,
    );
