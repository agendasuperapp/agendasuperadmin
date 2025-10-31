import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_agendamento_historico/cp_agendamento_historico_widget.dart';
import 'pg_agendamento_historico_widget.dart' show PgAgendamentoHistoricoWidget;
import 'package:flutter/material.dart';

class PgAgendamentoHistoricoModel
    extends FlutterFlowModel<PgAgendamentoHistoricoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_agendamento_historico component.
  late CpAgendamentoHistoricoModel cpAgendamentoHistoricoModel;

  @override
  void initState(BuildContext context) {
    cpAgendamentoHistoricoModel =
        createModel(context, () => CpAgendamentoHistoricoModel());
  }

  @override
  void dispose() {
    cpAgendamentoHistoricoModel.dispose();
  }
}
