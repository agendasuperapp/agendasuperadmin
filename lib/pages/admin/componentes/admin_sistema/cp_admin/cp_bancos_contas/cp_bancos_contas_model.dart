import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_bancos_contas_widget.dart' show CpBancosContasWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpBancosContasModel extends FlutterFlowModel<CpBancosContasWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  int varIDcontaEditando = 0;

  int varIDBancoEditando = 0;

  bool varRecorrenteAssinatura = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBarPlano widget.
  TabController? tabBarPlanoController;
  int get tabBarPlanoCurrentIndex =>
      tabBarPlanoController != null ? tabBarPlanoController!.index : 0;
  int get tabBarPlanoPreviousIndex =>
      tabBarPlanoController != null ? tabBarPlanoController!.previousIndex : 0;

  // State field(s) for TextFieldNomeBanco widget.
  FocusNode? textFieldNomeBancoFocusNode;
  TextEditingController? textFieldNomeBancoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeBancoTextControllerValidator;
  String? _textFieldNomeBancoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Nome';
    }

    return null;
  }

  // State field(s) for SwitchAssinatura widget.
  bool? switchAssinaturaValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblPlanosBancosRow>? queryConsBancoCad;
  Completer<List<TblPlanosBancosRow>>? requestCompleter1;
  // State field(s) for DropDownAplicativo1 widget.
  int? dropDownAplicativo1Value;
  FormFieldController<int>? dropDownAplicativo1ValueController;
  Completer<List<ViewTblPlanosContasRow>>? requestCompleter2;

  @override
  void initState(BuildContext context) {
    textFieldNomeBancoTextControllerValidator =
        _textFieldNomeBancoTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarPlanoController?.dispose();
    textFieldNomeBancoFocusNode?.dispose();
    textFieldNomeBancoTextController?.dispose();
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
