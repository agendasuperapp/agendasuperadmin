import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_cad_contas_widget.dart' show CpCadContasWidget;
import 'package:flutter/material.dart';

class CpCadContasModel extends FlutterFlowModel<CpCadContasWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownAplicativo1 widget.
  int? dropDownAplicativo1Value;
  FormFieldController<int>? dropDownAplicativo1ValueController;
  // State field(s) for DropDownBanco widget.
  int? dropDownBancoValue;
  FormFieldController<int>? dropDownBancoValueController;
  // State field(s) for TextFieldNomeConta widget.
  FocusNode? textFieldNomeContaFocusNode;
  TextEditingController? textFieldNomeContaTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeContaTextControllerValidator;
  // State field(s) for TextFieldIEmail widget.
  FocusNode? textFieldIEmailFocusNode;
  TextEditingController? textFieldIEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldIEmailTextControllerValidator;
  // State field(s) for TextFieldKey widget.
  FocusNode? textFieldKeyFocusNode;
  TextEditingController? textFieldKeyTextController;
  String? Function(BuildContext, String?)? textFieldKeyTextControllerValidator;
  // State field(s) for TextFieldSigningSecret widget.
  FocusNode? textFieldSigningSecretFocusNode;
  TextEditingController? textFieldSigningSecretTextController;
  String? Function(BuildContext, String?)?
      textFieldSigningSecretTextControllerValidator;
  // State field(s) for TextFieldSucessURL widget.
  FocusNode? textFieldSucessURLFocusNode;
  TextEditingController? textFieldSucessURLTextController;
  String? Function(BuildContext, String?)?
      textFieldSucessURLTextControllerValidator;
  // State field(s) for TextFieldCancelURL widget.
  FocusNode? textFieldCancelURLFocusNode;
  TextEditingController? textFieldCancelURLTextController;
  String? Function(BuildContext, String?)?
      textFieldCancelURLTextControllerValidator;
  // State field(s) for TextFieldReturnUrl widget.
  FocusNode? textFieldReturnUrlFocusNode;
  TextEditingController? textFieldReturnUrlTextController;
  String? Function(BuildContext, String?)?
      textFieldReturnUrlTextControllerValidator;
  // State field(s) for SwitchContaProducao widget.
  bool? switchContaProducaoValue;
  // State field(s) for SwitchSituacao widget.
  bool? switchSituacaoValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblPlanosContasRow>? queryConsContaCad;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblPlanosContasRow? resultInsertConta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNomeContaFocusNode?.dispose();
    textFieldNomeContaTextController?.dispose();

    textFieldIEmailFocusNode?.dispose();
    textFieldIEmailTextController?.dispose();

    textFieldKeyFocusNode?.dispose();
    textFieldKeyTextController?.dispose();

    textFieldSigningSecretFocusNode?.dispose();
    textFieldSigningSecretTextController?.dispose();

    textFieldSucessURLFocusNode?.dispose();
    textFieldSucessURLTextController?.dispose();

    textFieldCancelURLFocusNode?.dispose();
    textFieldCancelURLTextController?.dispose();

    textFieldReturnUrlFocusNode?.dispose();
    textFieldReturnUrlTextController?.dispose();
  }
}
