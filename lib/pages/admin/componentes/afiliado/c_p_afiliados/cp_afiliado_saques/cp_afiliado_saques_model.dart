import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_afiliado_saques_widget.dart' show CpAfiliadoSaquesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoSaquesModel extends FlutterFlowModel<CpAfiliadoSaquesWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<TblAfiliadosSaquesRow>>? requestCompleter;
  // Stores action output result for [Action Block - acConsAfiliadoDaschboard] action in cp_afiliado_saques widget.
  String? acReulstConsAfilDashboard1;
  // Stores action output result for [Action Block - acConsAfiliadoDaschboard] action in Column widget.
  String? acReulstConsAfilDashboard3;
  // Stores action output result for [Action Block - acSolicitarSaque] action in ButtonSolicitarSaque widget.
  String? acResultSolicitarSaque1;
  // Stores action output result for [Action Block - acConsAfiliadoDaschboard] action in ButtonSolicitarSaque widget.
  String? acReulstConsAfilDashboard2;

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
