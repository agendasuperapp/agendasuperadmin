import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_aviso_cadastro/cp_afiliado_aviso_cadastro_widget.dart';
import 'cp_afiliado_dashboard_widget.dart' show CpAfiliadoDashboardWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoDashboardModel
    extends FlutterFlowModel<CpAfiliadoDashboardWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  List<String> varGraficoDiasEValores = [];
  void addToVarGraficoDiasEValores(String item) =>
      varGraficoDiasEValores.add(item);
  void removeFromVarGraficoDiasEValores(String item) =>
      varGraficoDiasEValores.remove(item);
  void removeAtIndexFromVarGraficoDiasEValores(int index) =>
      varGraficoDiasEValores.removeAt(index);
  void insertAtIndexInVarGraficoDiasEValores(int index, String item) =>
      varGraficoDiasEValores.insert(index, item);
  void updateVarGraficoDiasEValoresAtIndex(
          int index, Function(String) updateFn) =>
      varGraficoDiasEValores[index] = updateFn(varGraficoDiasEValores[index]);

  List<double> varGraficoValoresDiarios = [];
  void addToVarGraficoValoresDiarios(double item) =>
      varGraficoValoresDiarios.add(item);
  void removeFromVarGraficoValoresDiarios(double item) =>
      varGraficoValoresDiarios.remove(item);
  void removeAtIndexFromVarGraficoValoresDiarios(int index) =>
      varGraficoValoresDiarios.removeAt(index);
  void insertAtIndexInVarGraficoValoresDiarios(int index, double item) =>
      varGraficoValoresDiarios.insert(index, item);
  void updateVarGraficoValoresDiariosAtIndex(
          int index, Function(double) updateFn) =>
      varGraficoValoresDiarios[index] =
          updateFn(varGraficoValoresDiarios[index]);

  bool varMostrarDetalhes = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - acConsAfiliadoDaschboard] action in cp_afiliado_dashboard widget.
  String? acReulstConsAfilDashboard1;
  Completer<List<ViewTblAfiliadosComissaoRow>>? requestCompleter3;
  Completer<List<ViewTblAfiliadosComissaoRow>>? requestCompleter1;
  Completer<List<ViewTblAfiliadosRow>>? requestCompleter4;
  Completer<List<ViewTblAfiliadosAtividadesRow>>? requestCompleter2;
  // Stores action output result for [Action Block - acConsAfiliadoDaschboard] action in Column widget.
  String? acReulstConsAfilDashboard2;
  // Model for cp_afiliado_aviso_cadastro component.
  late CpAfiliadoAvisoCadastroModel cpAfiliadoAvisoCadastroModel;

  @override
  void initState(BuildContext context) {
    cpAfiliadoAvisoCadastroModel =
        createModel(context, () => CpAfiliadoAvisoCadastroModel());
  }

  @override
  void dispose() {
    cpAfiliadoAvisoCadastroModel.dispose();
  }

  /// Action blocks.
  Future acAtualizarGrafico(BuildContext context) async {
    List<ViewTblAfiliadoVendasDiariasAdminRow>? queryConVendasDiariasAdmin;
    List<ViewTblAfiliadoVendasDiariasRow>? queryConVendasDiarias;

    FFAppState().VarContadorBlock = 0;
    if (FFAppState().varTblUsuarios.adminSistema == true) {
      queryConVendasDiariasAdmin =
          await ViewTblAfiliadoVendasDiariasAdminTable().queryRows(
        queryFn: (q) => q,
      );
      varGraficoDiasEValores = [];
      varGraficoValoresDiarios = queryConVendasDiariasAdmin
          .map((e) => e.comissaoDia)
          .withoutNulls
          .toList()
          .toList()
          .cast<double>();
      while (
          FFAppState().VarContadorBlock < queryConVendasDiariasAdmin.length) {
        addToVarGraficoDiasEValores(
            '${queryConVendasDiariasAdmin.elementAtOrNull(FFAppState().VarContadorBlock)?.dia?.toString()}${'\n'}${queryConVendasDiariasAdmin.elementAtOrNull(FFAppState().VarContadorBlock)?.diaSemanaSigla}');
        FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
      }
    } else {
      queryConVendasDiarias =
          await ViewTblAfiliadoVendasDiariasTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          FFAppState().varIDAfiliadoLogado,
        ),
      );
      varGraficoDiasEValores = [];
      varGraficoValoresDiarios = queryConVendasDiarias
          .map((e) => e.comissaoDia)
          .withoutNulls
          .toList()
          .toList()
          .cast<double>();
      while (FFAppState().VarContadorBlock < queryConVendasDiarias.length) {
        addToVarGraficoDiasEValores(
            '${queryConVendasDiarias.elementAtOrNull(FFAppState().VarContadorBlock)?.dia?.toString()}${'\n'}${queryConVendasDiarias.elementAtOrNull(FFAppState().VarContadorBlock)?.diaSemanaSigla}');
        FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
      }
    }

    FFAppState().update(() {});
  }

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
