import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case ViewTblProfissionaisRow:
            return ViewTblProfissionaisRow(data);
          case TblFormaPagamentoRow:
            return TblFormaPagamentoRow(data);
          case ViewTblAfiQtIndicacoesRow:
            return ViewTblAfiQtIndicacoesRow(data);
          case TblAfiliadosComissoesRow:
            return TblAfiliadosComissoesRow(data);
          case ViewTblEstabDashboardTopcliRow:
            return ViewTblEstabDashboardTopcliRow(data);
          case TblNotificacoesRow:
            return TblNotificacoesRow(data);
          case TblTesteRow:
            return TblTesteRow(data);
          case TblProfissionaisServLibRow:
            return TblProfissionaisServLibRow(data);
          case TblAgendamentosAtzRow:
            return TblAgendamentosAtzRow(data);
          case ViewTblAfiliadoVendasDiariasRow:
            return ViewTblAfiliadoVendasDiariasRow(data);
          case TblPlanosPrecosRow:
            return TblPlanosPrecosRow(data);
          case TblEstabPlanoMpRow:
            return TblEstabPlanoMpRow(data);
          case ViewTblAfiliadosCuponsRow:
            return ViewTblAfiliadosCuponsRow(data);
          case ViewTblAfiliadosAtividadesRow:
            return ViewTblAfiliadosAtividadesRow(data);
          case ViewTblAfiliadosEstabelecimentosQuantRow:
            return ViewTblAfiliadosEstabelecimentosQuantRow(data);
          case TblClientesRow:
            return TblClientesRow(data);
          case TblCadServicosRow:
            return TblCadServicosRow(data);
          case TblHistoricoEmailRow:
            return TblHistoricoEmailRow(data);
          case TblAppConfiguracoesRow:
            return TblAppConfiguracoesRow(data);
          case TblHorariosDisponiveisRow:
            return TblHorariosDisponiveisRow(data);
          case ViewTblEstabPlanoMpRow:
            return ViewTblEstabPlanoMpRow(data);
          case ViewTblHorariosPadraoRow:
            return ViewTblHorariosPadraoRow(data);
          case TblEstabelecimentoPlanoRow:
            return TblEstabelecimentoPlanoRow(data);
          case ViewTblAfiliadoPlanoRow:
            return ViewTblAfiliadoPlanoRow(data);
          case ViewTblAgendamentoCarrinhoNotifRow:
            return ViewTblAgendamentoCarrinhoNotifRow(data);
          case TblWhatsappConsultarRow:
            return TblWhatsappConsultarRow(data);
          case ViewTblHorariosPadraoCount2Row:
            return ViewTblHorariosPadraoCount2Row(data);
          case TblModelosFotosRow:
            return TblModelosFotosRow(data);
          case ViewTblEstabelecimentosRow:
            return ViewTblEstabelecimentosRow(data);
          case ViewTblAppPlanosEstabelecimentosRow:
            return ViewTblAppPlanosEstabelecimentosRow(data);
          case TblUsuariosRow:
            return TblUsuariosRow(data);
          case TblAgendamentosRow:
            return TblAgendamentosRow(data);
          case ViewTblHorariosPadraoCountRow:
            return ViewTblHorariosPadraoCountRow(data);
          case ViewTblWhatsappConsultarRow:
            return ViewTblWhatsappConsultarRow(data);
          case ViewTblHorariosDispDiasRow:
            return ViewTblHorariosDispDiasRow(data);
          case TblAfiliadosCuponsPadRow:
            return TblAfiliadosCuponsPadRow(data);
          case TblPlanosNomesRow:
            return TblPlanosNomesRow(data);
          case ViewTblAfiliadosComissaoRow:
            return ViewTblAfiliadosComissaoRow(data);
          case ViewTblAgendamentosRow:
            return ViewTblAgendamentosRow(data);
          case TblAfiliadosSaquesRow:
            return TblAfiliadosSaquesRow(data);
          case TblNotificacoesQuantRow:
            return TblNotificacoesQuantRow(data);
          case TblAfiliadosCuponsLibRow:
            return TblAfiliadosCuponsLibRow(data);
          case ViewTblAppPlanosPeriodosRow:
            return ViewTblAppPlanosPeriodosRow(data);
          case TblDiasSemanaRow:
            return TblDiasSemanaRow(data);
          case ViewTblNotificacoesPushRow:
            return ViewTblNotificacoesPushRow(data);
          case TblEstadosRow:
            return TblEstadosRow(data);
          case ViewTblAfiliadosComissaoTotaisRow:
            return ViewTblAfiliadosComissaoTotaisRow(data);
          case TblHorariosFuncionamentoRow:
            return TblHorariosFuncionamentoRow(data);
          case TblAfiliadosMetasRow:
            return TblAfiliadosMetasRow(data);
          case TblEstabelecimentoRow:
            return TblEstabelecimentoRow(data);
          case ViewTblAppPlanosNomesRow:
            return ViewTblAppPlanosNomesRow(data);
          case ViewTblAfiliadosCuponsAdminRow:
            return ViewTblAfiliadosCuponsAdminRow(data);
          case TblAfiliadosPlanoRow:
            return TblAfiliadosPlanoRow(data);
          case TblAgendamentosStatusRow:
            return TblAgendamentosStatusRow(data);
          case TblPlanosPeriodosRow:
            return TblPlanosPeriodosRow(data);
          case TblAgendamentoCarrinhoRow:
            return TblAgendamentoCarrinhoRow(data);
          case ViewTblNotificacoesRow:
            return ViewTblNotificacoesRow(data);
          case ViewTblEstabelecimentoVendasDiariasRow:
            return ViewTblEstabelecimentoVendasDiariasRow(data);
          case TblAppTemasBlackgroundRow:
            return TblAppTemasBlackgroundRow(data);
          case ViewTblHorariosDispHorasRow:
            return ViewTblHorariosDispHorasRow(data);
          case TblWhatsappRow:
            return TblWhatsappRow(data);
          case TblAfiliadosAtivDashRow:
            return TblAfiliadosAtivDashRow(data);
          case ViewTblAfiliadoVendasDiariasAdminRow:
            return ViewTblAfiliadoVendasDiariasAdminRow(data);
          case TblPassTempRow:
            return TblPassTempRow(data);
          case TblUsuariosTiposRow:
            return TblUsuariosTiposRow(data);
          case ViewTblAgendamentosAtzRow:
            return ViewTblAgendamentosAtzRow(data);
          case ViewTblAfiliadoDashboardRow:
            return ViewTblAfiliadoDashboardRow(data);
          case TblLogFuncoesRow:
            return TblLogFuncoesRow(data);
          case TblAppSegmentosRow:
            return TblAppSegmentosRow(data);
          case ViewTblClientesRow:
            return ViewTblClientesRow(data);
          case ViewTblEstabDashboardTopservRow:
            return ViewTblEstabDashboardTopservRow(data);
          case ViewTblEstabDashboardTopprofissRow:
            return ViewTblEstabDashboardTopprofissRow(data);
          case ViewTblAppSegmentosRow:
            return ViewTblAppSegmentosRow(data);
          case ViewTblHorariosFuncionamentoRow:
            return ViewTblHorariosFuncionamentoRow(data);
          case TblProfissionaisRow:
            return TblProfissionaisRow(data);
          case TblEmailRow:
            return TblEmailRow(data);
          case ViewTblDevicesRow:
            return ViewTblDevicesRow(data);
          case TblAppComodidadesRow:
            return TblAppComodidadesRow(data);
          case ViewTblAfiliadoPgSaquesRow:
            return ViewTblAfiliadoPgSaquesRow(data);
          case ViewTblAfiliadosRow:
            return ViewTblAfiliadosRow(data);
          case ViewTblServicosRow:
            return ViewTblServicosRow(data);
          case ViewTblAfiliadosEstabelecimentosRow:
            return ViewTblAfiliadosEstabelecimentosRow(data);
          case TblDevicesRow:
            return TblDevicesRow(data);
          case ViewTblAfiliadosQuantRow:
            return ViewTblAfiliadosQuantRow(data);
          case TblModelosServicosRow:
            return TblModelosServicosRow(data);
          case ViewTblUsuariosRow:
            return ViewTblUsuariosRow(data);
          case TblEstabelecimentoBannersRow:
            return TblEstabelecimentoBannersRow(data);
          case ViewUsersRow:
            return ViewUsersRow(data);
          case TblDiasMesRow:
            return TblDiasMesRow(data);
          case ViewTblAgendamentoCarrinhoRow:
            return ViewTblAgendamentoCarrinhoRow(data);
          case ViewTblEstadosRow:
            return ViewTblEstadosRow(data);
          case TblHorariosPadraoRow:
            return TblHorariosPadraoRow(data);
          case ViewTblWhatsappEdgeFuncRow:
            return ViewTblWhatsappEdgeFuncRow(data);
          case TblAppModelosBannerRow:
            return TblAppModelosBannerRow(data);
          case TblEstabelecimentosMetasRow:
            return TblEstabelecimentosMetasRow(data);
          case ViewTblAppPlanosRow:
            return ViewTblAppPlanosRow(data);
          case TblAfiliadosRow:
            return TblAfiliadosRow(data);
          case ViewTblAfiliadoCadRow:
            return ViewTblAfiliadoCadRow(data);
          case ViewTblEmailRow:
            return ViewTblEmailRow(data);
          case ViewTblNotificacoesQuantRow:
            return ViewTblNotificacoesQuantRow(data);
          case ViewTblHorariosPadrao2Row:
            return ViewTblHorariosPadrao2Row(data);
          case ViewTblEstabelecimentosAdminRow:
            return ViewTblEstabelecimentosAdminRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
