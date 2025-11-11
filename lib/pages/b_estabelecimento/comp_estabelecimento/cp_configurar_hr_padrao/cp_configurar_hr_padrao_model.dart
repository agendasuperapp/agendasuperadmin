import '/flutter_flow/flutter_flow_util.dart';
import 'cp_configurar_hr_padrao_widget.dart' show CpConfigurarHrPadraoWidget;
import 'package:flutter/material.dart';

class CpConfigurarHrPadraoModel
    extends FlutterFlowModel<CpConfigurarHrPadraoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
