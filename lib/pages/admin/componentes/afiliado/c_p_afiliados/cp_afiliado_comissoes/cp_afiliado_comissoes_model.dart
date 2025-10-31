import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_aviso_cadastro/cp_afiliado_aviso_cadastro_widget.dart';
import 'cp_afiliado_comissoes_widget.dart' show CpAfiliadoComissoesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoComissoesModel
    extends FlutterFlowModel<CpAfiliadoComissoesWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAfiliadosComissaoRow>>? requestCompleter2;
  Completer<List<ViewTblAfiliadosComissaoRow>>? requestCompleter1;
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
