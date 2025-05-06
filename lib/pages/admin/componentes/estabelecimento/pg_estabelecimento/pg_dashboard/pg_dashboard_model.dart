import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/estabelecimento/cp_estabelecimento_dashboard/cp_estabelecimento_dashboard_widget.dart';
import 'pg_dashboard_widget.dart' show PgDashboardWidget;
import 'package:flutter/material.dart';

class PgDashboardModel extends FlutterFlowModel<PgDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_estabelecimento_dashboard component.
  late CpEstabelecimentoDashboardModel cpEstabelecimentoDashboardModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpEstabelecimentoDashboardModel =
        createModel(context, () => CpEstabelecimentoDashboardModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpEstabelecimentoDashboardModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
