import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cp_admin_configuracoes_widget.dart' show CpAdminConfiguracoesWidget;
import 'package:flutter/material.dart';

class CpAdminConfiguracoesModel
    extends FlutterFlowModel<CpAdminConfiguracoesWidget> {
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

  // Stores action output result for [Backend Call - Query Rows] action in cp_admin_configuracoes widget.
  List<TblConfiguracoesRow>? queryConsConfiguracoes;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;
  // State field(s) for TextFieldPMsgManutencao widget.
  FocusNode? textFieldPMsgManutencaoFocusNode;
  TextEditingController? textFieldPMsgManutencaoTextController;
  String? Function(BuildContext, String?)?
      textFieldPMsgManutencaoTextControllerValidator;
  // State field(s) for DropDownTipoPlanoHome widget.
  String? dropDownTipoPlanoHomeValue;
  FormFieldController<String>? dropDownTipoPlanoHomeValueController;
  // State field(s) for DropDownTipoPlanoRenovacao widget.
  String? dropDownTipoPlanoRenovacaoValue;
  FormFieldController<String>? dropDownTipoPlanoRenovacaoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();

    textFieldPMsgManutencaoFocusNode?.dispose();
    textFieldPMsgManutencaoTextController?.dispose();
  }
}
