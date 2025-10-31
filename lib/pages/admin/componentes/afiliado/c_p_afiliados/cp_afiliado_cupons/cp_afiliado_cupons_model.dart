import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_aviso_cadastro/cp_afiliado_aviso_cadastro_widget.dart';
import 'cp_afiliado_cupons_widget.dart' show CpAfiliadoCuponsWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAfiliadoCuponsModel extends FlutterFlowModel<CpAfiliadoCuponsWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  bool varMostrarAvisoEditCupom = true;

  List<ViewTblAfiliadoAppsRow> varViewTblAfiliadoApps = [];
  void addToVarViewTblAfiliadoApps(ViewTblAfiliadoAppsRow item) =>
      varViewTblAfiliadoApps.add(item);
  void removeFromVarViewTblAfiliadoApps(ViewTblAfiliadoAppsRow item) =>
      varViewTblAfiliadoApps.remove(item);
  void removeAtIndexFromVarViewTblAfiliadoApps(int index) =>
      varViewTblAfiliadoApps.removeAt(index);
  void insertAtIndexInVarViewTblAfiliadoApps(
          int index, ViewTblAfiliadoAppsRow item) =>
      varViewTblAfiliadoApps.insert(index, item);
  void updateVarViewTblAfiliadoAppsAtIndex(
          int index, Function(ViewTblAfiliadoAppsRow) updateFn) =>
      varViewTblAfiliadoApps[index] = updateFn(varViewTblAfiliadoApps[index]);

  int varIDAfiliadoSelecionado = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in cp_afiliado_cupons widget.
  List<ViewTblAfiliadoAppsRow>? queryConsAfiliadoApps;
  Completer<List<ViewTblAfiliadosCuponsRow>>? requestCompleter;
  // Model for cp_afiliado_aviso_cadastro component.
  late CpAfiliadoAvisoCadastroModel cpAfiliadoAvisoCadastroModel;
  // State field(s) for DropDownAplicativo widget.
  int? dropDownAplicativoValue;
  FormFieldController<int>? dropDownAplicativoValueController;
  // State field(s) for SwitchTipoUsuario widget.
  bool? switchTipoUsuarioValue;

  @override
  void initState(BuildContext context) {
    cpAfiliadoAvisoCadastroModel =
        createModel(context, () => CpAfiliadoAvisoCadastroModel());
  }

  @override
  void dispose() {
    cpAfiliadoAvisoCadastroModel.dispose();
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
