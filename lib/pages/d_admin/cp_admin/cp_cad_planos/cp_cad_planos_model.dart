import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_planos_widget.dart' show CpCadPlanosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpCadPlanosModel extends FlutterFlowModel<CpCadPlanosWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  List<TblAfiliadosAppsRow> varTblAfiliadosApps = [];
  void addToVarTblAfiliadosApps(TblAfiliadosAppsRow item) =>
      varTblAfiliadosApps.add(item);
  void removeFromVarTblAfiliadosApps(TblAfiliadosAppsRow item) =>
      varTblAfiliadosApps.remove(item);
  void removeAtIndexFromVarTblAfiliadosApps(int index) =>
      varTblAfiliadosApps.removeAt(index);
  void insertAtIndexInVarTblAfiliadosApps(
          int index, TblAfiliadosAppsRow item) =>
      varTblAfiliadosApps.insert(index, item);
  void updateVarTblAfiliadosAppsAtIndex(
          int index, Function(TblAfiliadosAppsRow) updateFn) =>
      varTblAfiliadosApps[index] = updateFn(varTblAfiliadosApps[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_cad_planos widget.
  List<TblAfiliadosAppsRow>? queryConsTblAfiliadosApps;
  Completer<List<TblPlanosPeriodosRow>>? requestCompleter3;
  // State field(s) for DropDownAplicativo1 widget.
  int? dropDownAplicativo1Value;
  FormFieldController<int>? dropDownAplicativo1ValueController;
  Completer<List<TblPlanosNomesRow>>? requestCompleter2;
  Completer<List<ViewTblAppPlanosNomesRow>>? requestCompleter1;
  Completer<List<TblPlanosPeriodosRow>>? requestCompleter4;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
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
}
