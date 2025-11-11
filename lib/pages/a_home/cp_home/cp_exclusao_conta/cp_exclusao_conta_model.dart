import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'cp_exclusao_conta_widget.dart' show CpExclusaoContaWidget;
import 'package:flutter/material.dart';

class CpExclusaoContaModel extends FlutterFlowModel<CpExclusaoContaWidget> {
  ///  Local state fields for this component.

  List<String> varMotivos = [];
  void addToVarMotivos(String item) => varMotivos.add(item);
  void removeFromVarMotivos(String item) => varMotivos.remove(item);
  void removeAtIndexFromVarMotivos(int index) => varMotivos.removeAt(index);
  void insertAtIndexInVarMotivos(int index, String item) =>
      varMotivos.insert(index, item);
  void updateVarMotivosAtIndex(int index, Function(String) updateFn) =>
      varMotivos[index] = updateFn(varMotivos[index]);

  bool varContaExcluida = false;

  ///  State fields for stateful widgets in this component.

  InstantTimer? instantTimer;
  // Stores action output result for [Action Block - acStripePortalURL] action in ButtonGerenciar widget.
  String? resultStripePortalUrsl;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for TextFieldMotivo widget.
  FocusNode? textFieldMotivoFocusNode;
  TextEditingController? textFieldMotivoTextController;
  String? Function(BuildContext, String?)?
      textFieldMotivoTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosEstabelecimentosRow>? queryConsPlanosAtivos;
  // Stores action output result for [Backend Call - API (fcdeleteauthuser)] action in Button widget.
  ApiCallResponse? apiResulDeleteUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    textFieldMotivoFocusNode?.dispose();
    textFieldMotivoTextController?.dispose();
  }
}
