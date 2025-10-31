import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_admin_cupons_padroes_widget.dart' show CpAdminCuponsPadroesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAdminCuponsPadroesModel
    extends FlutterFlowModel<CpAdminCuponsPadroesWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  bool varMostrarAvisoEditCupom = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAfiliadosCuponsAdminRow>>? requestCompleter;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for DropDownAplicativo widget.
  int? dropDownAplicativoValue;
  FormFieldController<int>? dropDownAplicativoValueController;
  // State field(s) for SwitchTipoUsuario widget.
  bool? switchTipoUsuarioValue;
  // State field(s) for ListViewCupons widget.
  ScrollController? listViewCuponsScrollController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewCuponsScrollController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    listViewCuponsScrollController?.dispose();
  }

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
