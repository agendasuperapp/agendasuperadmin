import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_planos_nomes_widget.dart' show CpCadPlanosNomesWidget;
import 'package:flutter/material.dart';

class CpCadPlanosNomesModel extends FlutterFlowModel<CpCadPlanosNomesWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome  do plano';
    }

    return null;
  }

  // State field(s) for DropDownTipoPlano widget.
  int? dropDownTipoPlanoValue;
  FormFieldController<int>? dropDownTipoPlanoValueController;
  // State field(s) for CountControllerQtProfMin widget.
  int? countControllerQtProfMinValue;
  // State field(s) for CountControllerQtProfMax widget.
  int? countControllerQtProfMaxValue;
  // State field(s) for TextFieldQtAgendamentos widget.
  FocusNode? textFieldQtAgendamentosFocusNode;
  TextEditingController? textFieldQtAgendamentosTextController;
  String? Function(BuildContext, String?)?
      textFieldQtAgendamentosTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosNomesRow>? queryConsNomePlano;

  @override
  void initState(BuildContext context) {
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldQtAgendamentosFocusNode?.dispose();
    textFieldQtAgendamentosTextController?.dispose();
  }
}
