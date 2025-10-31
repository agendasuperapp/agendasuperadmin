import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'd_e_l_e_t_e_cp_afiliado_pagamento_widget.dart'
    show DELETECpAfiliadoPagamentoWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DELETECpAfiliadoPagamentoModel
    extends FlutterFlowModel<DELETECpAfiliadoPagamentoWidget> {
  ///  Local state fields for this component.

  String varFormaPag = 'SEM';

  String varQrCode = '0';

  String? varUrl;

  String varIDPagamentoBanco = '0';

  bool varPagamentoConcluido = false;

  bool varTesteAtivado = false;

  bool varPagoTeste = false;

  bool varPgConfirmado = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDownFormaPagamento widget.
  int? dropDownFormaPagamentoValue;
  FormFieldController<int>? dropDownFormaPagamentoValueController;
  // State field(s) for TextFieldCardNumero widget.
  FocusNode? textFieldCardNumeroFocusNode;
  TextEditingController? textFieldCardNumeroTextController;
  late MaskTextInputFormatter textFieldCardNumeroMask;
  String? Function(BuildContext, String?)?
      textFieldCardNumeroTextControllerValidator;
  String? _textFieldCardNumeroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o número do cartão';
    }

    return null;
  }

  // State field(s) for TextFieldNomeTitular widget.
  FocusNode? textFieldNomeTitularFocusNode;
  TextEditingController? textFieldNomeTitularTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeTitularTextControllerValidator;
  String? _textFieldNomeTitularTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digite o nome do Titular (Igual está impresso no cartão)';
    }

    return null;
  }

  // State field(s) for TextFieldCardMes widget.
  FocusNode? textFieldCardMesFocusNode;
  TextEditingController? textFieldCardMesTextController;
  late MaskTextInputFormatter textFieldCardMesMask;
  String? Function(BuildContext, String?)?
      textFieldCardMesTextControllerValidator;
  // State field(s) for TextFieldCardAno widget.
  FocusNode? textFieldCardAnoFocusNode;
  TextEditingController? textFieldCardAnoTextController;
  late MaskTextInputFormatter textFieldCardAnoMask;
  String? Function(BuildContext, String?)?
      textFieldCardAnoTextControllerValidator;
  // State field(s) for TextFieldCardCVV widget.
  FocusNode? textFieldCardCVVFocusNode;
  TextEditingController? textFieldCardCVVTextController;
  late MaskTextInputFormatter textFieldCardCVVMask;
  String? Function(BuildContext, String?)?
      textFieldCardCVVTextControllerValidator;
  // State field(s) for DropDownQtParcelas widget.
  int? dropDownQtParcelasValue;
  FormFieldController<int>? dropDownQtParcelasValueController;
  // State field(s) for DropDownTipoDoc widget.
  String? dropDownTipoDocValue;
  FormFieldController<String>? dropDownTipoDocValueController;
  // State field(s) for TextFieldDocNumeroCPF widget.
  FocusNode? textFieldDocNumeroCPFFocusNode;
  TextEditingController? textFieldDocNumeroCPFTextController;
  late MaskTextInputFormatter textFieldDocNumeroCPFMask;
  String? Function(BuildContext, String?)?
      textFieldDocNumeroCPFTextControllerValidator;
  // State field(s) for TextFieldDocNumeroCNPJ widget.
  FocusNode? textFieldDocNumeroCNPJFocusNode;
  TextEditingController? textFieldDocNumeroCNPJTextController;
  late MaskTextInputFormatter textFieldDocNumeroCNPJMask;
  String? Function(BuildContext, String?)?
      textFieldDocNumeroCNPJTextControllerValidator;
  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextFieldQrCodeCopiaCola widget.
  FocusNode? textFieldQrCodeCopiaColaFocusNode;
  TextEditingController? textFieldQrCodeCopiaColaTextController;
  String? Function(BuildContext, String?)?
      textFieldQrCodeCopiaColaTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblEstabPlanoMpRow>? queryConsPag;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TblAfiliadosPlanoRow? resultInsertTblAfiliadoPlano;
  // Stores action output result for [Backend Call - API (Inserir Comissao Afiliado)] action in Button widget.
  ApiCallResponse? apiResultInsertComissao;
  Completer<List<TblEstabPlanoMpRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (Criar Token Cartao)] action in Button widget.
  ApiCallResponse? apiResultCriarToken;

  @override
  void initState(BuildContext context) {
    textFieldCardNumeroTextControllerValidator =
        _textFieldCardNumeroTextControllerValidator;
    textFieldNomeTitularTextControllerValidator =
        _textFieldNomeTitularTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldCardNumeroFocusNode?.dispose();
    textFieldCardNumeroTextController?.dispose();

    textFieldNomeTitularFocusNode?.dispose();
    textFieldNomeTitularTextController?.dispose();

    textFieldCardMesFocusNode?.dispose();
    textFieldCardMesTextController?.dispose();

    textFieldCardAnoFocusNode?.dispose();
    textFieldCardAnoTextController?.dispose();

    textFieldCardCVVFocusNode?.dispose();
    textFieldCardCVVTextController?.dispose();

    textFieldDocNumeroCPFFocusNode?.dispose();
    textFieldDocNumeroCPFTextController?.dispose();

    textFieldDocNumeroCNPJFocusNode?.dispose();
    textFieldDocNumeroCNPJTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldQrCodeCopiaColaFocusNode?.dispose();
    textFieldQrCodeCopiaColaTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
