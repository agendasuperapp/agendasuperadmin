import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_afiliado_plano_widget.dart' show CpAfiliadoPlanoWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoPlanoModel extends FlutterFlowModel<CpAfiliadoPlanoWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAfiliadoPlanoRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
