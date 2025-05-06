import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_planos_periodos_widget.dart' show CpCadPlanosPeriodosWidget;
import 'package:flutter/material.dart';

class CpCadPlanosPeriodosModel
    extends FlutterFlowModel<CpCadPlanosPeriodosWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownTipoPeriodo widget.
  String? dropDownTipoPeriodoValue;
  FormFieldController<String>? dropDownTipoPeriodoValueController;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome  do período';
    }

    return null;
  }

  // State field(s) for CountControllerQtMeses widget.
  int? countControllerQtMesesValue;
  // State field(s) for TextFieldObs widget.
  FocusNode? textFieldObsFocusNode;
  TextEditingController? textFieldObsTextController;
  String? Function(BuildContext, String?)? textFieldObsTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosPeriodosRow>? queryConsNomePlano;

  @override
  void initState(BuildContext context) {
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldObsFocusNode?.dispose();
    textFieldObsTextController?.dispose();
  }
}
