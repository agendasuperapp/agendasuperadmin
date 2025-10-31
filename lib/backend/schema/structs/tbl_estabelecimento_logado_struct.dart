// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblEstabelecimentoLogadoStruct extends BaseStruct {
  TblEstabelecimentoLogadoStruct({
    int? idEstabelecimento,
    String? nomeEstabelecimento,
    String? nomeCabecalho,
    String? emailEstabelecimento,
    String? telefoneEstabelecimento,
    String? foto,
    String? fotoPerfil,
    String? username,
    int? idTema,
    String? fotoLightMode,
    String? fotoDarkMod,
    bool? emailVerificado,
    bool? telefoneVerificado,
    bool? cfUsarEstAprovarAgend,
    bool? cfUsarClConfirmarAgend,
    bool? cfEnvMensWhatsAprovar,
    int? cfMinutosLembreteCl,
    String? userId,
    String? tipoDoc,
    String? docCpfCnpj,
    String? inscEstadual,
    DateTime? dataNascimento,
    String? dataNascimentoString,
    String? nomePfisicaRazsocial,
    String? nomeFantasia,
    String? cep,
    String? rua,
    String? numero,
    String? bairro,
    String? cidade,
    String? uf,
    String? nomeEstado,
    String? complemento,
    int? idAfiliadoIndicador,
    String? userIdAfiliadoIndicador,
    String? genero,
    bool? planoAtivo,
    DateTime? planoVencimento,
    int? planoDiasRest,
    bool? planoVencido,
    bool? planoRenovacao,
    int? quantProfissionaisMax,
    bool? assistenteCadConcluido,
    List<String>? formasPagamento,
    List<String>? comodidades,
    int? idSegmento,
    String? nomeSegmento,
    bool? assinatura,
    String? statusPagamento,
  })  : _idEstabelecimento = idEstabelecimento,
        _nomeEstabelecimento = nomeEstabelecimento,
        _nomeCabecalho = nomeCabecalho,
        _emailEstabelecimento = emailEstabelecimento,
        _telefoneEstabelecimento = telefoneEstabelecimento,
        _foto = foto,
        _fotoPerfil = fotoPerfil,
        _username = username,
        _idTema = idTema,
        _fotoLightMode = fotoLightMode,
        _fotoDarkMod = fotoDarkMod,
        _emailVerificado = emailVerificado,
        _telefoneVerificado = telefoneVerificado,
        _cfUsarEstAprovarAgend = cfUsarEstAprovarAgend,
        _cfUsarClConfirmarAgend = cfUsarClConfirmarAgend,
        _cfEnvMensWhatsAprovar = cfEnvMensWhatsAprovar,
        _cfMinutosLembreteCl = cfMinutosLembreteCl,
        _userId = userId,
        _tipoDoc = tipoDoc,
        _docCpfCnpj = docCpfCnpj,
        _inscEstadual = inscEstadual,
        _dataNascimento = dataNascimento,
        _dataNascimentoString = dataNascimentoString,
        _nomePfisicaRazsocial = nomePfisicaRazsocial,
        _nomeFantasia = nomeFantasia,
        _cep = cep,
        _rua = rua,
        _numero = numero,
        _bairro = bairro,
        _cidade = cidade,
        _uf = uf,
        _nomeEstado = nomeEstado,
        _complemento = complemento,
        _idAfiliadoIndicador = idAfiliadoIndicador,
        _userIdAfiliadoIndicador = userIdAfiliadoIndicador,
        _genero = genero,
        _planoAtivo = planoAtivo,
        _planoVencimento = planoVencimento,
        _planoDiasRest = planoDiasRest,
        _planoVencido = planoVencido,
        _planoRenovacao = planoRenovacao,
        _quantProfissionaisMax = quantProfissionaisMax,
        _assistenteCadConcluido = assistenteCadConcluido,
        _formasPagamento = formasPagamento,
        _comodidades = comodidades,
        _idSegmento = idSegmento,
        _nomeSegmento = nomeSegmento,
        _assinatura = assinatura,
        _statusPagamento = statusPagamento;

  // "id_estabelecimento" field.
  int? _idEstabelecimento;
  int get idEstabelecimento => _idEstabelecimento ?? 0;
  set idEstabelecimento(int? val) => _idEstabelecimento = val;

  void incrementIdEstabelecimento(int amount) =>
      idEstabelecimento = idEstabelecimento + amount;

  bool hasIdEstabelecimento() => _idEstabelecimento != null;

  // "nome_estabelecimento" field.
  String? _nomeEstabelecimento;
  String get nomeEstabelecimento => _nomeEstabelecimento ?? '';
  set nomeEstabelecimento(String? val) => _nomeEstabelecimento = val;

  bool hasNomeEstabelecimento() => _nomeEstabelecimento != null;

  // "nome_cabecalho" field.
  String? _nomeCabecalho;
  String get nomeCabecalho => _nomeCabecalho ?? '';
  set nomeCabecalho(String? val) => _nomeCabecalho = val;

  bool hasNomeCabecalho() => _nomeCabecalho != null;

  // "email_estabelecimento" field.
  String? _emailEstabelecimento;
  String get emailEstabelecimento => _emailEstabelecimento ?? '';
  set emailEstabelecimento(String? val) => _emailEstabelecimento = val;

  bool hasEmailEstabelecimento() => _emailEstabelecimento != null;

  // "telefone_estabelecimento" field.
  String? _telefoneEstabelecimento;
  String get telefoneEstabelecimento => _telefoneEstabelecimento ?? '';
  set telefoneEstabelecimento(String? val) => _telefoneEstabelecimento = val;

  bool hasTelefoneEstabelecimento() => _telefoneEstabelecimento != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  set fotoPerfil(String? val) => _fotoPerfil = val;

  bool hasFotoPerfil() => _fotoPerfil != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "id_tema" field.
  int? _idTema;
  int get idTema => _idTema ?? 0;
  set idTema(int? val) => _idTema = val;

  void incrementIdTema(int amount) => idTema = idTema + amount;

  bool hasIdTema() => _idTema != null;

  // "foto_light_mode" field.
  String? _fotoLightMode;
  String get fotoLightMode => _fotoLightMode ?? '';
  set fotoLightMode(String? val) => _fotoLightMode = val;

  bool hasFotoLightMode() => _fotoLightMode != null;

  // "foto_dark_mod" field.
  String? _fotoDarkMod;
  String get fotoDarkMod => _fotoDarkMod ?? '';
  set fotoDarkMod(String? val) => _fotoDarkMod = val;

  bool hasFotoDarkMod() => _fotoDarkMod != null;

  // "email_verificado" field.
  bool? _emailVerificado;
  bool get emailVerificado => _emailVerificado ?? false;
  set emailVerificado(bool? val) => _emailVerificado = val;

  bool hasEmailVerificado() => _emailVerificado != null;

  // "telefone_verificado" field.
  bool? _telefoneVerificado;
  bool get telefoneVerificado => _telefoneVerificado ?? false;
  set telefoneVerificado(bool? val) => _telefoneVerificado = val;

  bool hasTelefoneVerificado() => _telefoneVerificado != null;

  // "cf_usar_est_aprovar_agend" field.
  bool? _cfUsarEstAprovarAgend;
  bool get cfUsarEstAprovarAgend => _cfUsarEstAprovarAgend ?? false;
  set cfUsarEstAprovarAgend(bool? val) => _cfUsarEstAprovarAgend = val;

  bool hasCfUsarEstAprovarAgend() => _cfUsarEstAprovarAgend != null;

  // "cf_usar_cl_confirmar_agend" field.
  bool? _cfUsarClConfirmarAgend;
  bool get cfUsarClConfirmarAgend => _cfUsarClConfirmarAgend ?? false;
  set cfUsarClConfirmarAgend(bool? val) => _cfUsarClConfirmarAgend = val;

  bool hasCfUsarClConfirmarAgend() => _cfUsarClConfirmarAgend != null;

  // "cf_env_mens_whats_aprovar" field.
  bool? _cfEnvMensWhatsAprovar;
  bool get cfEnvMensWhatsAprovar => _cfEnvMensWhatsAprovar ?? false;
  set cfEnvMensWhatsAprovar(bool? val) => _cfEnvMensWhatsAprovar = val;

  bool hasCfEnvMensWhatsAprovar() => _cfEnvMensWhatsAprovar != null;

  // "cf_minutos_lembrete_cl" field.
  int? _cfMinutosLembreteCl;
  int get cfMinutosLembreteCl => _cfMinutosLembreteCl ?? 0;
  set cfMinutosLembreteCl(int? val) => _cfMinutosLembreteCl = val;

  void incrementCfMinutosLembreteCl(int amount) =>
      cfMinutosLembreteCl = cfMinutosLembreteCl + amount;

  bool hasCfMinutosLembreteCl() => _cfMinutosLembreteCl != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

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

  // "data_nascimento" field.
  DateTime? _dataNascimento;
  DateTime? get dataNascimento => _dataNascimento;
  set dataNascimento(DateTime? val) => _dataNascimento = val;

  bool hasDataNascimento() => _dataNascimento != null;

  // "data_nascimento_string" field.
  String? _dataNascimentoString;
  String get dataNascimentoString => _dataNascimentoString ?? '';
  set dataNascimentoString(String? val) => _dataNascimentoString = val;

  bool hasDataNascimentoString() => _dataNascimentoString != null;

  // "nome_pfisica_razsocial" field.
  String? _nomePfisicaRazsocial;
  String get nomePfisicaRazsocial => _nomePfisicaRazsocial ?? '';
  set nomePfisicaRazsocial(String? val) => _nomePfisicaRazsocial = val;

  bool hasNomePfisicaRazsocial() => _nomePfisicaRazsocial != null;

  // "nome_fantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  set nomeFantasia(String? val) => _nomeFantasia = val;

  bool hasNomeFantasia() => _nomeFantasia != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

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

  // "nome_estado" field.
  String? _nomeEstado;
  String get nomeEstado => _nomeEstado ?? '';
  set nomeEstado(String? val) => _nomeEstado = val;

  bool hasNomeEstado() => _nomeEstado != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "id_afiliado_indicador" field.
  int? _idAfiliadoIndicador;
  int get idAfiliadoIndicador => _idAfiliadoIndicador ?? 0;
  set idAfiliadoIndicador(int? val) => _idAfiliadoIndicador = val;

  void incrementIdAfiliadoIndicador(int amount) =>
      idAfiliadoIndicador = idAfiliadoIndicador + amount;

  bool hasIdAfiliadoIndicador() => _idAfiliadoIndicador != null;

  // "user_id_afiliado_indicador" field.
  String? _userIdAfiliadoIndicador;
  String get userIdAfiliadoIndicador => _userIdAfiliadoIndicador ?? '';
  set userIdAfiliadoIndicador(String? val) => _userIdAfiliadoIndicador = val;

  bool hasUserIdAfiliadoIndicador() => _userIdAfiliadoIndicador != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  set genero(String? val) => _genero = val;

  bool hasGenero() => _genero != null;

  // "plano_ativo" field.
  bool? _planoAtivo;
  bool get planoAtivo => _planoAtivo ?? false;
  set planoAtivo(bool? val) => _planoAtivo = val;

  bool hasPlanoAtivo() => _planoAtivo != null;

  // "plano_vencimento" field.
  DateTime? _planoVencimento;
  DateTime? get planoVencimento => _planoVencimento;
  set planoVencimento(DateTime? val) => _planoVencimento = val;

  bool hasPlanoVencimento() => _planoVencimento != null;

  // "plano_dias_rest" field.
  int? _planoDiasRest;
  int get planoDiasRest => _planoDiasRest ?? 0;
  set planoDiasRest(int? val) => _planoDiasRest = val;

  void incrementPlanoDiasRest(int amount) =>
      planoDiasRest = planoDiasRest + amount;

  bool hasPlanoDiasRest() => _planoDiasRest != null;

  // "plano_vencido" field.
  bool? _planoVencido;
  bool get planoVencido => _planoVencido ?? false;
  set planoVencido(bool? val) => _planoVencido = val;

  bool hasPlanoVencido() => _planoVencido != null;

  // "plano_renovacao" field.
  bool? _planoRenovacao;
  bool get planoRenovacao => _planoRenovacao ?? false;
  set planoRenovacao(bool? val) => _planoRenovacao = val;

  bool hasPlanoRenovacao() => _planoRenovacao != null;

  // "quant_profissionais_max" field.
  int? _quantProfissionaisMax;
  int get quantProfissionaisMax => _quantProfissionaisMax ?? 0;
  set quantProfissionaisMax(int? val) => _quantProfissionaisMax = val;

  void incrementQuantProfissionaisMax(int amount) =>
      quantProfissionaisMax = quantProfissionaisMax + amount;

  bool hasQuantProfissionaisMax() => _quantProfissionaisMax != null;

  // "assistente_cad_concluido" field.
  bool? _assistenteCadConcluido;
  bool get assistenteCadConcluido => _assistenteCadConcluido ?? false;
  set assistenteCadConcluido(bool? val) => _assistenteCadConcluido = val;

  bool hasAssistenteCadConcluido() => _assistenteCadConcluido != null;

  // "formas_pagamento" field.
  List<String>? _formasPagamento;
  List<String> get formasPagamento => _formasPagamento ?? const [];
  set formasPagamento(List<String>? val) => _formasPagamento = val;

  void updateFormasPagamento(Function(List<String>) updateFn) {
    updateFn(_formasPagamento ??= []);
  }

  bool hasFormasPagamento() => _formasPagamento != null;

  // "comodidades" field.
  List<String>? _comodidades;
  List<String> get comodidades => _comodidades ?? const [];
  set comodidades(List<String>? val) => _comodidades = val;

  void updateComodidades(Function(List<String>) updateFn) {
    updateFn(_comodidades ??= []);
  }

  bool hasComodidades() => _comodidades != null;

  // "id_segmento" field.
  int? _idSegmento;
  int get idSegmento => _idSegmento ?? 0;
  set idSegmento(int? val) => _idSegmento = val;

  void incrementIdSegmento(int amount) => idSegmento = idSegmento + amount;

  bool hasIdSegmento() => _idSegmento != null;

  // "nome_segmento" field.
  String? _nomeSegmento;
  String get nomeSegmento => _nomeSegmento ?? '';
  set nomeSegmento(String? val) => _nomeSegmento = val;

  bool hasNomeSegmento() => _nomeSegmento != null;

  // "assinatura" field.
  bool? _assinatura;
  bool get assinatura => _assinatura ?? false;
  set assinatura(bool? val) => _assinatura = val;

  bool hasAssinatura() => _assinatura != null;

  // "status_pagamento" field.
  String? _statusPagamento;
  String get statusPagamento => _statusPagamento ?? '';
  set statusPagamento(String? val) => _statusPagamento = val;

  bool hasStatusPagamento() => _statusPagamento != null;

  static TblEstabelecimentoLogadoStruct fromMap(Map<String, dynamic> data) =>
      TblEstabelecimentoLogadoStruct(
        idEstabelecimento: castToType<int>(data['id_estabelecimento']),
        nomeEstabelecimento: data['nome_estabelecimento'] as String?,
        nomeCabecalho: data['nome_cabecalho'] as String?,
        emailEstabelecimento: data['email_estabelecimento'] as String?,
        telefoneEstabelecimento: data['telefone_estabelecimento'] as String?,
        foto: data['foto'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
        username: data['username'] as String?,
        idTema: castToType<int>(data['id_tema']),
        fotoLightMode: data['foto_light_mode'] as String?,
        fotoDarkMod: data['foto_dark_mod'] as String?,
        emailVerificado: data['email_verificado'] as bool?,
        telefoneVerificado: data['telefone_verificado'] as bool?,
        cfUsarEstAprovarAgend: data['cf_usar_est_aprovar_agend'] as bool?,
        cfUsarClConfirmarAgend: data['cf_usar_cl_confirmar_agend'] as bool?,
        cfEnvMensWhatsAprovar: data['cf_env_mens_whats_aprovar'] as bool?,
        cfMinutosLembreteCl: castToType<int>(data['cf_minutos_lembrete_cl']),
        userId: data['user_id'] as String?,
        tipoDoc: data['tipo_doc'] as String?,
        docCpfCnpj: data['doc_cpf_cnpj'] as String?,
        inscEstadual: data['insc_estadual'] as String?,
        dataNascimento: data['data_nascimento'] as DateTime?,
        dataNascimentoString: data['data_nascimento_string'] as String?,
        nomePfisicaRazsocial: data['nome_pfisica_razsocial'] as String?,
        nomeFantasia: data['nome_fantasia'] as String?,
        cep: data['cep'] as String?,
        rua: data['rua'] as String?,
        numero: data['numero'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        uf: data['uf'] as String?,
        nomeEstado: data['nome_estado'] as String?,
        complemento: data['complemento'] as String?,
        idAfiliadoIndicador: castToType<int>(data['id_afiliado_indicador']),
        userIdAfiliadoIndicador: data['user_id_afiliado_indicador'] as String?,
        genero: data['genero'] as String?,
        planoAtivo: data['plano_ativo'] as bool?,
        planoVencimento: data['plano_vencimento'] as DateTime?,
        planoDiasRest: castToType<int>(data['plano_dias_rest']),
        planoVencido: data['plano_vencido'] as bool?,
        planoRenovacao: data['plano_renovacao'] as bool?,
        quantProfissionaisMax: castToType<int>(data['quant_profissionais_max']),
        assistenteCadConcluido: data['assistente_cad_concluido'] as bool?,
        formasPagamento: getDataList(data['formas_pagamento']),
        comodidades: getDataList(data['comodidades']),
        idSegmento: castToType<int>(data['id_segmento']),
        nomeSegmento: data['nome_segmento'] as String?,
        assinatura: data['assinatura'] as bool?,
        statusPagamento: data['status_pagamento'] as String?,
      );

  static TblEstabelecimentoLogadoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblEstabelecimentoLogadoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id_estabelecimento': _idEstabelecimento,
        'nome_estabelecimento': _nomeEstabelecimento,
        'nome_cabecalho': _nomeCabecalho,
        'email_estabelecimento': _emailEstabelecimento,
        'telefone_estabelecimento': _telefoneEstabelecimento,
        'foto': _foto,
        'foto_perfil': _fotoPerfil,
        'username': _username,
        'id_tema': _idTema,
        'foto_light_mode': _fotoLightMode,
        'foto_dark_mod': _fotoDarkMod,
        'email_verificado': _emailVerificado,
        'telefone_verificado': _telefoneVerificado,
        'cf_usar_est_aprovar_agend': _cfUsarEstAprovarAgend,
        'cf_usar_cl_confirmar_agend': _cfUsarClConfirmarAgend,
        'cf_env_mens_whats_aprovar': _cfEnvMensWhatsAprovar,
        'cf_minutos_lembrete_cl': _cfMinutosLembreteCl,
        'user_id': _userId,
        'tipo_doc': _tipoDoc,
        'doc_cpf_cnpj': _docCpfCnpj,
        'insc_estadual': _inscEstadual,
        'data_nascimento': _dataNascimento,
        'data_nascimento_string': _dataNascimentoString,
        'nome_pfisica_razsocial': _nomePfisicaRazsocial,
        'nome_fantasia': _nomeFantasia,
        'cep': _cep,
        'rua': _rua,
        'numero': _numero,
        'bairro': _bairro,
        'cidade': _cidade,
        'uf': _uf,
        'nome_estado': _nomeEstado,
        'complemento': _complemento,
        'id_afiliado_indicador': _idAfiliadoIndicador,
        'user_id_afiliado_indicador': _userIdAfiliadoIndicador,
        'genero': _genero,
        'plano_ativo': _planoAtivo,
        'plano_vencimento': _planoVencimento,
        'plano_dias_rest': _planoDiasRest,
        'plano_vencido': _planoVencido,
        'plano_renovacao': _planoRenovacao,
        'quant_profissionais_max': _quantProfissionaisMax,
        'assistente_cad_concluido': _assistenteCadConcluido,
        'formas_pagamento': _formasPagamento,
        'comodidades': _comodidades,
        'id_segmento': _idSegmento,
        'nome_segmento': _nomeSegmento,
        'assinatura': _assinatura,
        'status_pagamento': _statusPagamento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_estabelecimento': serializeParam(
          _idEstabelecimento,
          ParamType.int,
        ),
        'nome_estabelecimento': serializeParam(
          _nomeEstabelecimento,
          ParamType.String,
        ),
        'nome_cabecalho': serializeParam(
          _nomeCabecalho,
          ParamType.String,
        ),
        'email_estabelecimento': serializeParam(
          _emailEstabelecimento,
          ParamType.String,
        ),
        'telefone_estabelecimento': serializeParam(
          _telefoneEstabelecimento,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'foto_perfil': serializeParam(
          _fotoPerfil,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'id_tema': serializeParam(
          _idTema,
          ParamType.int,
        ),
        'foto_light_mode': serializeParam(
          _fotoLightMode,
          ParamType.String,
        ),
        'foto_dark_mod': serializeParam(
          _fotoDarkMod,
          ParamType.String,
        ),
        'email_verificado': serializeParam(
          _emailVerificado,
          ParamType.bool,
        ),
        'telefone_verificado': serializeParam(
          _telefoneVerificado,
          ParamType.bool,
        ),
        'cf_usar_est_aprovar_agend': serializeParam(
          _cfUsarEstAprovarAgend,
          ParamType.bool,
        ),
        'cf_usar_cl_confirmar_agend': serializeParam(
          _cfUsarClConfirmarAgend,
          ParamType.bool,
        ),
        'cf_env_mens_whats_aprovar': serializeParam(
          _cfEnvMensWhatsAprovar,
          ParamType.bool,
        ),
        'cf_minutos_lembrete_cl': serializeParam(
          _cfMinutosLembreteCl,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
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
        'data_nascimento': serializeParam(
          _dataNascimento,
          ParamType.DateTime,
        ),
        'data_nascimento_string': serializeParam(
          _dataNascimentoString,
          ParamType.String,
        ),
        'nome_pfisica_razsocial': serializeParam(
          _nomePfisicaRazsocial,
          ParamType.String,
        ),
        'nome_fantasia': serializeParam(
          _nomeFantasia,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
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
        'nome_estado': serializeParam(
          _nomeEstado,
          ParamType.String,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'id_afiliado_indicador': serializeParam(
          _idAfiliadoIndicador,
          ParamType.int,
        ),
        'user_id_afiliado_indicador': serializeParam(
          _userIdAfiliadoIndicador,
          ParamType.String,
        ),
        'genero': serializeParam(
          _genero,
          ParamType.String,
        ),
        'plano_ativo': serializeParam(
          _planoAtivo,
          ParamType.bool,
        ),
        'plano_vencimento': serializeParam(
          _planoVencimento,
          ParamType.DateTime,
        ),
        'plano_dias_rest': serializeParam(
          _planoDiasRest,
          ParamType.int,
        ),
        'plano_vencido': serializeParam(
          _planoVencido,
          ParamType.bool,
        ),
        'plano_renovacao': serializeParam(
          _planoRenovacao,
          ParamType.bool,
        ),
        'quant_profissionais_max': serializeParam(
          _quantProfissionaisMax,
          ParamType.int,
        ),
        'assistente_cad_concluido': serializeParam(
          _assistenteCadConcluido,
          ParamType.bool,
        ),
        'formas_pagamento': serializeParam(
          _formasPagamento,
          ParamType.String,
          isList: true,
        ),
        'comodidades': serializeParam(
          _comodidades,
          ParamType.String,
          isList: true,
        ),
        'id_segmento': serializeParam(
          _idSegmento,
          ParamType.int,
        ),
        'nome_segmento': serializeParam(
          _nomeSegmento,
          ParamType.String,
        ),
        'assinatura': serializeParam(
          _assinatura,
          ParamType.bool,
        ),
        'status_pagamento': serializeParam(
          _statusPagamento,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblEstabelecimentoLogadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblEstabelecimentoLogadoStruct(
        idEstabelecimento: deserializeParam(
          data['id_estabelecimento'],
          ParamType.int,
          false,
        ),
        nomeEstabelecimento: deserializeParam(
          data['nome_estabelecimento'],
          ParamType.String,
          false,
        ),
        nomeCabecalho: deserializeParam(
          data['nome_cabecalho'],
          ParamType.String,
          false,
        ),
        emailEstabelecimento: deserializeParam(
          data['email_estabelecimento'],
          ParamType.String,
          false,
        ),
        telefoneEstabelecimento: deserializeParam(
          data['telefone_estabelecimento'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        fotoPerfil: deserializeParam(
          data['foto_perfil'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        idTema: deserializeParam(
          data['id_tema'],
          ParamType.int,
          false,
        ),
        fotoLightMode: deserializeParam(
          data['foto_light_mode'],
          ParamType.String,
          false,
        ),
        fotoDarkMod: deserializeParam(
          data['foto_dark_mod'],
          ParamType.String,
          false,
        ),
        emailVerificado: deserializeParam(
          data['email_verificado'],
          ParamType.bool,
          false,
        ),
        telefoneVerificado: deserializeParam(
          data['telefone_verificado'],
          ParamType.bool,
          false,
        ),
        cfUsarEstAprovarAgend: deserializeParam(
          data['cf_usar_est_aprovar_agend'],
          ParamType.bool,
          false,
        ),
        cfUsarClConfirmarAgend: deserializeParam(
          data['cf_usar_cl_confirmar_agend'],
          ParamType.bool,
          false,
        ),
        cfEnvMensWhatsAprovar: deserializeParam(
          data['cf_env_mens_whats_aprovar'],
          ParamType.bool,
          false,
        ),
        cfMinutosLembreteCl: deserializeParam(
          data['cf_minutos_lembrete_cl'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
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
        dataNascimento: deserializeParam(
          data['data_nascimento'],
          ParamType.DateTime,
          false,
        ),
        dataNascimentoString: deserializeParam(
          data['data_nascimento_string'],
          ParamType.String,
          false,
        ),
        nomePfisicaRazsocial: deserializeParam(
          data['nome_pfisica_razsocial'],
          ParamType.String,
          false,
        ),
        nomeFantasia: deserializeParam(
          data['nome_fantasia'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
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
        nomeEstado: deserializeParam(
          data['nome_estado'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        idAfiliadoIndicador: deserializeParam(
          data['id_afiliado_indicador'],
          ParamType.int,
          false,
        ),
        userIdAfiliadoIndicador: deserializeParam(
          data['user_id_afiliado_indicador'],
          ParamType.String,
          false,
        ),
        genero: deserializeParam(
          data['genero'],
          ParamType.String,
          false,
        ),
        planoAtivo: deserializeParam(
          data['plano_ativo'],
          ParamType.bool,
          false,
        ),
        planoVencimento: deserializeParam(
          data['plano_vencimento'],
          ParamType.DateTime,
          false,
        ),
        planoDiasRest: deserializeParam(
          data['plano_dias_rest'],
          ParamType.int,
          false,
        ),
        planoVencido: deserializeParam(
          data['plano_vencido'],
          ParamType.bool,
          false,
        ),
        planoRenovacao: deserializeParam(
          data['plano_renovacao'],
          ParamType.bool,
          false,
        ),
        quantProfissionaisMax: deserializeParam(
          data['quant_profissionais_max'],
          ParamType.int,
          false,
        ),
        assistenteCadConcluido: deserializeParam(
          data['assistente_cad_concluido'],
          ParamType.bool,
          false,
        ),
        formasPagamento: deserializeParam<String>(
          data['formas_pagamento'],
          ParamType.String,
          true,
        ),
        comodidades: deserializeParam<String>(
          data['comodidades'],
          ParamType.String,
          true,
        ),
        idSegmento: deserializeParam(
          data['id_segmento'],
          ParamType.int,
          false,
        ),
        nomeSegmento: deserializeParam(
          data['nome_segmento'],
          ParamType.String,
          false,
        ),
        assinatura: deserializeParam(
          data['assinatura'],
          ParamType.bool,
          false,
        ),
        statusPagamento: deserializeParam(
          data['status_pagamento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblEstabelecimentoLogadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TblEstabelecimentoLogadoStruct &&
        idEstabelecimento == other.idEstabelecimento &&
        nomeEstabelecimento == other.nomeEstabelecimento &&
        nomeCabecalho == other.nomeCabecalho &&
        emailEstabelecimento == other.emailEstabelecimento &&
        telefoneEstabelecimento == other.telefoneEstabelecimento &&
        foto == other.foto &&
        fotoPerfil == other.fotoPerfil &&
        username == other.username &&
        idTema == other.idTema &&
        fotoLightMode == other.fotoLightMode &&
        fotoDarkMod == other.fotoDarkMod &&
        emailVerificado == other.emailVerificado &&
        telefoneVerificado == other.telefoneVerificado &&
        cfUsarEstAprovarAgend == other.cfUsarEstAprovarAgend &&
        cfUsarClConfirmarAgend == other.cfUsarClConfirmarAgend &&
        cfEnvMensWhatsAprovar == other.cfEnvMensWhatsAprovar &&
        cfMinutosLembreteCl == other.cfMinutosLembreteCl &&
        userId == other.userId &&
        tipoDoc == other.tipoDoc &&
        docCpfCnpj == other.docCpfCnpj &&
        inscEstadual == other.inscEstadual &&
        dataNascimento == other.dataNascimento &&
        dataNascimentoString == other.dataNascimentoString &&
        nomePfisicaRazsocial == other.nomePfisicaRazsocial &&
        nomeFantasia == other.nomeFantasia &&
        cep == other.cep &&
        rua == other.rua &&
        numero == other.numero &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        uf == other.uf &&
        nomeEstado == other.nomeEstado &&
        complemento == other.complemento &&
        idAfiliadoIndicador == other.idAfiliadoIndicador &&
        userIdAfiliadoIndicador == other.userIdAfiliadoIndicador &&
        genero == other.genero &&
        planoAtivo == other.planoAtivo &&
        planoVencimento == other.planoVencimento &&
        planoDiasRest == other.planoDiasRest &&
        planoVencido == other.planoVencido &&
        planoRenovacao == other.planoRenovacao &&
        quantProfissionaisMax == other.quantProfissionaisMax &&
        assistenteCadConcluido == other.assistenteCadConcluido &&
        listEquality.equals(formasPagamento, other.formasPagamento) &&
        listEquality.equals(comodidades, other.comodidades) &&
        idSegmento == other.idSegmento &&
        nomeSegmento == other.nomeSegmento &&
        assinatura == other.assinatura &&
        statusPagamento == other.statusPagamento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idEstabelecimento,
        nomeEstabelecimento,
        nomeCabecalho,
        emailEstabelecimento,
        telefoneEstabelecimento,
        foto,
        fotoPerfil,
        username,
        idTema,
        fotoLightMode,
        fotoDarkMod,
        emailVerificado,
        telefoneVerificado,
        cfUsarEstAprovarAgend,
        cfUsarClConfirmarAgend,
        cfEnvMensWhatsAprovar,
        cfMinutosLembreteCl,
        userId,
        tipoDoc,
        docCpfCnpj,
        inscEstadual,
        dataNascimento,
        dataNascimentoString,
        nomePfisicaRazsocial,
        nomeFantasia,
        cep,
        rua,
        numero,
        bairro,
        cidade,
        uf,
        nomeEstado,
        complemento,
        idAfiliadoIndicador,
        userIdAfiliadoIndicador,
        genero,
        planoAtivo,
        planoVencimento,
        planoDiasRest,
        planoVencido,
        planoRenovacao,
        quantProfissionaisMax,
        assistenteCadConcluido,
        formasPagamento,
        comodidades,
        idSegmento,
        nomeSegmento,
        assinatura,
        statusPagamento
      ]);
}

TblEstabelecimentoLogadoStruct createTblEstabelecimentoLogadoStruct({
  int? idEstabelecimento,
  String? nomeEstabelecimento,
  String? nomeCabecalho,
  String? emailEstabelecimento,
  String? telefoneEstabelecimento,
  String? foto,
  String? fotoPerfil,
  String? username,
  int? idTema,
  String? fotoLightMode,
  String? fotoDarkMod,
  bool? emailVerificado,
  bool? telefoneVerificado,
  bool? cfUsarEstAprovarAgend,
  bool? cfUsarClConfirmarAgend,
  bool? cfEnvMensWhatsAprovar,
  int? cfMinutosLembreteCl,
  String? userId,
  String? tipoDoc,
  String? docCpfCnpj,
  String? inscEstadual,
  DateTime? dataNascimento,
  String? dataNascimentoString,
  String? nomePfisicaRazsocial,
  String? nomeFantasia,
  String? cep,
  String? rua,
  String? numero,
  String? bairro,
  String? cidade,
  String? uf,
  String? nomeEstado,
  String? complemento,
  int? idAfiliadoIndicador,
  String? userIdAfiliadoIndicador,
  String? genero,
  bool? planoAtivo,
  DateTime? planoVencimento,
  int? planoDiasRest,
  bool? planoVencido,
  bool? planoRenovacao,
  int? quantProfissionaisMax,
  bool? assistenteCadConcluido,
  int? idSegmento,
  String? nomeSegmento,
  bool? assinatura,
  String? statusPagamento,
}) =>
    TblEstabelecimentoLogadoStruct(
      idEstabelecimento: idEstabelecimento,
      nomeEstabelecimento: nomeEstabelecimento,
      nomeCabecalho: nomeCabecalho,
      emailEstabelecimento: emailEstabelecimento,
      telefoneEstabelecimento: telefoneEstabelecimento,
      foto: foto,
      fotoPerfil: fotoPerfil,
      username: username,
      idTema: idTema,
      fotoLightMode: fotoLightMode,
      fotoDarkMod: fotoDarkMod,
      emailVerificado: emailVerificado,
      telefoneVerificado: telefoneVerificado,
      cfUsarEstAprovarAgend: cfUsarEstAprovarAgend,
      cfUsarClConfirmarAgend: cfUsarClConfirmarAgend,
      cfEnvMensWhatsAprovar: cfEnvMensWhatsAprovar,
      cfMinutosLembreteCl: cfMinutosLembreteCl,
      userId: userId,
      tipoDoc: tipoDoc,
      docCpfCnpj: docCpfCnpj,
      inscEstadual: inscEstadual,
      dataNascimento: dataNascimento,
      dataNascimentoString: dataNascimentoString,
      nomePfisicaRazsocial: nomePfisicaRazsocial,
      nomeFantasia: nomeFantasia,
      cep: cep,
      rua: rua,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
      nomeEstado: nomeEstado,
      complemento: complemento,
      idAfiliadoIndicador: idAfiliadoIndicador,
      userIdAfiliadoIndicador: userIdAfiliadoIndicador,
      genero: genero,
      planoAtivo: planoAtivo,
      planoVencimento: planoVencimento,
      planoDiasRest: planoDiasRest,
      planoVencido: planoVencido,
      planoRenovacao: planoRenovacao,
      quantProfissionaisMax: quantProfissionaisMax,
      assistenteCadConcluido: assistenteCadConcluido,
      idSegmento: idSegmento,
      nomeSegmento: nomeSegmento,
      assinatura: assinatura,
      statusPagamento: statusPagamento,
    );
