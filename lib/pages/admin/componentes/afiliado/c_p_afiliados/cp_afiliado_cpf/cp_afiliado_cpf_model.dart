import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_afiliado_cpf_widget.dart' show CpAfiliadoCpfWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpAfiliadoCpfModel extends FlutterFlowModel<CpAfiliadoCpfWidget> {
  ///  Local state fields for this component.

  bool varCPFLocalizado = false;

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextFieldCPF widget.
  FocusNode? textFieldCPFFocusNode;
  TextEditingController? textFieldCPFTextController;
  final textFieldCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textFieldCPFTextControllerValidator;
  String? _textFieldCPFTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o CPF';
    }

    if (val.length < 14) {
      return 'CPF incompleto';
    }

    if (!RegExp(
            '^(?!.*?(\\d)(?:[\\.\\-]?\\1){10})(?:\\d{11}|\\d{3}\\.\\d{3}\\.\\d{3}-\\d{2})\$')
        .hasMatch(val)) {
      return 'CPF inválido, verifique...';
    }
    return null;
  }

  // Stores action output result for [Action Block - acConsultarCPFSportingBet] action in TextFieldCPF widget.
  String? resultConsCpfSportBet;
  // State field(s) for TextFieldDtNascimento widget.
  FocusNode? textFieldDtNascimentoFocusNode;
  TextEditingController? textFieldDtNascimentoTextController;
  final textFieldDtNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      textFieldDtNascimentoTextControllerValidator;
  String? _textFieldDtNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe sua data de nascimento';
    }

    if (val.length < 10) {
      return 'Data de nascimento imcompleta';
    }

    if (!RegExp(
            '^(?:(?:(0[1-9]|[12]\\d|3[01])/(0[13578]|1[02])/\\d{4})|(?:(0[1-9]|[12]\\d|30)/(0[469]|11)/\\d{4})|(?:(0[1-9]|1\\d|2[0-8])/02/\\d{4})|(29/02/(?:(?:\\d{2}(?:0[48]|[2468][048]|[13579][26]))|(?:(?:0[48]|[2468][048]|[13579][26])00))))\$')
        .hasMatch(val)) {
      return 'Data inválida, verifique...';
    }
    return null;
  }

  // Stores action output result for [Action Block - acConsultarCPFSportingBet] action in TextFieldDtNascimento widget.
  String? resultConsCpfSportBet2;
  // State field(s) for TextFieldNomeAfiliado widget.
  FocusNode? textFieldNomeAfiliadoFocusNode;
  TextEditingController? textFieldNomeAfiliadoTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeAfiliadoTextControllerValidator;
  // Stores action output result for [Action Block - acConsultarCPFCNPJCad] action in Button widget.
  String? acResultConsCPFCad;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblAfiliadosRow? resultInsertAfiliado;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblAfiliadosAtivDashRow? afi;

  @override
  void initState(BuildContext context) {
    textFieldCPFTextControllerValidator = _textFieldCPFTextControllerValidator;
    textFieldDtNascimentoTextControllerValidator =
        _textFieldDtNascimentoTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldCPFFocusNode?.dispose();
    textFieldCPFTextController?.dispose();

    textFieldDtNascimentoFocusNode?.dispose();
    textFieldDtNascimentoTextController?.dispose();

    textFieldNomeAfiliadoFocusNode?.dispose();
    textFieldNomeAfiliadoTextController?.dispose();
  }
}
