import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_validar_email_tel_widget.dart' show CpValidarEmailTelWidget;
import 'package:flutter/material.dart';

class CpValidarEmailTelModel extends FlutterFlowModel<CpValidarEmailTelWidget> {
  ///  Local state fields for this component.

  String? varCodigoValidacao;

  bool varCodigoValidacaoEnviado = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldTelefone widget.
  FocusNode? textFieldTelefoneFocusNode;
  TextEditingController? textFieldTelefoneTextController;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextControllerValidator;
  // State field(s) for TextFieldCodigo widget.
  FocusNode? textFieldCodigoFocusNode;
  TextEditingController? textFieldCodigoTextController;
  String? Function(BuildContext, String?)?
      textFieldCodigoTextControllerValidator;
  // Stores action output result for [Backend Call - API (EnivarEmail)] action in Button widget.
  ApiCallResponse? apiResulEmailValidacao;
  // Stores action output result for [Action Block - acWhatsAppEnviarMensagem] action in Button widget.
  bool? acEnvierMsgWhatsAppResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefoneFocusNode?.dispose();
    textFieldTelefoneTextController?.dispose();

    textFieldCodigoFocusNode?.dispose();
    textFieldCodigoTextController?.dispose();
  }
}
