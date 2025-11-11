import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_configuracoes_widget.dart' show CpConfiguracoesWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpConfiguracoesModel extends FlutterFlowModel<CpConfiguracoesWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  bool varVerModoClaro = true;

  String? varImagemBlacground = '';

  int varIDTemaSelecionado = -1;

  bool varcfcobrarentradaagend = false;

  bool varcfenvmenswhatsclsalvar = false;

  bool varcfenvmenswhatsaprovar = false;

  bool varcfusarestaprovaragend = false;

  bool varcfusarclonfirmaragend = false;

  bool varcfenviarmenslembrete = false;

  String varcftipochavepixentag = 'CEL';

  String? varcfchavepixentradaag;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_configuracoes widget.
  List<TblEstabelecimentoRow>? queryConsEstabelecimentoLogado;
  // State field(s) for TextFieldPercEntrada widget.
  FocusNode? textFieldPercEntradaFocusNode;
  TextEditingController? textFieldPercEntradaTextController;
  String? Function(BuildContext, String?)?
      textFieldPercEntradaTextControllerValidator;
  // State field(s) for DropDownTipoChavePix widget.
  String? dropDownTipoChavePixValue;
  FormFieldController<String>? dropDownTipoChavePixValueController;
  // State field(s) for TextFieldChavePixCel widget.
  FocusNode? textFieldChavePixCelFocusNode;
  TextEditingController? textFieldChavePixCelTextController;
  late MaskTextInputFormatter textFieldChavePixCelMask;
  String? Function(BuildContext, String?)?
      textFieldChavePixCelTextControllerValidator;
  // State field(s) for TextFieldChavePixEmail widget.
  FocusNode? textFieldChavePixEmailFocusNode;
  TextEditingController? textFieldChavePixEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldChavePixEmailTextControllerValidator;
  // State field(s) for TextFieldChavePixCPF widget.
  FocusNode? textFieldChavePixCPFFocusNode;
  TextEditingController? textFieldChavePixCPFTextController;
  late MaskTextInputFormatter textFieldChavePixCPFMask;
  String? Function(BuildContext, String?)?
      textFieldChavePixCPFTextControllerValidator;
  // State field(s) for TextFieldChavePixCNPJ widget.
  FocusNode? textFieldChavePixCNPJFocusNode;
  TextEditingController? textFieldChavePixCNPJTextController;
  late MaskTextInputFormatter textFieldChavePixCNPJMask;
  String? Function(BuildContext, String?)?
      textFieldChavePixCNPJTextControllerValidator;
  // State field(s) for TextFieldNomeTitularPix widget.
  FocusNode? textFieldNomeTitularPixFocusNode;
  TextEditingController? textFieldNomeTitularPixTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeTitularPixTextControllerValidator;
  // State field(s) for TextFieldMinutosLembrete widget.
  FocusNode? textFieldMinutosLembreteFocusNode;
  TextEditingController? textFieldMinutosLembreteTextController;
  String? Function(BuildContext, String?)?
      textFieldMinutosLembreteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPercEntradaFocusNode?.dispose();
    textFieldPercEntradaTextController?.dispose();

    textFieldChavePixCelFocusNode?.dispose();
    textFieldChavePixCelTextController?.dispose();

    textFieldChavePixEmailFocusNode?.dispose();
    textFieldChavePixEmailTextController?.dispose();

    textFieldChavePixCPFFocusNode?.dispose();
    textFieldChavePixCPFTextController?.dispose();

    textFieldChavePixCNPJFocusNode?.dispose();
    textFieldChavePixCNPJTextController?.dispose();

    textFieldNomeTitularPixFocusNode?.dispose();
    textFieldNomeTitularPixTextController?.dispose();

    textFieldMinutosLembreteFocusNode?.dispose();
    textFieldMinutosLembreteTextController?.dispose();
  }
}
