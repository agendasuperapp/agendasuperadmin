// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblUsuarioLogadoAdminStruct extends BaseStruct {
  TblUsuarioLogadoAdminStruct({
    int? idUsuarioLogado,
    String? nome,
    String? email,
    String? telefone,
    String? fotoPerfil,
    int? idTipoUsuario,
    String? tipoUsuario,
    bool? bannedUntil,
    bool? deletedAt,
    bool? adminSistema,
  })  : _idUsuarioLogado = idUsuarioLogado,
        _nome = nome,
        _email = email,
        _telefone = telefone,
        _fotoPerfil = fotoPerfil,
        _idTipoUsuario = idTipoUsuario,
        _tipoUsuario = tipoUsuario,
        _bannedUntil = bannedUntil,
        _deletedAt = deletedAt,
        _adminSistema = adminSistema;

  // "id_usuario_logado" field.
  int? _idUsuarioLogado;
  int get idUsuarioLogado => _idUsuarioLogado ?? 0;
  set idUsuarioLogado(int? val) => _idUsuarioLogado = val;

  void incrementIdUsuarioLogado(int amount) =>
      idUsuarioLogado = idUsuarioLogado + amount;

  bool hasIdUsuarioLogado() => _idUsuarioLogado != null;

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

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  set fotoPerfil(String? val) => _fotoPerfil = val;

  bool hasFotoPerfil() => _fotoPerfil != null;

  // "id_tipo_usuario" field.
  int? _idTipoUsuario;
  int get idTipoUsuario => _idTipoUsuario ?? 0;
  set idTipoUsuario(int? val) => _idTipoUsuario = val;

  void incrementIdTipoUsuario(int amount) =>
      idTipoUsuario = idTipoUsuario + amount;

  bool hasIdTipoUsuario() => _idTipoUsuario != null;

  // "tipo_usuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  set tipoUsuario(String? val) => _tipoUsuario = val;

  bool hasTipoUsuario() => _tipoUsuario != null;

  // "banned_until" field.
  bool? _bannedUntil;
  bool get bannedUntil => _bannedUntil ?? false;
  set bannedUntil(bool? val) => _bannedUntil = val;

  bool hasBannedUntil() => _bannedUntil != null;

  // "deleted_at" field.
  bool? _deletedAt;
  bool get deletedAt => _deletedAt ?? false;
  set deletedAt(bool? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "admin_sistema" field.
  bool? _adminSistema;
  bool get adminSistema => _adminSistema ?? false;
  set adminSistema(bool? val) => _adminSistema = val;

  bool hasAdminSistema() => _adminSistema != null;

  static TblUsuarioLogadoAdminStruct fromMap(Map<String, dynamic> data) =>
      TblUsuarioLogadoAdminStruct(
        idUsuarioLogado: castToType<int>(data['id_usuario_logado']),
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
        idTipoUsuario: castToType<int>(data['id_tipo_usuario']),
        tipoUsuario: data['tipo_usuario'] as String?,
        bannedUntil: data['banned_until'] as bool?,
        deletedAt: data['deleted_at'] as bool?,
        adminSistema: data['admin_sistema'] as bool?,
      );

  static TblUsuarioLogadoAdminStruct? maybeFromMap(dynamic data) => data is Map
      ? TblUsuarioLogadoAdminStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_usuario_logado': _idUsuarioLogado,
        'nome': _nome,
        'email': _email,
        'telefone': _telefone,
        'foto_perfil': _fotoPerfil,
        'id_tipo_usuario': _idTipoUsuario,
        'tipo_usuario': _tipoUsuario,
        'banned_until': _bannedUntil,
        'deleted_at': _deletedAt,
        'admin_sistema': _adminSistema,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_usuario_logado': serializeParam(
          _idUsuarioLogado,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'foto_perfil': serializeParam(
          _fotoPerfil,
          ParamType.String,
        ),
        'id_tipo_usuario': serializeParam(
          _idTipoUsuario,
          ParamType.int,
        ),
        'tipo_usuario': serializeParam(
          _tipoUsuario,
          ParamType.String,
        ),
        'banned_until': serializeParam(
          _bannedUntil,
          ParamType.bool,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.bool,
        ),
        'admin_sistema': serializeParam(
          _adminSistema,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblUsuarioLogadoAdminStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblUsuarioLogadoAdminStruct(
        idUsuarioLogado: deserializeParam(
          data['id_usuario_logado'],
          ParamType.int,
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
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        fotoPerfil: deserializeParam(
          data['foto_perfil'],
          ParamType.String,
          false,
        ),
        idTipoUsuario: deserializeParam(
          data['id_tipo_usuario'],
          ParamType.int,
          false,
        ),
        tipoUsuario: deserializeParam(
          data['tipo_usuario'],
          ParamType.String,
          false,
        ),
        bannedUntil: deserializeParam(
          data['banned_until'],
          ParamType.bool,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.bool,
          false,
        ),
        adminSistema: deserializeParam(
          data['admin_sistema'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblUsuarioLogadoAdminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblUsuarioLogadoAdminStruct &&
        idUsuarioLogado == other.idUsuarioLogado &&
        nome == other.nome &&
        email == other.email &&
        telefone == other.telefone &&
        fotoPerfil == other.fotoPerfil &&
        idTipoUsuario == other.idTipoUsuario &&
        tipoUsuario == other.tipoUsuario &&
        bannedUntil == other.bannedUntil &&
        deletedAt == other.deletedAt &&
        adminSistema == other.adminSistema;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idUsuarioLogado,
        nome,
        email,
        telefone,
        fotoPerfil,
        idTipoUsuario,
        tipoUsuario,
        bannedUntil,
        deletedAt,
        adminSistema
      ]);
}

TblUsuarioLogadoAdminStruct createTblUsuarioLogadoAdminStruct({
  int? idUsuarioLogado,
  String? nome,
  String? email,
  String? telefone,
  String? fotoPerfil,
  int? idTipoUsuario,
  String? tipoUsuario,
  bool? bannedUntil,
  bool? deletedAt,
  bool? adminSistema,
}) =>
    TblUsuarioLogadoAdminStruct(
      idUsuarioLogado: idUsuarioLogado,
      nome: nome,
      email: email,
      telefone: telefone,
      fotoPerfil: fotoPerfil,
      idTipoUsuario: idTipoUsuario,
      tipoUsuario: tipoUsuario,
      bannedUntil: bannedUntil,
      deletedAt: deletedAt,
      adminSistema: adminSistema,
    );
