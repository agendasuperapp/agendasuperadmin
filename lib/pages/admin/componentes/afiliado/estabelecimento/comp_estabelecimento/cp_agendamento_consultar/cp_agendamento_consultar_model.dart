import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'cp_agendamento_consultar_widget.dart' show CpAgendamentoConsultarWidget;
import 'package:flutter/material.dart';

class CpAgendamentoConsultarModel
    extends FlutterFlowModel<CpAgendamentoConsultarWidget> {
  ///  Local state fields for this component.

  int varContador = 0;

  int varContadorErros = 0;

  List<String> varListaItensWhatsEmail = [];
  void addToVarListaItensWhatsEmail(String item) =>
      varListaItensWhatsEmail.add(item);
  void removeFromVarListaItensWhatsEmail(String item) =>
      varListaItensWhatsEmail.remove(item);
  void removeAtIndexFromVarListaItensWhatsEmail(int index) =>
      varListaItensWhatsEmail.removeAt(index);
  void insertAtIndexInVarListaItensWhatsEmail(int index, String item) =>
      varListaItensWhatsEmail.insert(index, item);
  void updateVarListaItensWhatsEmailAtIndex(
          int index, Function(String) updateFn) =>
      varListaItensWhatsEmail[index] = updateFn(varListaItensWhatsEmail[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<TblAgendamentoCarrinhoRow>? resultUpdateAgendCarrinho;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAgendamentosRow>? queryConsItensCarrinho;
  // Stores action output result for [Action Block - acWhatsAppVerificarConexao] action in Button widget.
  bool? acVerificarConexaoWhatsappResult;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TblAgendamentosRow>? queryConsAgendamentos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future acBlockAtualizarTblAgendamentosLocal(BuildContext context) async {}
}
