import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_agendamentos_carrinhos/cp_agendamentos_carrinhos_widget.dart';
import 'pg_agendamentos_carrinhos_widget.dart'
    show PgAgendamentosCarrinhosWidget;
import 'package:flutter/material.dart';

class PgAgendamentosCarrinhosModel
    extends FlutterFlowModel<PgAgendamentosCarrinhosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_agendamentosCarrinhos component.
  late CpAgendamentosCarrinhosModel cpAgendamentosCarrinhosModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpAgendamentosCarrinhosModel =
        createModel(context, () => CpAgendamentosCarrinhosModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpAgendamentosCarrinhosModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
