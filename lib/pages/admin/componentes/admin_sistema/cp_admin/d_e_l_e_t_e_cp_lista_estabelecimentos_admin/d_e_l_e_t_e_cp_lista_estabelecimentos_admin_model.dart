import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'd_e_l_e_t_e_cp_lista_estabelecimentos_admin_widget.dart'
    show DELETECpListaEstabelecimentosAdminWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class DELETECpListaEstabelecimentosAdminModel
    extends FlutterFlowModel<DELETECpListaEstabelecimentosAdminWidget> {
  ///  Local state fields for this component.

  String varFotoFundo = 'sem foto';

  List<bool> varFiltroTipoPlano = [true, false];
  void addToVarFiltroTipoPlano(bool item) => varFiltroTipoPlano.add(item);
  void removeFromVarFiltroTipoPlano(bool item) =>
      varFiltroTipoPlano.remove(item);
  void removeAtIndexFromVarFiltroTipoPlano(int index) =>
      varFiltroTipoPlano.removeAt(index);
  void insertAtIndexInVarFiltroTipoPlano(int index, bool item) =>
      varFiltroTipoPlano.insert(index, item);
  void updateVarFiltroTipoPlanoAtIndex(int index, Function(bool) updateFn) =>
      varFiltroTipoPlano[index] = updateFn(varFiltroTipoPlano[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in DELETE-cp_lista_estabelecimentos_admin widget.
  List<ViewTblAppPlanosNomesFiltrosRow>? queryTblPlanosNomes;
  Completer<ApiCallResponse>? apiRequestCompleter;
  Completer<List<ViewTblEstabelecimentosAdminRow>>? requestCompleter;
  // State field(s) for DropDownNomesPlanos widget.
  int? dropDownNomesPlanosValue;
  FormFieldController<int>? dropDownNomesPlanosValueController;
  // State field(s) for DropDownStatusPagamento widget.
  String? dropDownStatusPagamentoValue;
  FormFieldController<String>? dropDownStatusPagamentoValueController;
  // State field(s) for DropDownStatusPlano widget.
  String? dropDownStatusPlanoValue;
  FormFieldController<String>? dropDownStatusPlanoValueController;
  // State field(s) for DropDownTipo widget.
  String? dropDownTipoValue;
  FormFieldController<String>? dropDownTipoValueController;
  // State field(s) for DropDownLimite widget.
  int? dropDownLimiteValue;
  FormFieldController<int>? dropDownLimiteValueController;
  // State field(s) for SwitchContaProducao widget.
  bool? switchContaProducaoValue;
  // State field(s) for SwitchSituacao widget.
  bool? switchSituacaoValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

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
