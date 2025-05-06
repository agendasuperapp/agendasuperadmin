import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_lista_estabelecimentos_admin_widget.dart'
    show CpListaEstabelecimentosAdminWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpListaEstabelecimentosAdminModel
    extends FlutterFlowModel<CpListaEstabelecimentosAdminWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  String varFotoFundo = 'sem foto';

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblEstabelecimentosAdminRow>>? requestCompleter2;
  Completer<List<ViewTblEstabelecimentosAdminRow>>? requestCompleter1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
}
