// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblPlanosDXve3yNStruct extends BaseStruct {
  TblPlanosDXve3yNStruct({
    String? nomePlanoPeriodos,
    String? nomePlano,
    bool? parcelamentoSjuros,
    int? maxParcSjuros,
    int? tempo,
    int? id,
    int? idPlanoPeriodo,
    String? descricao,
    double? preco,
    double? porcentagemDesconto,
    int? quantProfissionaisMin,
    int? quantProfissionaisMax,
    int? quantAgendamentosMax,
    String? idPlanoNome,
    bool? situacao,
  })  : _nomePlanoPeriodos = nomePlanoPeriodos,
        _nomePlano = nomePlano,
        _parcelamentoSjuros = parcelamentoSjuros,
        _maxParcSjuros = maxParcSjuros,
        _tempo = tempo,
        _id = id,
        _idPlanoPeriodo = idPlanoPeriodo,
        _descricao = descricao,
        _preco = preco,
        _porcentagemDesconto = porcentagemDesconto,
        _quantProfissionaisMin = quantProfissionaisMin,
        _quantProfissionaisMax = quantProfissionaisMax,
        _quantAgendamentosMax = quantAgendamentosMax,
        _idPlanoNome = idPlanoNome,
        _situacao = situacao;

  // "nome_plano_periodos" field.
  String? _nomePlanoPeriodos;
  String get nomePlanoPeriodos => _nomePlanoPeriodos ?? '';
  set nomePlanoPeriodos(String? val) => _nomePlanoPeriodos = val;

  bool hasNomePlanoPeriodos() => _nomePlanoPeriodos != null;

  // "nome_plano" field.
  String? _nomePlano;
  String get nomePlano => _nomePlano ?? '';
  set nomePlano(String? val) => _nomePlano = val;

  bool hasNomePlano() => _nomePlano != null;

  // "parcelamento_sjuros" field.
  bool? _parcelamentoSjuros;
  bool get parcelamentoSjuros => _parcelamentoSjuros ?? false;
  set parcelamentoSjuros(bool? val) => _parcelamentoSjuros = val;

  bool hasParcelamentoSjuros() => _parcelamentoSjuros != null;

  // "max_parc_sjuros" field.
  int? _maxParcSjuros;
  int get maxParcSjuros => _maxParcSjuros ?? 0;
  set maxParcSjuros(int? val) => _maxParcSjuros = val;

  void incrementMaxParcSjuros(int amount) =>
      maxParcSjuros = maxParcSjuros + amount;

  bool hasMaxParcSjuros() => _maxParcSjuros != null;

  // "tempo" field.
  int? _tempo;
  int get tempo => _tempo ?? 0;
  set tempo(int? val) => _tempo = val;

  void incrementTempo(int amount) => tempo = tempo + amount;

  bool hasTempo() => _tempo != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "id_plano_periodo" field.
  int? _idPlanoPeriodo;
  int get idPlanoPeriodo => _idPlanoPeriodo ?? 0;
  set idPlanoPeriodo(int? val) => _idPlanoPeriodo = val;

  void incrementIdPlanoPeriodo(int amount) =>
      idPlanoPeriodo = idPlanoPeriodo + amount;

  bool hasIdPlanoPeriodo() => _idPlanoPeriodo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "porcentagem_desconto" field.
  double? _porcentagemDesconto;
  double get porcentagemDesconto => _porcentagemDesconto ?? 0.0;
  set porcentagemDesconto(double? val) => _porcentagemDesconto = val;

  void incrementPorcentagemDesconto(double amount) =>
      porcentagemDesconto = porcentagemDesconto + amount;

  bool hasPorcentagemDesconto() => _porcentagemDesconto != null;

  // "quant_profissionais_min" field.
  int? _quantProfissionaisMin;
  int get quantProfissionaisMin => _quantProfissionaisMin ?? 0;
  set quantProfissionaisMin(int? val) => _quantProfissionaisMin = val;

  void incrementQuantProfissionaisMin(int amount) =>
      quantProfissionaisMin = quantProfissionaisMin + amount;

  bool hasQuantProfissionaisMin() => _quantProfissionaisMin != null;

  // "quant_profissionais_max" field.
  int? _quantProfissionaisMax;
  int get quantProfissionaisMax => _quantProfissionaisMax ?? 0;
  set quantProfissionaisMax(int? val) => _quantProfissionaisMax = val;

  void incrementQuantProfissionaisMax(int amount) =>
      quantProfissionaisMax = quantProfissionaisMax + amount;

  bool hasQuantProfissionaisMax() => _quantProfissionaisMax != null;

  // "quant_agendamentos_max" field.
  int? _quantAgendamentosMax;
  int get quantAgendamentosMax => _quantAgendamentosMax ?? 0;
  set quantAgendamentosMax(int? val) => _quantAgendamentosMax = val;

  void incrementQuantAgendamentosMax(int amount) =>
      quantAgendamentosMax = quantAgendamentosMax + amount;

  bool hasQuantAgendamentosMax() => _quantAgendamentosMax != null;

  // "id_plano_nome" field.
  String? _idPlanoNome;
  String get idPlanoNome => _idPlanoNome ?? '';
  set idPlanoNome(String? val) => _idPlanoNome = val;

  bool hasIdPlanoNome() => _idPlanoNome != null;

  // "situacao" field.
  bool? _situacao;
  bool get situacao => _situacao ?? false;
  set situacao(bool? val) => _situacao = val;

  bool hasSituacao() => _situacao != null;

  static TblPlanosDXve3yNStruct fromMap(Map<String, dynamic> data) =>
      TblPlanosDXve3yNStruct(
        nomePlanoPeriodos: data['nome_plano_periodos'] as String?,
        nomePlano: data['nome_plano'] as String?,
        parcelamentoSjuros: data['parcelamento_sjuros'] as bool?,
        maxParcSjuros: castToType<int>(data['max_parc_sjuros']),
        tempo: castToType<int>(data['tempo']),
        id: castToType<int>(data['id']),
        idPlanoPeriodo: castToType<int>(data['id_plano_periodo']),
        descricao: data['descricao'] as String?,
        preco: castToType<double>(data['preco']),
        porcentagemDesconto: castToType<double>(data['porcentagem_desconto']),
        quantProfissionaisMin: castToType<int>(data['quant_profissionais_min']),
        quantProfissionaisMax: castToType<int>(data['quant_profissionais_max']),
        quantAgendamentosMax: castToType<int>(data['quant_agendamentos_max']),
        idPlanoNome: data['id_plano_nome'] as String?,
        situacao: data['situacao'] as bool?,
      );

  static TblPlanosDXve3yNStruct? maybeFromMap(dynamic data) => data is Map
      ? TblPlanosDXve3yNStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome_plano_periodos': _nomePlanoPeriodos,
        'nome_plano': _nomePlano,
        'parcelamento_sjuros': _parcelamentoSjuros,
        'max_parc_sjuros': _maxParcSjuros,
        'tempo': _tempo,
        'id': _id,
        'id_plano_periodo': _idPlanoPeriodo,
        'descricao': _descricao,
        'preco': _preco,
        'porcentagem_desconto': _porcentagemDesconto,
        'quant_profissionais_min': _quantProfissionaisMin,
        'quant_profissionais_max': _quantProfissionaisMax,
        'quant_agendamentos_max': _quantAgendamentosMax,
        'id_plano_nome': _idPlanoNome,
        'situacao': _situacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_plano_periodos': serializeParam(
          _nomePlanoPeriodos,
          ParamType.String,
        ),
        'nome_plano': serializeParam(
          _nomePlano,
          ParamType.String,
        ),
        'parcelamento_sjuros': serializeParam(
          _parcelamentoSjuros,
          ParamType.bool,
        ),
        'max_parc_sjuros': serializeParam(
          _maxParcSjuros,
          ParamType.int,
        ),
        'tempo': serializeParam(
          _tempo,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'id_plano_periodo': serializeParam(
          _idPlanoPeriodo,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'porcentagem_desconto': serializeParam(
          _porcentagemDesconto,
          ParamType.double,
        ),
        'quant_profissionais_min': serializeParam(
          _quantProfissionaisMin,
          ParamType.int,
        ),
        'quant_profissionais_max': serializeParam(
          _quantProfissionaisMax,
          ParamType.int,
        ),
        'quant_agendamentos_max': serializeParam(
          _quantAgendamentosMax,
          ParamType.int,
        ),
        'id_plano_nome': serializeParam(
          _idPlanoNome,
          ParamType.String,
        ),
        'situacao': serializeParam(
          _situacao,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TblPlanosDXve3yNStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblPlanosDXve3yNStruct(
        nomePlanoPeriodos: deserializeParam(
          data['nome_plano_periodos'],
          ParamType.String,
          false,
        ),
        nomePlano: deserializeParam(
          data['nome_plano'],
          ParamType.String,
          false,
        ),
        parcelamentoSjuros: deserializeParam(
          data['parcelamento_sjuros'],
          ParamType.bool,
          false,
        ),
        maxParcSjuros: deserializeParam(
          data['max_parc_sjuros'],
          ParamType.int,
          false,
        ),
        tempo: deserializeParam(
          data['tempo'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idPlanoPeriodo: deserializeParam(
          data['id_plano_periodo'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        porcentagemDesconto: deserializeParam(
          data['porcentagem_desconto'],
          ParamType.double,
          false,
        ),
        quantProfissionaisMin: deserializeParam(
          data['quant_profissionais_min'],
          ParamType.int,
          false,
        ),
        quantProfissionaisMax: deserializeParam(
          data['quant_profissionais_max'],
          ParamType.int,
          false,
        ),
        quantAgendamentosMax: deserializeParam(
          data['quant_agendamentos_max'],
          ParamType.int,
          false,
        ),
        idPlanoNome: deserializeParam(
          data['id_plano_nome'],
          ParamType.String,
          false,
        ),
        situacao: deserializeParam(
          data['situacao'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TblPlanosDXve3yNStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblPlanosDXve3yNStruct &&
        nomePlanoPeriodos == other.nomePlanoPeriodos &&
        nomePlano == other.nomePlano &&
        parcelamentoSjuros == other.parcelamentoSjuros &&
        maxParcSjuros == other.maxParcSjuros &&
        tempo == other.tempo &&
        id == other.id &&
        idPlanoPeriodo == other.idPlanoPeriodo &&
        descricao == other.descricao &&
        preco == other.preco &&
        porcentagemDesconto == other.porcentagemDesconto &&
        quantProfissionaisMin == other.quantProfissionaisMin &&
        quantProfissionaisMax == other.quantProfissionaisMax &&
        quantAgendamentosMax == other.quantAgendamentosMax &&
        idPlanoNome == other.idPlanoNome &&
        situacao == other.situacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomePlanoPeriodos,
        nomePlano,
        parcelamentoSjuros,
        maxParcSjuros,
        tempo,
        id,
        idPlanoPeriodo,
        descricao,
        preco,
        porcentagemDesconto,
        quantProfissionaisMin,
        quantProfissionaisMax,
        quantAgendamentosMax,
        idPlanoNome,
        situacao
      ]);
}

TblPlanosDXve3yNStruct createTblPlanosDXve3yNStruct({
  String? nomePlanoPeriodos,
  String? nomePlano,
  bool? parcelamentoSjuros,
  int? maxParcSjuros,
  int? tempo,
  int? id,
  int? idPlanoPeriodo,
  String? descricao,
  double? preco,
  double? porcentagemDesconto,
  int? quantProfissionaisMin,
  int? quantProfissionaisMax,
  int? quantAgendamentosMax,
  String? idPlanoNome,
  bool? situacao,
}) =>
    TblPlanosDXve3yNStruct(
      nomePlanoPeriodos: nomePlanoPeriodos,
      nomePlano: nomePlano,
      parcelamentoSjuros: parcelamentoSjuros,
      maxParcSjuros: maxParcSjuros,
      tempo: tempo,
      id: id,
      idPlanoPeriodo: idPlanoPeriodo,
      descricao: descricao,
      preco: preco,
      porcentagemDesconto: porcentagemDesconto,
      quantProfissionaisMin: quantProfissionaisMin,
      quantProfissionaisMax: quantProfissionaisMax,
      quantAgendamentosMax: quantAgendamentosMax,
      idPlanoNome: idPlanoNome,
      situacao: situacao,
    );
