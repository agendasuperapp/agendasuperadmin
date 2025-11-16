import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_admin_cupons_padroes_cad_widget.dart'
    show CpAdminCuponsPadroesCadWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpAdminCuponsPadroesCadModel
    extends FlutterFlowModel<CpAdminCuponsPadroesCadWidget> {
  ///  Local state fields for this component.

  bool varSituacao = true;

  bool varBannerEscuro = false;

  List<int> varIDPlanosLib = [];
  void addToVarIDPlanosLib(int item) => varIDPlanosLib.add(item);
  void removeFromVarIDPlanosLib(int item) => varIDPlanosLib.remove(item);
  void removeAtIndexFromVarIDPlanosLib(int index) =>
      varIDPlanosLib.removeAt(index);
  void insertAtIndexInVarIDPlanosLib(int index, int item) =>
      varIDPlanosLib.insert(index, item);
  void updateVarIDPlanosLibAtIndex(int index, Function(int) updateFn) =>
      varIDPlanosLib[index] = updateFn(varIDPlanosLib[index]);

  List<int> varIDPlanosNomesLib = [];
  void addToVarIDPlanosNomesLib(int item) => varIDPlanosNomesLib.add(item);
  void removeFromVarIDPlanosNomesLib(int item) =>
      varIDPlanosNomesLib.remove(item);
  void removeAtIndexFromVarIDPlanosNomesLib(int index) =>
      varIDPlanosNomesLib.removeAt(index);
  void insertAtIndexInVarIDPlanosNomesLib(int index, int item) =>
      varIDPlanosNomesLib.insert(index, item);
  void updateVarIDPlanosNomesLibAtIndex(int index, Function(int) updateFn) =>
      varIDPlanosNomesLib[index] = updateFn(varIDPlanosNomesLib[index]);

  bool varAceitoRenovacao = false;

  bool varMostrarConfAvancadas = false;

  ///  State fields for stateful widgets in this component.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o Cupom';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDownTipoCupom widget.
  String? dropDownTipoCupomValue;
  FormFieldController<String>? dropDownTipoCupomValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o percentual de desconto';
    }

    return null;
  }

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for TextFieldValidade widget.
  FocusNode? textFieldValidadeFocusNode;
  TextEditingController? textFieldValidadeTextController;
  late MaskTextInputFormatter textFieldValidadeMask;
  String? Function(BuildContext, String?)?
      textFieldValidadeTextControllerValidator;
  String? _textFieldValidadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de validade do cupom';
    }

    if (val.length < 10) {
      return 'Data incompleta';
    }

    if (!RegExp(
            '^(?:(?:(0[1-9]|[12]\\d|3[01])/(0[13578]|1[02])/\\d{4})|(?:(0[1-9]|[12]\\d|30)/(0[469]|11)/\\d{4})|(?:(0[1-9]|1\\d|2[0-8])/02/\\d{4})|(29/02/(?:(?:\\d{2}(?:0[48]|[2468][048]|[13579][26]))|(?:(?:0[48]|[2468][048]|[13579][26])00))))\$')
        .hasMatch(val)) {
      return 'Data inválida, verifique';
    }
    return null;
  }

  // State field(s) for DropDownEstabLib widget.
  int? dropDownEstabLibValue;
  FormFieldController<int>? dropDownEstabLibValueController;
  // State field(s) for SwitchSituacao widget.
  bool? switchSituacaoValue;
  // State field(s) for SwitchTipoUsuario widget.
  bool? switchTipoUsuarioValue;
  // State field(s) for SwitchPrincipal widget.
  bool? switchPrincipalValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblAfiliadosCuponsPadRow>? queryResultConsCupomCad;

  @override
  void initState(BuildContext context) {
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textController4Validator = _textController4Validator;
    textFieldValidadeTextControllerValidator =
        _textFieldValidadeTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldValidadeFocusNode?.dispose();
    textFieldValidadeTextController?.dispose();
  }
}
