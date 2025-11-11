import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_agendamento_consultar/cp_agendamento_consultar_widget.dart';
import 'pg_consultar_agendamento_widget.dart' show PgConsultarAgendamentoWidget;
import 'package:flutter/material.dart';

class PgConsultarAgendamentoModel
    extends FlutterFlowModel<PgConsultarAgendamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_agendamento_consultar component.
  late CpAgendamentoConsultarModel cpAgendamentoConsultarModel;

  @override
  void initState(BuildContext context) {
    cpAgendamentoConsultarModel =
        createModel(context, () => CpAgendamentoConsultarModel());
  }

  @override
  void dispose() {
    cpAgendamentoConsultarModel.dispose();
  }
}
