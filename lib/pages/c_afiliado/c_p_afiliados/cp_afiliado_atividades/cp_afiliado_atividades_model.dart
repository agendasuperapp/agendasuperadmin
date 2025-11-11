import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_aviso_cadastro/cp_afiliado_aviso_cadastro_widget.dart';
import 'cp_afiliado_atividades_widget.dart' show CpAfiliadoAtividadesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoAtividadesModel
    extends FlutterFlowModel<CpAfiliadoAtividadesWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAfiliadosAtividadesRow>>? requestCompleter1;
  Completer<List<ViewTblAfiliadosAtividadesRow>>? requestCompleter2;
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
