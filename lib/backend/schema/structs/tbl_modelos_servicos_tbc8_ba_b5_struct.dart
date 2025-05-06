// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblModelosServicosTbc8BaB5Struct extends BaseStruct {
  TblModelosServicosTbc8BaB5Struct({
    int? idServico,
    int? idModelo,
    String? nome,
    String? foto,
    bool? cadastrado,
    double? valor,
    bool? valorSobConsulta,
    int? tempo,
  })  : _idServico = idServico,
        _idModelo = idModelo,
        _nome = nome,
        _foto = foto,
        _cadastrado = cadastrado,
        _valor = valor,
        _valorSobConsulta = valorSobConsulta,
        _tempo = tempo;

  // "id_servico" field.
  int? _idServico;
  int get idServico => _idServico ?? 0;
  set idServico(int? val) => _idServico = val;

  void incrementIdServico(int amount) => idServico = idServico + amount;

  bool hasIdServico() => _idServico != null;

  // "id_modelo" field.
  int? _idModelo;
  int get idModelo => _idModelo ?? 0;
  set idModelo(int? val) => _idModelo = val;

  void incrementIdModelo(int amount) => idModelo = idModelo + amount;

  bool hasIdModelo() => _idModelo != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "cadastrado" field.
  bool? _cadastrado;
  bool get cadastrado => _cadastrado ?? false;
  set cadastrado(bool? val) => _cadastrado = val;

  bool hasCadastrado() => _cadastrado != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "valor_sob_consulta" field.
  bool? _valorSobConsulta;
  bool get valorSobConsulta => _valorSobConsulta ?? false;
  set valorSobConsulta(bool? val) => _valorSobConsulta = val;

  bool hasValorSobConsulta() => _valorSobConsulta != null;

  // "tempo" field.
  int? _tempo;
  int get tempo => _tempo ?? 0;
  set tempo(int? val) => _tempo = val;

  void incrementTempo(int amount) => tempo = tempo + amount;

  bool hasTempo() => _tempo != null;

  static TblModelosServicosTbc8BaB5Struct fromMap(Map<String, dynamic> data) =>
      TblModelosServicosTbc8BaB5Struct(
        idServico: castToType<int>(data['id_servico']),
        idModelo: castToType<int>(data['id_modelo']),
        nome: data['nome'] as String?,
        foto: data['foto'] as String?,
        cadastrado: data['cadastrado'] as bool?,
        valor: castToType<double>(data['valor']),
        valorSobConsulta: data['valor_sob_consulta'] as bool?,
        tempo: castToType<int>(data['tempo']),
      );

  static TblModelosServicosTbc8BaB5Struct? maybeFromMap(dynamic data) => data
          is Map
      ? TblModelosServicosTbc8BaB5Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_servico': _idServico,
        'id_modelo': _idModelo,
        'nome': _nome,
        'foto': _foto,
        'cadastrado': _cadastrado,
        'valor': _valor,
        'valor_sob_consulta': _valorSobConsulta,
        'tempo': _tempo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_servico': serializeParam(
          _idServico,
          ParamType.int,
        ),
        'id_modelo': serializeParam(
          _idModelo,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'cadastrado': serializeParam(
          _cadastrado,
          ParamType.bool,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'valor_sob_consulta': serializeParam(
          _valorSobConsulta,
          ParamType.bool,
        ),
        'tempo': serializeParam(
          _tempo,
          ParamType.int,
        ),
      }.withoutNulls;

  static TblModelosServicosTbc8BaB5Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblModelosServicosTbc8BaB5Struct(
        idServico: deserializeParam(
          data['id_servico'],
          ParamType.int,
          false,
        ),
        idModelo: deserializeParam(
          data['id_modelo'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        cadastrado: deserializeParam(
          data['cadastrado'],
          ParamType.bool,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        valorSobConsulta: deserializeParam(
          data['valor_sob_consulta'],
          ParamType.bool,
          false,
        ),
        tempo: deserializeParam(
          data['tempo'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TblModelosServicosTbc8BaB5Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblModelosServicosTbc8BaB5Struct &&
        idServico == other.idServico &&
        idModelo == other.idModelo &&
        nome == other.nome &&
        foto == other.foto &&
        cadastrado == other.cadastrado &&
        valor == other.valor &&
        valorSobConsulta == other.valorSobConsulta &&
        tempo == other.tempo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idServico,
        idModelo,
        nome,
        foto,
        cadastrado,
        valor,
        valorSobConsulta,
        tempo
      ]);
}

TblModelosServicosTbc8BaB5Struct createTblModelosServicosTbc8BaB5Struct({
  int? idServico,
  int? idModelo,
  String? nome,
  String? foto,
  bool? cadastrado,
  double? valor,
  bool? valorSobConsulta,
  int? tempo,
}) =>
    TblModelosServicosTbc8BaB5Struct(
      idServico: idServico,
      idModelo: idModelo,
      nome: nome,
      foto: foto,
      cadastrado: cadastrado,
      valor: valor,
      valorSobConsulta: valorSobConsulta,
      tempo: tempo,
    );
