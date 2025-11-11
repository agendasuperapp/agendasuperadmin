import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pg_reset_senha_widget.dart' show PgResetSenhaWidget;
import 'package:flutter/material.dart';

class PgResetSenhaModel extends FlutterFlowModel<PgResetSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldCadEmail widget.
  FocusNode? textFieldCadEmailFocusNode;
  TextEditingController? textFieldCadEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldCadEmailTextControllerValidator;
  // State field(s) for TextFieldCadSenha widget.
  FocusNode? textFieldCadSenhaFocusNode;
  TextEditingController? textFieldCadSenhaTextController;
  late bool textFieldCadSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaTextControllerValidator;
  // State field(s) for TextFieldCadSenhaConf widget.
  FocusNode? textFieldCadSenhaConfFocusNode;
  TextEditingController? textFieldCadSenhaConfTextController;
  late bool textFieldCadSenhaConfVisibility;
  String? Function(BuildContext, String?)?
      textFieldCadSenhaConfTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update User)] action in Button widget.
  ApiCallResponse? apiResult835;

  @override
  void initState(BuildContext context) {
    textFieldCadSenhaVisibility = false;
    textFieldCadSenhaConfVisibility = false;
  }

  @override
  void dispose() {
    textFieldCadEmailFocusNode?.dispose();
    textFieldCadEmailTextController?.dispose();

    textFieldCadSenhaFocusNode?.dispose();
    textFieldCadSenhaTextController?.dispose();

    textFieldCadSenhaConfFocusNode?.dispose();
    textFieldCadSenhaConfTextController?.dispose();
  }
}
