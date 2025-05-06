// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblPlanosPeriodosXTfeZ1cStruct extends BaseStruct {
  TblPlanosPeriodosXTfeZ1cStruct({
    int? id,
    String? nome,
    int? tempo,
    String? observacao,
    bool? maisComprado,
    bool? parcelamentoSjuros,
    int? maxParcSjuros,
    String? periodoMesDia,
  })  : _id = id,
        _nome = nome,
        _tempo = tempo,
        _observacao = observacao,
        _maisComprado = maisComprado,
        _parcelamentoSjuros = parcelamentoSjuros,
        _maxParcSjuros = maxParcSjuros,
        _periodoMesDia = periodoMesDia;

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

  // "tempo" field.
  int? _tempo;
  int get tempo => _tempo ?? 0;
  set tempo(int? val) => _tempo = val;

  void incrementTempo(int amount) => tempo = tempo + amount;

  bool hasTempo() => _tempo != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;

  bool hasObservacao() => _observacao != null;

  // "mais_comprado" field.
  bool? _maisComprado;
  bool get maisComprado => _maisComprado ?? false;
  set maisComprado(bool? val) => _maisComprado = val;

  bool hasMaisComprado() => _maisComprado != null;

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

  // "periodo_mes_dia" field.
  String? _periodoMesDia;
  String get periodoMesDia => _periodoMesDia ?? '';
  set periodoMesDia(String? val) => _periodoMesDia = val;

  bool hasPeriodoMesDia() => _periodoMesDia != null;

  static TblPlanosPeriodosXTfeZ1cStruct fromMap(Map<String, dynamic> data) =>
      TblPlanosPeriodosXTfeZ1cStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        tempo: castToType<int>(data['tempo']),
        observacao: data['observacao'] as String?,
        maisComprado: data['mais_comprado'] as bool?,
        parcelamentoSjuros: data['parcelamento_sjuros'] as bool?,
        maxParcSjuros: castToType<int>(data['max_parc_sjuros']),
        periodoMesDia: data['periodo_mes_dia'] as String?,
      );

  static TblPlanosPeriodosXTfeZ1cStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblPlanosPeriodosXTfeZ1cStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'tempo': _tempo,
        'observacao': _observacao,
        'mais_comprado': _maisComprado,
        'parcelamento_sjuros': _parcelamentoSjuros,
        'max_parc_sjuros': _maxParcSjuros,
        'periodo_mes_dia': _periodoMesDia,
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
        'tempo': serializeParam(
          _tempo,
          ParamType.int,
        ),
        'observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
        'mais_comprado': serializeParam(
          _maisComprado,
          ParamType.bool,
        ),
        'parcelamento_sjuros': serializeParam(
          _parcelamentoSjuros,
          ParamType.bool,
        ),
        'max_parc_sjuros': serializeParam(
          _maxParcSjuros,
          ParamType.int,
        ),
        'periodo_mes_dia': serializeParam(
          _periodoMesDia,
          ParamType.String,
        ),
      }.withoutNulls;

  static TblPlanosPeriodosXTfeZ1cStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblPlanosPeriodosXTfeZ1cStruct(
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
        tempo: deserializeParam(
          data['tempo'],
          ParamType.int,
          false,
        ),
        observacao: deserializeParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
        maisComprado: deserializeParam(
          data['mais_comprado'],
          ParamType.bool,
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
        periodoMesDia: deserializeParam(
          data['periodo_mes_dia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TblPlanosPeriodosXTfeZ1cStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblPlanosPeriodosXTfeZ1cStruct &&
        id == other.id &&
        nome == other.nome &&
        tempo == other.tempo &&
        observacao == other.observacao &&
        maisComprado == other.maisComprado &&
        parcelamentoSjuros == other.parcelamentoSjuros &&
        maxParcSjuros == other.maxParcSjuros &&
        periodoMesDia == other.periodoMesDia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        tempo,
        observacao,
        maisComprado,
        parcelamentoSjuros,
        maxParcSjuros,
        periodoMesDia
      ]);
}

TblPlanosPeriodosXTfeZ1cStruct createTblPlanosPeriodosXTfeZ1cStruct({
  int? id,
  String? nome,
  int? tempo,
  String? observacao,
  bool? maisComprado,
  bool? parcelamentoSjuros,
  int? maxParcSjuros,
  String? periodoMesDia,
}) =>
    TblPlanosPeriodosXTfeZ1cStruct(
      id: id,
      nome: nome,
      tempo: tempo,
      observacao: observacao,
      maisComprado: maisComprado,
      parcelamentoSjuros: parcelamentoSjuros,
      maxParcSjuros: maxParcSjuros,
      periodoMesDia: periodoMesDia,
    );
