import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_agendamentos_carrinhos/cp_agendamentos_carrinhos_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_agendamentos_diarios/cp_agendamentos_diarios_widget.dart';
import 'cp_agendamentos_view_admin_widget.dart'
    show CpAgendamentosViewAdminWidget;
import 'package:flutter/material.dart';

class CpAgendamentosViewAdminModel
    extends FlutterFlowModel<CpAgendamentosViewAdminWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for cp_agendamentosDiarios component.
  late CpAgendamentosDiariosModel cpAgendamentosDiariosModel;
  // Model for cp_agendamentosCarrinhos component.
  late CpAgendamentosCarrinhosModel cpAgendamentosCarrinhosModel;

  @override
  void initState(BuildContext context) {
    cpAgendamentosDiariosModel =
        createModel(context, () => CpAgendamentosDiariosModel());
    cpAgendamentosCarrinhosModel =
        createModel(context, () => CpAgendamentosCarrinhosModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    cpAgendamentosDiariosModel.dispose();
    cpAgendamentosCarrinhosModel.dispose();
  }
}
