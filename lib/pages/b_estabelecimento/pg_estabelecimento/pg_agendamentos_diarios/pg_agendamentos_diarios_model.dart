import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_agendamentos_diarios/cp_agendamentos_diarios_widget.dart';
import 'pg_agendamentos_diarios_widget.dart' show PgAgendamentosDiariosWidget;
import 'package:flutter/material.dart';

class PgAgendamentosDiariosModel
    extends FlutterFlowModel<PgAgendamentosDiariosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_agendamentosDiarios component.
  late CpAgendamentosDiariosModel cpAgendamentosDiariosModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAgendamentosDiariosModel =
        createModel(context, () => CpAgendamentosDiariosModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAgendamentosDiariosModel.dispose();
    cpRodapeModel.dispose();
  }
}
