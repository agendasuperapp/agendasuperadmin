// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TblAfiliadosDashboardGveB12fBVStruct extends BaseStruct {
  TblAfiliadosDashboardGveB12fBVStruct({
    int? id,
    String? nome,
    double? comissaoDia,
    double? comissao7dias,
    double? comissaoMes,
    double? comissaoDisponivel,
    double? comissaoPendente,
    int? quantIndicacoes,
    int? quantSubAfiliados,
    int? quantIndicacoesAtivos,
    int? quantSubAfiliadosAtivos,
    double? valorMeta,
    double? vlrVdEstabDia,
    double? vlrVdAfilDia,
    double? vlrVdCancEstabDia,
    double? vlrVdCancAfilDia,
    bool? sistema,
    bool? result,
    double? vlrVdEstab7dia,
    double? vlrVdAfil7dia,
    double? vlrVdCancEstab7dia,
    double? vlrVdCancAfil7dia,
    double? vlrVdEstabMes,
    double? vlrVdAfilMes,
    double? vlrVdCancEstabMes,
    double? vlrVdCancAfilMes,
    double? vlrComissaoDisponivelHoje,
    double? vlrSaquesHoje,
  })  : _id = id,
        _nome = nome,
        _comissaoDia = comissaoDia,
        _comissao7dias = comissao7dias,
        _comissaoMes = comissaoMes,
        _comissaoDisponivel = comissaoDisponivel,
        _comissaoPendente = comissaoPendente,
        _quantIndicacoes = quantIndicacoes,
        _quantSubAfiliados = quantSubAfiliados,
        _quantIndicacoesAtivos = quantIndicacoesAtivos,
        _quantSubAfiliadosAtivos = quantSubAfiliadosAtivos,
        _valorMeta = valorMeta,
        _vlrVdEstabDia = vlrVdEstabDia,
        _vlrVdAfilDia = vlrVdAfilDia,
        _vlrVdCancEstabDia = vlrVdCancEstabDia,
        _vlrVdCancAfilDia = vlrVdCancAfilDia,
        _sistema = sistema,
        _result = result,
        _vlrVdEstab7dia = vlrVdEstab7dia,
        _vlrVdAfil7dia = vlrVdAfil7dia,
        _vlrVdCancEstab7dia = vlrVdCancEstab7dia,
        _vlrVdCancAfil7dia = vlrVdCancAfil7dia,
        _vlrVdEstabMes = vlrVdEstabMes,
        _vlrVdAfilMes = vlrVdAfilMes,
        _vlrVdCancEstabMes = vlrVdCancEstabMes,
        _vlrVdCancAfilMes = vlrVdCancAfilMes,
        _vlrComissaoDisponivelHoje = vlrComissaoDisponivelHoje,
        _vlrSaquesHoje = vlrSaquesHoje;

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

  // "comissao_dia" field.
  double? _comissaoDia;
  double get comissaoDia => _comissaoDia ?? 0.0;
  set comissaoDia(double? val) => _comissaoDia = val;

  void incrementComissaoDia(double amount) =>
      comissaoDia = comissaoDia + amount;

  bool hasComissaoDia() => _comissaoDia != null;

  // "comissao_7dias" field.
  double? _comissao7dias;
  double get comissao7dias => _comissao7dias ?? 0.0;
  set comissao7dias(double? val) => _comissao7dias = val;

  void incrementComissao7dias(double amount) =>
      comissao7dias = comissao7dias + amount;

  bool hasComissao7dias() => _comissao7dias != null;

  // "comissao_mes" field.
  double? _comissaoMes;
  double get comissaoMes => _comissaoMes ?? 0.0;
  set comissaoMes(double? val) => _comissaoMes = val;

  void incrementComissaoMes(double amount) =>
      comissaoMes = comissaoMes + amount;

  bool hasComissaoMes() => _comissaoMes != null;

  // "comissao_disponivel" field.
  double? _comissaoDisponivel;
  double get comissaoDisponivel => _comissaoDisponivel ?? 0.0;
  set comissaoDisponivel(double? val) => _comissaoDisponivel = val;

  void incrementComissaoDisponivel(double amount) =>
      comissaoDisponivel = comissaoDisponivel + amount;

  bool hasComissaoDisponivel() => _comissaoDisponivel != null;

  // "comissao_pendente" field.
  double? _comissaoPendente;
  double get comissaoPendente => _comissaoPendente ?? 0.0;
  set comissaoPendente(double? val) => _comissaoPendente = val;

  void incrementComissaoPendente(double amount) =>
      comissaoPendente = comissaoPendente + amount;

  bool hasComissaoPendente() => _comissaoPendente != null;

  // "quant_indicacoes" field.
  int? _quantIndicacoes;
  int get quantIndicacoes => _quantIndicacoes ?? 0;
  set quantIndicacoes(int? val) => _quantIndicacoes = val;

  void incrementQuantIndicacoes(int amount) =>
      quantIndicacoes = quantIndicacoes + amount;

  bool hasQuantIndicacoes() => _quantIndicacoes != null;

  // "quant_sub_afiliados" field.
  int? _quantSubAfiliados;
  int get quantSubAfiliados => _quantSubAfiliados ?? 0;
  set quantSubAfiliados(int? val) => _quantSubAfiliados = val;

  void incrementQuantSubAfiliados(int amount) =>
      quantSubAfiliados = quantSubAfiliados + amount;

  bool hasQuantSubAfiliados() => _quantSubAfiliados != null;

  // "quant_indicacoes_ativos" field.
  int? _quantIndicacoesAtivos;
  int get quantIndicacoesAtivos => _quantIndicacoesAtivos ?? 0;
  set quantIndicacoesAtivos(int? val) => _quantIndicacoesAtivos = val;

  void incrementQuantIndicacoesAtivos(int amount) =>
      quantIndicacoesAtivos = quantIndicacoesAtivos + amount;

  bool hasQuantIndicacoesAtivos() => _quantIndicacoesAtivos != null;

  // "quant_sub_afiliados_ativos" field.
  int? _quantSubAfiliadosAtivos;
  int get quantSubAfiliadosAtivos => _quantSubAfiliadosAtivos ?? 0;
  set quantSubAfiliadosAtivos(int? val) => _quantSubAfiliadosAtivos = val;

  void incrementQuantSubAfiliadosAtivos(int amount) =>
      quantSubAfiliadosAtivos = quantSubAfiliadosAtivos + amount;

  bool hasQuantSubAfiliadosAtivos() => _quantSubAfiliadosAtivos != null;

  // "valor_meta" field.
  double? _valorMeta;
  double get valorMeta => _valorMeta ?? 0.0;
  set valorMeta(double? val) => _valorMeta = val;

  void incrementValorMeta(double amount) => valorMeta = valorMeta + amount;

  bool hasValorMeta() => _valorMeta != null;

  // "vlr_vd_estab_dia" field.
  double? _vlrVdEstabDia;
  double get vlrVdEstabDia => _vlrVdEstabDia ?? 0.0;
  set vlrVdEstabDia(double? val) => _vlrVdEstabDia = val;

  void incrementVlrVdEstabDia(double amount) =>
      vlrVdEstabDia = vlrVdEstabDia + amount;

  bool hasVlrVdEstabDia() => _vlrVdEstabDia != null;

  // "vlr_vd_afil_dia" field.
  double? _vlrVdAfilDia;
  double get vlrVdAfilDia => _vlrVdAfilDia ?? 0.0;
  set vlrVdAfilDia(double? val) => _vlrVdAfilDia = val;

  void incrementVlrVdAfilDia(double amount) =>
      vlrVdAfilDia = vlrVdAfilDia + amount;

  bool hasVlrVdAfilDia() => _vlrVdAfilDia != null;

  // "vlr_vd_canc_estab_dia" field.
  double? _vlrVdCancEstabDia;
  double get vlrVdCancEstabDia => _vlrVdCancEstabDia ?? 0.0;
  set vlrVdCancEstabDia(double? val) => _vlrVdCancEstabDia = val;

  void incrementVlrVdCancEstabDia(double amount) =>
      vlrVdCancEstabDia = vlrVdCancEstabDia + amount;

  bool hasVlrVdCancEstabDia() => _vlrVdCancEstabDia != null;

  // "vlr_vd_canc_afil_dia" field.
  double? _vlrVdCancAfilDia;
  double get vlrVdCancAfilDia => _vlrVdCancAfilDia ?? 0.0;
  set vlrVdCancAfilDia(double? val) => _vlrVdCancAfilDia = val;

  void incrementVlrVdCancAfilDia(double amount) =>
      vlrVdCancAfilDia = vlrVdCancAfilDia + amount;

  bool hasVlrVdCancAfilDia() => _vlrVdCancAfilDia != null;

  // "sistema" field.
  bool? _sistema;
  bool get sistema => _sistema ?? false;
  set sistema(bool? val) => _sistema = val;

  bool hasSistema() => _sistema != null;

  // "result" field.
  bool? _result;
  bool get result => _result ?? false;
  set result(bool? val) => _result = val;

  bool hasResult() => _result != null;

  // "vlr_vd_estab_7dia" field.
  double? _vlrVdEstab7dia;
  double get vlrVdEstab7dia => _vlrVdEstab7dia ?? 0.0;
  set vlrVdEstab7dia(double? val) => _vlrVdEstab7dia = val;

  void incrementVlrVdEstab7dia(double amount) =>
      vlrVdEstab7dia = vlrVdEstab7dia + amount;

  bool hasVlrVdEstab7dia() => _vlrVdEstab7dia != null;

  // "vlr_vd_afil_7dia" field.
  double? _vlrVdAfil7dia;
  double get vlrVdAfil7dia => _vlrVdAfil7dia ?? 0.0;
  set vlrVdAfil7dia(double? val) => _vlrVdAfil7dia = val;

  void incrementVlrVdAfil7dia(double amount) =>
      vlrVdAfil7dia = vlrVdAfil7dia + amount;

  bool hasVlrVdAfil7dia() => _vlrVdAfil7dia != null;

  // "vlr_vd_canc_estab_7dia" field.
  double? _vlrVdCancEstab7dia;
  double get vlrVdCancEstab7dia => _vlrVdCancEstab7dia ?? 0.0;
  set vlrVdCancEstab7dia(double? val) => _vlrVdCancEstab7dia = val;

  void incrementVlrVdCancEstab7dia(double amount) =>
      vlrVdCancEstab7dia = vlrVdCancEstab7dia + amount;

  bool hasVlrVdCancEstab7dia() => _vlrVdCancEstab7dia != null;

  // "vlr_vd_canc_afil_7dia" field.
  double? _vlrVdCancAfil7dia;
  double get vlrVdCancAfil7dia => _vlrVdCancAfil7dia ?? 0.0;
  set vlrVdCancAfil7dia(double? val) => _vlrVdCancAfil7dia = val;

  void incrementVlrVdCancAfil7dia(double amount) =>
      vlrVdCancAfil7dia = vlrVdCancAfil7dia + amount;

  bool hasVlrVdCancAfil7dia() => _vlrVdCancAfil7dia != null;

  // "vlr_vd_estab_mes" field.
  double? _vlrVdEstabMes;
  double get vlrVdEstabMes => _vlrVdEstabMes ?? 0.0;
  set vlrVdEstabMes(double? val) => _vlrVdEstabMes = val;

  void incrementVlrVdEstabMes(double amount) =>
      vlrVdEstabMes = vlrVdEstabMes + amount;

  bool hasVlrVdEstabMes() => _vlrVdEstabMes != null;

  // "vlr_vd_afil_mes" field.
  double? _vlrVdAfilMes;
  double get vlrVdAfilMes => _vlrVdAfilMes ?? 0.0;
  set vlrVdAfilMes(double? val) => _vlrVdAfilMes = val;

  void incrementVlrVdAfilMes(double amount) =>
      vlrVdAfilMes = vlrVdAfilMes + amount;

  bool hasVlrVdAfilMes() => _vlrVdAfilMes != null;

  // "vlr_vd_canc_estab_mes" field.
  double? _vlrVdCancEstabMes;
  double get vlrVdCancEstabMes => _vlrVdCancEstabMes ?? 0.0;
  set vlrVdCancEstabMes(double? val) => _vlrVdCancEstabMes = val;

  void incrementVlrVdCancEstabMes(double amount) =>
      vlrVdCancEstabMes = vlrVdCancEstabMes + amount;

  bool hasVlrVdCancEstabMes() => _vlrVdCancEstabMes != null;

  // "vlr_vd_canc_afil_mes" field.
  double? _vlrVdCancAfilMes;
  double get vlrVdCancAfilMes => _vlrVdCancAfilMes ?? 0.0;
  set vlrVdCancAfilMes(double? val) => _vlrVdCancAfilMes = val;

  void incrementVlrVdCancAfilMes(double amount) =>
      vlrVdCancAfilMes = vlrVdCancAfilMes + amount;

  bool hasVlrVdCancAfilMes() => _vlrVdCancAfilMes != null;

  // "vlr_comissao_disponivel_hoje" field.
  double? _vlrComissaoDisponivelHoje;
  double get vlrComissaoDisponivelHoje => _vlrComissaoDisponivelHoje ?? 0.0;
  set vlrComissaoDisponivelHoje(double? val) =>
      _vlrComissaoDisponivelHoje = val;

  void incrementVlrComissaoDisponivelHoje(double amount) =>
      vlrComissaoDisponivelHoje = vlrComissaoDisponivelHoje + amount;

  bool hasVlrComissaoDisponivelHoje() => _vlrComissaoDisponivelHoje != null;

  // "vlr_saques_hoje" field.
  double? _vlrSaquesHoje;
  double get vlrSaquesHoje => _vlrSaquesHoje ?? 0.0;
  set vlrSaquesHoje(double? val) => _vlrSaquesHoje = val;

  void incrementVlrSaquesHoje(double amount) =>
      vlrSaquesHoje = vlrSaquesHoje + amount;

  bool hasVlrSaquesHoje() => _vlrSaquesHoje != null;

  static TblAfiliadosDashboardGveB12fBVStruct fromMap(
          Map<String, dynamic> data) =>
      TblAfiliadosDashboardGveB12fBVStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        comissaoDia: castToType<double>(data['comissao_dia']),
        comissao7dias: castToType<double>(data['comissao_7dias']),
        comissaoMes: castToType<double>(data['comissao_mes']),
        comissaoDisponivel: castToType<double>(data['comissao_disponivel']),
        comissaoPendente: castToType<double>(data['comissao_pendente']),
        quantIndicacoes: castToType<int>(data['quant_indicacoes']),
        quantSubAfiliados: castToType<int>(data['quant_sub_afiliados']),
        quantIndicacoesAtivos: castToType<int>(data['quant_indicacoes_ativos']),
        quantSubAfiliadosAtivos:
            castToType<int>(data['quant_sub_afiliados_ativos']),
        valorMeta: castToType<double>(data['valor_meta']),
        vlrVdEstabDia: castToType<double>(data['vlr_vd_estab_dia']),
        vlrVdAfilDia: castToType<double>(data['vlr_vd_afil_dia']),
        vlrVdCancEstabDia: castToType<double>(data['vlr_vd_canc_estab_dia']),
        vlrVdCancAfilDia: castToType<double>(data['vlr_vd_canc_afil_dia']),
        sistema: data['sistema'] as bool?,
        result: data['result'] as bool?,
        vlrVdEstab7dia: castToType<double>(data['vlr_vd_estab_7dia']),
        vlrVdAfil7dia: castToType<double>(data['vlr_vd_afil_7dia']),
        vlrVdCancEstab7dia: castToType<double>(data['vlr_vd_canc_estab_7dia']),
        vlrVdCancAfil7dia: castToType<double>(data['vlr_vd_canc_afil_7dia']),
        vlrVdEstabMes: castToType<double>(data['vlr_vd_estab_mes']),
        vlrVdAfilMes: castToType<double>(data['vlr_vd_afil_mes']),
        vlrVdCancEstabMes: castToType<double>(data['vlr_vd_canc_estab_mes']),
        vlrVdCancAfilMes: castToType<double>(data['vlr_vd_canc_afil_mes']),
        vlrComissaoDisponivelHoje:
            castToType<double>(data['vlr_comissao_disponivel_hoje']),
        vlrSaquesHoje: castToType<double>(data['vlr_saques_hoje']),
      );

  static TblAfiliadosDashboardGveB12fBVStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TblAfiliadosDashboardGveB12fBVStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'comissao_dia': _comissaoDia,
        'comissao_7dias': _comissao7dias,
        'comissao_mes': _comissaoMes,
        'comissao_disponivel': _comissaoDisponivel,
        'comissao_pendente': _comissaoPendente,
        'quant_indicacoes': _quantIndicacoes,
        'quant_sub_afiliados': _quantSubAfiliados,
        'quant_indicacoes_ativos': _quantIndicacoesAtivos,
        'quant_sub_afiliados_ativos': _quantSubAfiliadosAtivos,
        'valor_meta': _valorMeta,
        'vlr_vd_estab_dia': _vlrVdEstabDia,
        'vlr_vd_afil_dia': _vlrVdAfilDia,
        'vlr_vd_canc_estab_dia': _vlrVdCancEstabDia,
        'vlr_vd_canc_afil_dia': _vlrVdCancAfilDia,
        'sistema': _sistema,
        'result': _result,
        'vlr_vd_estab_7dia': _vlrVdEstab7dia,
        'vlr_vd_afil_7dia': _vlrVdAfil7dia,
        'vlr_vd_canc_estab_7dia': _vlrVdCancEstab7dia,
        'vlr_vd_canc_afil_7dia': _vlrVdCancAfil7dia,
        'vlr_vd_estab_mes': _vlrVdEstabMes,
        'vlr_vd_afil_mes': _vlrVdAfilMes,
        'vlr_vd_canc_estab_mes': _vlrVdCancEstabMes,
        'vlr_vd_canc_afil_mes': _vlrVdCancAfilMes,
        'vlr_comissao_disponivel_hoje': _vlrComissaoDisponivelHoje,
        'vlr_saques_hoje': _vlrSaquesHoje,
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
        'comissao_dia': serializeParam(
          _comissaoDia,
          ParamType.double,
        ),
        'comissao_7dias': serializeParam(
          _comissao7dias,
          ParamType.double,
        ),
        'comissao_mes': serializeParam(
          _comissaoMes,
          ParamType.double,
        ),
        'comissao_disponivel': serializeParam(
          _comissaoDisponivel,
          ParamType.double,
        ),
        'comissao_pendente': serializeParam(
          _comissaoPendente,
          ParamType.double,
        ),
        'quant_indicacoes': serializeParam(
          _quantIndicacoes,
          ParamType.int,
        ),
        'quant_sub_afiliados': serializeParam(
          _quantSubAfiliados,
          ParamType.int,
        ),
        'quant_indicacoes_ativos': serializeParam(
          _quantIndicacoesAtivos,
          ParamType.int,
        ),
        'quant_sub_afiliados_ativos': serializeParam(
          _quantSubAfiliadosAtivos,
          ParamType.int,
        ),
        'valor_meta': serializeParam(
          _valorMeta,
          ParamType.double,
        ),
        'vlr_vd_estab_dia': serializeParam(
          _vlrVdEstabDia,
          ParamType.double,
        ),
        'vlr_vd_afil_dia': serializeParam(
          _vlrVdAfilDia,
          ParamType.double,
        ),
        'vlr_vd_canc_estab_dia': serializeParam(
          _vlrVdCancEstabDia,
          ParamType.double,
        ),
        'vlr_vd_canc_afil_dia': serializeParam(
          _vlrVdCancAfilDia,
          ParamType.double,
        ),
        'sistema': serializeParam(
          _sistema,
          ParamType.bool,
        ),
        'result': serializeParam(
          _result,
          ParamType.bool,
        ),
        'vlr_vd_estab_7dia': serializeParam(
          _vlrVdEstab7dia,
          ParamType.double,
        ),
        'vlr_vd_afil_7dia': serializeParam(
          _vlrVdAfil7dia,
          ParamType.double,
        ),
        'vlr_vd_canc_estab_7dia': serializeParam(
          _vlrVdCancEstab7dia,
          ParamType.double,
        ),
        'vlr_vd_canc_afil_7dia': serializeParam(
          _vlrVdCancAfil7dia,
          ParamType.double,
        ),
        'vlr_vd_estab_mes': serializeParam(
          _vlrVdEstabMes,
          ParamType.double,
        ),
        'vlr_vd_afil_mes': serializeParam(
          _vlrVdAfilMes,
          ParamType.double,
        ),
        'vlr_vd_canc_estab_mes': serializeParam(
          _vlrVdCancEstabMes,
          ParamType.double,
        ),
        'vlr_vd_canc_afil_mes': serializeParam(
          _vlrVdCancAfilMes,
          ParamType.double,
        ),
        'vlr_comissao_disponivel_hoje': serializeParam(
          _vlrComissaoDisponivelHoje,
          ParamType.double,
        ),
        'vlr_saques_hoje': serializeParam(
          _vlrSaquesHoje,
          ParamType.double,
        ),
      }.withoutNulls;

  static TblAfiliadosDashboardGveB12fBVStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TblAfiliadosDashboardGveB12fBVStruct(
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
        comissaoDia: deserializeParam(
          data['comissao_dia'],
          ParamType.double,
          false,
        ),
        comissao7dias: deserializeParam(
          data['comissao_7dias'],
          ParamType.double,
          false,
        ),
        comissaoMes: deserializeParam(
          data['comissao_mes'],
          ParamType.double,
          false,
        ),
        comissaoDisponivel: deserializeParam(
          data['comissao_disponivel'],
          ParamType.double,
          false,
        ),
        comissaoPendente: deserializeParam(
          data['comissao_pendente'],
          ParamType.double,
          false,
        ),
        quantIndicacoes: deserializeParam(
          data['quant_indicacoes'],
          ParamType.int,
          false,
        ),
        quantSubAfiliados: deserializeParam(
          data['quant_sub_afiliados'],
          ParamType.int,
          false,
        ),
        quantIndicacoesAtivos: deserializeParam(
          data['quant_indicacoes_ativos'],
          ParamType.int,
          false,
        ),
        quantSubAfiliadosAtivos: deserializeParam(
          data['quant_sub_afiliados_ativos'],
          ParamType.int,
          false,
        ),
        valorMeta: deserializeParam(
          data['valor_meta'],
          ParamType.double,
          false,
        ),
        vlrVdEstabDia: deserializeParam(
          data['vlr_vd_estab_dia'],
          ParamType.double,
          false,
        ),
        vlrVdAfilDia: deserializeParam(
          data['vlr_vd_afil_dia'],
          ParamType.double,
          false,
        ),
        vlrVdCancEstabDia: deserializeParam(
          data['vlr_vd_canc_estab_dia'],
          ParamType.double,
          false,
        ),
        vlrVdCancAfilDia: deserializeParam(
          data['vlr_vd_canc_afil_dia'],
          ParamType.double,
          false,
        ),
        sistema: deserializeParam(
          data['sistema'],
          ParamType.bool,
          false,
        ),
        result: deserializeParam(
          data['result'],
          ParamType.bool,
          false,
        ),
        vlrVdEstab7dia: deserializeParam(
          data['vlr_vd_estab_7dia'],
          ParamType.double,
          false,
        ),
        vlrVdAfil7dia: deserializeParam(
          data['vlr_vd_afil_7dia'],
          ParamType.double,
          false,
        ),
        vlrVdCancEstab7dia: deserializeParam(
          data['vlr_vd_canc_estab_7dia'],
          ParamType.double,
          false,
        ),
        vlrVdCancAfil7dia: deserializeParam(
          data['vlr_vd_canc_afil_7dia'],
          ParamType.double,
          false,
        ),
        vlrVdEstabMes: deserializeParam(
          data['vlr_vd_estab_mes'],
          ParamType.double,
          false,
        ),
        vlrVdAfilMes: deserializeParam(
          data['vlr_vd_afil_mes'],
          ParamType.double,
          false,
        ),
        vlrVdCancEstabMes: deserializeParam(
          data['vlr_vd_canc_estab_mes'],
          ParamType.double,
          false,
        ),
        vlrVdCancAfilMes: deserializeParam(
          data['vlr_vd_canc_afil_mes'],
          ParamType.double,
          false,
        ),
        vlrComissaoDisponivelHoje: deserializeParam(
          data['vlr_comissao_disponivel_hoje'],
          ParamType.double,
          false,
        ),
        vlrSaquesHoje: deserializeParam(
          data['vlr_saques_hoje'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TblAfiliadosDashboardGveB12fBVStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TblAfiliadosDashboardGveB12fBVStruct &&
        id == other.id &&
        nome == other.nome &&
        comissaoDia == other.comissaoDia &&
        comissao7dias == other.comissao7dias &&
        comissaoMes == other.comissaoMes &&
        comissaoDisponivel == other.comissaoDisponivel &&
        comissaoPendente == other.comissaoPendente &&
        quantIndicacoes == other.quantIndicacoes &&
        quantSubAfiliados == other.quantSubAfiliados &&
        quantIndicacoesAtivos == other.quantIndicacoesAtivos &&
        quantSubAfiliadosAtivos == other.quantSubAfiliadosAtivos &&
        valorMeta == other.valorMeta &&
        vlrVdEstabDia == other.vlrVdEstabDia &&
        vlrVdAfilDia == other.vlrVdAfilDia &&
        vlrVdCancEstabDia == other.vlrVdCancEstabDia &&
        vlrVdCancAfilDia == other.vlrVdCancAfilDia &&
        sistema == other.sistema &&
        result == other.result &&
        vlrVdEstab7dia == other.vlrVdEstab7dia &&
        vlrVdAfil7dia == other.vlrVdAfil7dia &&
        vlrVdCancEstab7dia == other.vlrVdCancEstab7dia &&
        vlrVdCancAfil7dia == other.vlrVdCancAfil7dia &&
        vlrVdEstabMes == other.vlrVdEstabMes &&
        vlrVdAfilMes == other.vlrVdAfilMes &&
        vlrVdCancEstabMes == other.vlrVdCancEstabMes &&
        vlrVdCancAfilMes == other.vlrVdCancAfilMes &&
        vlrComissaoDisponivelHoje == other.vlrComissaoDisponivelHoje &&
        vlrSaquesHoje == other.vlrSaquesHoje;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        comissaoDia,
        comissao7dias,
        comissaoMes,
        comissaoDisponivel,
        comissaoPendente,
        quantIndicacoes,
        quantSubAfiliados,
        quantIndicacoesAtivos,
        quantSubAfiliadosAtivos,
        valorMeta,
        vlrVdEstabDia,
        vlrVdAfilDia,
        vlrVdCancEstabDia,
        vlrVdCancAfilDia,
        sistema,
        result,
        vlrVdEstab7dia,
        vlrVdAfil7dia,
        vlrVdCancEstab7dia,
        vlrVdCancAfil7dia,
        vlrVdEstabMes,
        vlrVdAfilMes,
        vlrVdCancEstabMes,
        vlrVdCancAfilMes,
        vlrComissaoDisponivelHoje,
        vlrSaquesHoje
      ]);
}

TblAfiliadosDashboardGveB12fBVStruct
    createTblAfiliadosDashboardGveB12fBVStruct({
  int? id,
  String? nome,
  double? comissaoDia,
  double? comissao7dias,
  double? comissaoMes,
  double? comissaoDisponivel,
  double? comissaoPendente,
  int? quantIndicacoes,
  int? quantSubAfiliados,
  int? quantIndicacoesAtivos,
  int? quantSubAfiliadosAtivos,
  double? valorMeta,
  double? vlrVdEstabDia,
  double? vlrVdAfilDia,
  double? vlrVdCancEstabDia,
  double? vlrVdCancAfilDia,
  bool? sistema,
  bool? result,
  double? vlrVdEstab7dia,
  double? vlrVdAfil7dia,
  double? vlrVdCancEstab7dia,
  double? vlrVdCancAfil7dia,
  double? vlrVdEstabMes,
  double? vlrVdAfilMes,
  double? vlrVdCancEstabMes,
  double? vlrVdCancAfilMes,
  double? vlrComissaoDisponivelHoje,
  double? vlrSaquesHoje,
}) =>
        TblAfiliadosDashboardGveB12fBVStruct(
          id: id,
          nome: nome,
          comissaoDia: comissaoDia,
          comissao7dias: comissao7dias,
          comissaoMes: comissaoMes,
          comissaoDisponivel: comissaoDisponivel,
          comissaoPendente: comissaoPendente,
          quantIndicacoes: quantIndicacoes,
          quantSubAfiliados: quantSubAfiliados,
          quantIndicacoesAtivos: quantIndicacoesAtivos,
          quantSubAfiliadosAtivos: quantSubAfiliadosAtivos,
          valorMeta: valorMeta,
          vlrVdEstabDia: vlrVdEstabDia,
          vlrVdAfilDia: vlrVdAfilDia,
          vlrVdCancEstabDia: vlrVdCancEstabDia,
          vlrVdCancAfilDia: vlrVdCancAfilDia,
          sistema: sistema,
          result: result,
          vlrVdEstab7dia: vlrVdEstab7dia,
          vlrVdAfil7dia: vlrVdAfil7dia,
          vlrVdCancEstab7dia: vlrVdCancEstab7dia,
          vlrVdCancAfil7dia: vlrVdCancAfil7dia,
          vlrVdEstabMes: vlrVdEstabMes,
          vlrVdAfilMes: vlrVdAfilMes,
          vlrVdCancEstabMes: vlrVdCancEstabMes,
          vlrVdCancAfilMes: vlrVdCancAfilMes,
          vlrComissaoDisponivelHoje: vlrComissaoDisponivelHoje,
          vlrSaquesHoje: vlrSaquesHoje,
        );
