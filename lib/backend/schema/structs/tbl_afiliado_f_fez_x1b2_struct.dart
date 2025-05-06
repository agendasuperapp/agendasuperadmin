// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblAfiliadoFFezX1b2Struct extends BaseStruct {
  TblAfiliadoFFezX1b2Struct({
    int? id,
    String? nome,
    String? telefone,
    String? fotoPerfil,
    String? rua,
    String? numero,
    String? bairro,
    String? cidade,
    String? uf,
    String? cep,
    String? complemento,
    String? instagran,
    String? facebook,
    String? tiktok,
    String? username,
    String? tipoDoc,
    String? docCpfCnpj,
    String? inscEstadual,
    String? genero,
    DateTime? dataNascimento,
    String? statusAfiliacao,
    String? dataNascimentoString,
    bool? nfEmitida,
    DateTime? dataCadastro,
    DateTime? dataSaque,
    String? diaSemanaSaque,
  })  : _id = id,
        _nome = nome,
        _telefone = telefone,
        _fotoPerfil = fotoPerfil,
        _rua = rua,
        _numero = numero,
        _bairro = bairro,
        _cidade = cidade,
        _uf = uf,
        _cep = cep,
        _complemento = complemento,
        _instagran = instagran,
        _facebook = facebook,
        _tiktok = tiktok,
        _username = username,
        _tipoDoc = tipoDoc,
        _docCpfCnpj = docCpfCnpj,
        _inscEstadual = inscEstadual,
        _genero = genero,
        _dataNascimento = dataNascimento,
        _statusAfiliacao = statusAfiliacao,
        _dataNascimentoString = dataNascimentoString,
        _nfEmitida = nfEmitida,
        _dataCadastro = dataCadastro,
        _dataSaque = dataSaque,
        _diaSemanaSaque = diaSemanaSaque;

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

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  set rua(String? val) => _rua = val;

  bool hasRua() => _rua != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;

  bool hasUf() => _uf != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "instagran" field.
  String? _instagran;
  String get instagran => _instagran ?? '';
  set instagran(String? val) => _instagran = val;

  bool hasInstagran() => _instagran != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  set facebook(String? val) => _facebook = val;

  bool hasFacebook() => _facebook != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  set tiktok(String? val) => _tiktok = val;

  bool hasTiktok() => _tiktok != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "tipo_doc" field.
  String? _tipoDoc;
  String get tipoDoc => _tipoDoc ?? '';
  set tipoDoc(String? val) => _tipoDoc = val;

  bool hasTipoDoc() => _tipoDoc != null;

  // "doc_cpf_cnpj" field.
  String? _docCpfCnpj;
  String get docCpfCnpj => _docCpfCnpj ?? '';
  set docCpfCnpj(String? val) => _docCpfCnpj = val;

  bool hasDocCpfCnpj() => _docCpfCnpj != null;

  // "insc_estadual" field.
  String? _inscEstadual;
  String get inscEstadual => _inscEstadual ?? '';
  set inscEstadual(String? val) => _inscEstadual = val;

  bool hasInscEstadual() => _inscEstadual != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  set genero(String? val) => _genero = val;

  bool hasGenero() => _genero != null;

  // "data_nascimento" field.
  DateTime? _dataNascimento;
  DateTime? get dataNascimento => _dataNascimento;
  set dataNascimento(DateTime? val) => _dataNascimento = val;

  bool hasDataNascimento() => _dataNascimento != null;

  // "status_afiliacao" field.
  String? _statusAfiliacao;
  String get statusAfiliacao => _statusAfiliacao ?? '';
  set statusAfiliacao(String? val) => _statusAfiliacao = val;

  bool hasStatusAfiliacao() => _statusAfiliacao != null;

  // "data_nascimento_string" field.
  String? _dataNascimentoString;
  String get dataNascimentoString => _dataNascimentoString ?? '';
  set dataNascimentoString(String? val) => _dataNascimentoString = val;

  bool hasDataNascimentoString() => _dataNascimentoString != null;

  // "nf_emitida" field.
  bool? _nfEmitida;
  bool get nfEmitida => _nfEmitida ?? false;
  set nfEmitida(bool? val) => _nfEmitida = val;

  bool hasNfEmitida() => _nfEmitida != null;

  // "data_cadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  set dataCadastro(DateTime? val) => _dataCadastro = val;

  bool hasDataCadastro() => _dataCadastro != null;

  // "data_saque" field.
  DateTime? _dataSaque;
  DateTime? get dataSaque => _dataSaque;
  set dataSaque(DateTime? val) => _dataSaque = val;

  bool hasDataSaque() => _dataSaque != null;

  // "dia_semana_saque" field.
  String? _diaSemanaSaque;
  String get diaSemanaSaque => _diaSemanaSaque ?? '';
  set diaSemanaSaque(String? val) => _diaSemanaSaque = val;

  bool hasDiaSemanaSaque() => _diaSemanaSaque != null;

  static TblAfiliadoFFezX1b2Struct fromMap(Map<String, dynamic> data) =>
      TblAfiliadoFFezX1b2Struct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        telefone: data['telefone'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
        rua: data['rua'] as String?,
        numero: data['numero'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        uf: data['uf'] as String?,
        cep: data['cep'] as String?,
        complemento: data['complemento'] as String?,
        instagran: data['instagran'] as String?,
        facebook: data['facebook'] as String?,
        tiktok: data['tiktok'] as String?,
        username: data['username'] as String?,
        tipoDoc: data['tipo_doc'] as String?,
        docCpfCnpj: data['doc_cpf_cnpj'] as String?,
        inscEstadual: data['insc_estadual'] as String?,
        genero: data['genero'] as String?,
        dataNascimento: data['data_nascimento'] as DateTime?,
        statusAfiliacao: data['status_afiliacao'] as String?,
        dataNascimentoString: data['data_nascimento_string'] as String?,
        nfEmitida: data['nf_emitida'] as bool?,
        dataCadastro: data['data_cadastro'] as DateTime?,
        dataSaque: data['data_saque'] as DateTime?,
        diaSemanaSaque: data['dia_semana_saque'] as String?,
      );

  static TblAfiliadoFFezX1b2Struct? maybeFromMap(dynamic data) => data is Map
      ? TblAfiliadoFFezX1b2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'telefone': _telefone,
        'foto_perfil': _fotoPerfil,
        'rua': _rua,
        'numero': _numero,
        'bairro': _bairro,
        'cidade': _cidade,
        'uf': _uf,
        'cep': _cep,
        'complemento': _complemento,
        'instagran': _instagran,
        'facebook': _facebook,
        'tiktok': _tiktok,
        'username': _username,
        'tipo_doc': _tipoDoc,
        'doc_cpf_cnpj': _docCpfCnpj,
        'insc_estadual': _inscEstadual,
        'genero': _genero,
        'data_nascimento': _dataNascimento,
        'status_afiliacao': _statusAfiliacao,
        'data_nascimento_string': _dataNascimentoString,
        'nf_emitida': _nfEmitida,
        'data_cadastro': _dataCadastro,
        'data_saque': _dataSaque,
        'dia_semana_saque': _diaSemanaSaque,
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
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'foto_perfil': serializeParam(
          _fotoPerfil,
          ParamType.String,
        ),
        'rua': serializeParam(
          _rua,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'uf': serializeParam(
          _uf,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'instagran': serializeParam(
          _instagran,
          ParamType.String,
        ),
        'facebook': serializeParam(
          _facebook,
          ParamType.String,
        ),
        'tiktok': serializeParam(
          _tiktok,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'tipo_doc': serializeParam(
          _tipoDoc,
          ParamType.String,
        ),
        'doc_cpf_cnpj': serializeParam(
          _docCpfCnpj,
          ParamType.String,
        ),
        'insc_estadual': serializeParam(
          _inscEstadual,
          ParamType.String,
        ),
        'genero': serializeParam(
          _genero,
          ParamType.String,
        ),
        'data_nascimento': serializeParam(
          _dataNascimento,
          ParamType.DateTime,
        ),
        'status_afiliacao': serializeParam(
          _statusAfiliacao,
          ParamType.String,
        ),
        'data_nascimento_string': serializeParam(
          _dataNascimentoString,
          ParamType.String,
        ),
        'nf_emitida': serializeParam(
          _nfEmitida,
          ParamType.bool,
        ),
        'data_cadastro': serializeParam(
          _dataCadastro,
          ParamType.DateTime,
        ),
        'data_saque': serializeParam(
          _dataSaque,
          ParamType.DateTime,
        ),
        'dia_semana_saque': serializeParam(
          _diaSemanaSaque,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblAfiliadoFFezX1b2Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblAfiliadoFFezX1b2Struct(
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
        rua: deserializeParam(
          data['rua'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        uf: deserializeParam(
          data['uf'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        instagran: deserializeParam(
          data['instagran'],
          ParamType.String,
          false,
        ),
        facebook: deserializeParam(
          data['facebook'],
          ParamType.String,
          false,
        ),
        tiktok: deserializeParam(
          data['tiktok'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        tipoDoc: deserializeParam(
          data['tipo_doc'],
          ParamType.String,
          false,
        ),
        docCpfCnpj: deserializeParam(
          data['doc_cpf_cnpj'],
          ParamType.String,
          false,
        ),
        inscEstadual: deserializeParam(
          data['insc_estadual'],
          ParamType.String,
          false,
        ),
        genero: deserializeParam(
          data['genero'],
          ParamType.String,
          false,
        ),
        dataNascimento: deserializeParam(
          data['data_nascimento'],
          ParamType.DateTime,
          false,
        ),
        statusAfiliacao: deserializeParam(
          data['status_afiliacao'],
          ParamType.String,
          false,
        ),
        dataNascimentoString: deserializeParam(
          data['data_nascimento_string'],
          ParamType.String,
          false,
        ),
        nfEmitida: deserializeParam(
          data['nf_emitida'],
          ParamType.bool,
          false,
        ),
        dataCadastro: deserializeParam(
          data['data_cadastro'],
          ParamType.DateTime,
          false,
        ),
        dataSaque: deserializeParam(
          data['data_saque'],
          ParamType.DateTime,
          false,
        ),
        diaSemanaSaque: deserializeParam(
          data['dia_semana_saque'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblAfiliadoFFezX1b2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblAfiliadoFFezX1b2Struct &&
        id == other.id &&
        nome == other.nome &&
        telefone == other.telefone &&
        fotoPerfil == other.fotoPerfil &&
        rua == other.rua &&
        numero == other.numero &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        uf == other.uf &&
        cep == other.cep &&
        complemento == other.complemento &&
        instagran == other.instagran &&
        facebook == other.facebook &&
        tiktok == other.tiktok &&
        username == other.username &&
        tipoDoc == other.tipoDoc &&
        docCpfCnpj == other.docCpfCnpj &&
        inscEstadual == other.inscEstadual &&
        genero == other.genero &&
        dataNascimento == other.dataNascimento &&
        statusAfiliacao == other.statusAfiliacao &&
        dataNascimentoString == other.dataNascimentoString &&
        nfEmitida == other.nfEmitida &&
        dataCadastro == other.dataCadastro &&
        dataSaque == other.dataSaque &&
        diaSemanaSaque == other.diaSemanaSaque;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        telefone,
        fotoPerfil,
        rua,
        numero,
        bairro,
        cidade,
        uf,
        cep,
        complemento,
        instagran,
        facebook,
        tiktok,
        username,
        tipoDoc,
        docCpfCnpj,
        inscEstadual,
        genero,
        dataNascimento,
        statusAfiliacao,
        dataNascimentoString,
        nfEmitida,
        dataCadastro,
        dataSaque,
        diaSemanaSaque
      ]);
}

TblAfiliadoFFezX1b2Struct createTblAfiliadoFFezX1b2Struct({
  int? id,
  String? nome,
  String? telefone,
  String? fotoPerfil,
  String? rua,
  String? numero,
  String? bairro,
  String? cidade,
  String? uf,
  String? cep,
  String? complemento,
  String? instagran,
  String? facebook,
  String? tiktok,
  String? username,
  String? tipoDoc,
  String? docCpfCnpj,
  String? inscEstadual,
  String? genero,
  DateTime? dataNascimento,
  String? statusAfiliacao,
  String? dataNascimentoString,
  bool? nfEmitida,
  DateTime? dataCadastro,
  DateTime? dataSaque,
  String? diaSemanaSaque,
}) =>
    TblAfiliadoFFezX1b2Struct(
      id: id,
      nome: nome,
      telefone: telefone,
      fotoPerfil: fotoPerfil,
      rua: rua,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
      cep: cep,
      complemento: complemento,
      instagran: instagran,
      facebook: facebook,
      tiktok: tiktok,
      username: username,
      tipoDoc: tipoDoc,
      docCpfCnpj: docCpfCnpj,
      inscEstadual: inscEstadual,
      genero: genero,
      dataNascimento: dataNascimento,
      statusAfiliacao: statusAfiliacao,
      dataNascimentoString: dataNascimentoString,
      nfEmitida: nfEmitida,
      dataCadastro: dataCadastro,
      dataSaque: dataSaque,
      diaSemanaSaque: diaSemanaSaque,
    );
