import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_estabelecimento_dashboard_widget.dart'
    show CpEstabelecimentoDashboardWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpEstabelecimentoDashboardModel
    extends FlutterFlowModel<CpEstabelecimentoDashboardWidget> {
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

  List<ViewTblEstabDashboardTopcliRow> varTblTopClientes = [];
  void addToVarTblTopClientes(ViewTblEstabDashboardTopcliRow item) =>
      varTblTopClientes.add(item);
  void removeFromVarTblTopClientes(ViewTblEstabDashboardTopcliRow item) =>
      varTblTopClientes.remove(item);
  void removeAtIndexFromVarTblTopClientes(int index) =>
      varTblTopClientes.removeAt(index);
  void insertAtIndexInVarTblTopClientes(
          int index, ViewTblEstabDashboardTopcliRow item) =>
      varTblTopClientes.insert(index, item);
  void updateVarTblTopClientesAtIndex(
          int index, Function(ViewTblEstabDashboardTopcliRow) updateFn) =>
      varTblTopClientes[index] = updateFn(varTblTopClientes[index]);

  List<ViewTblEstabDashboardTopservRow> varTblTopServicos = [];
  void addToVarTblTopServicos(ViewTblEstabDashboardTopservRow item) =>
      varTblTopServicos.add(item);
  void removeFromVarTblTopServicos(ViewTblEstabDashboardTopservRow item) =>
      varTblTopServicos.remove(item);
  void removeAtIndexFromVarTblTopServicos(int index) =>
      varTblTopServicos.removeAt(index);
  void insertAtIndexInVarTblTopServicos(
          int index, ViewTblEstabDashboardTopservRow item) =>
      varTblTopServicos.insert(index, item);
  void updateVarTblTopServicosAtIndex(
          int index, Function(ViewTblEstabDashboardTopservRow) updateFn) =>
      varTblTopServicos[index] = updateFn(varTblTopServicos[index]);

  List<ViewTblEstabDashboardTopprofissRow> varTblTopProfissionais = [];
  void addToVarTblTopProfissionais(ViewTblEstabDashboardTopprofissRow item) =>
      varTblTopProfissionais.add(item);
  void removeFromVarTblTopProfissionais(
          ViewTblEstabDashboardTopprofissRow item) =>
      varTblTopProfissionais.remove(item);
  void removeAtIndexFromVarTblTopProfissionais(int index) =>
      varTblTopProfissionais.removeAt(index);
  void insertAtIndexInVarTblTopProfissionais(
          int index, ViewTblEstabDashboardTopprofissRow item) =>
      varTblTopProfissionais.insert(index, item);
  void updateVarTblTopProfissionaisAtIndex(
          int index, Function(ViewTblEstabDashboardTopprofissRow) updateFn) =>
      varTblTopProfissionais[index] = updateFn(varTblTopProfissionais[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - acConsEstabDashboard] action in cp_estabelecimento_dashboard widget.
  String? acReulstConsEstabDashboard;
  Completer<List<ViewTblAgendamentoCarrinhoRow>>? requestCompleter2;
  Completer<List<ViewTblAgendamentosRow>>? requestCompleter1;
  // Stores action output result for [Action Block - acConsEstabDashboard] action in Column widget.
  String? acReulstConsEstabDashboard2;
  Completer<List<ViewTblAgendamentosRow>>? requestCompleter4;
  Completer<List<ViewTblAgendamentoCarrinhoRow>>? requestCompleter3;
  // Stores action output result for [Custom Action - caAPPOneSignalverifyNotificationPermission] action in Button widget.
  bool? resultVerifPermi;
  // Stores action output result for [Custom Action - caAPPOneSignalgetUserId] action in Button widget.
  String? resultGetIDOneSignalx;
  // Stores action output result for [Action Block - acOneSignalAPPInicializarNotificacoes] action in Button widget.
  bool? acResultIniOneSig;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future acAtualizarGrafico(BuildContext context) async {
    List<ViewTblAfiliadoVendasDiariasAdminRow>? queryConVendasDiariasAdmin;
    List<ViewTblEstabelecimentoVendasDiariasRow>? queryConVendasDiariasEstab;

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
      queryConVendasDiariasEstab =
          await ViewTblEstabelecimentoVendasDiariasTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          FFAppState().VarIDEstabelecimentoLogado,
        ),
      );
      varGraficoDiasEValores = [];
      varGraficoValoresDiarios = queryConVendasDiariasEstab
          .map((e) => e.vendaDia)
          .withoutNulls
          .toList()
          .toList()
          .cast<double>();
      while (
          FFAppState().VarContadorBlock < queryConVendasDiariasEstab.length) {
        addToVarGraficoDiasEValores(
            '${queryConVendasDiariasEstab.elementAtOrNull(FFAppState().VarContadorBlock)?.dia?.toString()}${'\n'}${queryConVendasDiariasEstab.elementAtOrNull(FFAppState().VarContadorBlock)?.diaSemanaSigla}');
        FFAppState().VarContadorBlock = FFAppState().VarContadorBlock + 1;
      }
    }

    FFAppState().update(() {});
  }

  Future acAtualizarTabelas(BuildContext context) async {
    List<ViewTblEstabDashboardTopcliRow>? queryTopClientes;
    List<ViewTblEstabDashboardTopservRow>? queryTopServicos;
    List<ViewTblEstabDashboardTopprofissRow>? queryTopProfissionais;

    queryTopClientes = await ViewTblEstabDashboardTopcliTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'id_estabelecimento',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    varTblTopClientes = queryTopClientes
        .take(10000)
        .toList()
        .toList()
        .cast<ViewTblEstabDashboardTopcliRow>();
    queryTopServicos = await ViewTblEstabDashboardTopservTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'id_estabelecimento',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    varTblTopServicos = queryTopServicos
        .take(10000)
        .toList()
        .toList()
        .cast<ViewTblEstabDashboardTopservRow>();
    queryTopProfissionais =
        await ViewTblEstabDashboardTopprofissTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'id_estabelecimento',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    varTblTopProfissionais = queryTopProfissionais
        .take(10000)
        .toList()
        .toList()
        .cast<ViewTblEstabDashboardTopprofissRow>();
  }

  /// Additional helper methods.
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
}
