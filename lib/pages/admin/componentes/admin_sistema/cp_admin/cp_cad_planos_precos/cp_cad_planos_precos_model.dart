import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_planos_precos_widget.dart' show CpCadPlanosPrecosWidget;
import 'package:flutter/material.dart';

class CpCadPlanosPrecosModel extends FlutterFlowModel<CpCadPlanosPrecosWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownPlanoPeriodo widget.
  int? dropDownPlanoPeriodoValue;
  FormFieldController<int>? dropDownPlanoPeriodoValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownPlanoPeriodo widget.
  List<TblPlanosPeriodosRow>? queryConsPlanosPeriodos;
  // State field(s) for DropDownNome widget.
  int? dropDownNomeValue;
  FormFieldController<int>? dropDownNomeValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDownNome widget.
  List<TblPlanosNomesRow>? queryConsPlanoNome;
  // State field(s) for CountControllerQtProfMin widget.
  int? countControllerQtProfMinValue;
  // State field(s) for CountControllerQtProfMax widget.
  int? countControllerQtProfMaxValue;
  // State field(s) for TextFieldQtAgendamentos widget.
  FocusNode? textFieldQtAgendamentosFocusNode;
  TextEditingController? textFieldQtAgendamentosTextController;
  String? Function(BuildContext, String?)?
      textFieldQtAgendamentosTextControllerValidator;
  String? _textFieldQtAgendamentosTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a quantidade máxima de agendamentos';
    }

    return null;
  }

  // State field(s) for TextFieldValor widget.
  FocusNode? textFieldValorFocusNode;
  TextEditingController? textFieldValorTextController;
  String? Function(BuildContext, String?)?
      textFieldValorTextControllerValidator;
  String? _textFieldValorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o valor do plano';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosRow>? queryConsNomePlano;

  @override
  void initState(BuildContext context) {
    textFieldQtAgendamentosTextControllerValidator =
        _textFieldQtAgendamentosTextControllerValidator;
    textFieldValorTextControllerValidator =
        _textFieldValorTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldQtAgendamentosFocusNode?.dispose();
    textFieldQtAgendamentosTextController?.dispose();

    textFieldValorFocusNode?.dispose();
    textFieldValorTextController?.dispose();
  }
}
