import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_dashboard/cp_afiliado_dashboard_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_estabelecimento_dashboard/cp_estabelecimento_dashboard_widget.dart';
import 'pg_dashboard_widget.dart' show PgDashboardWidget;
import 'package:flutter/material.dart';

class PgDashboardModel extends FlutterFlowModel<PgDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_estabelecimento_dashboard component.
  late CpEstabelecimentoDashboardModel cpEstabelecimentoDashboardModel;
  // Model for cp_afiliado_dashboard component.
  late CpAfiliadoDashboardModel cpAfiliadoDashboardModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpEstabelecimentoDashboardModel =
        createModel(context, () => CpEstabelecimentoDashboardModel());
    cpAfiliadoDashboardModel =
        createModel(context, () => CpAfiliadoDashboardModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpEstabelecimentoDashboardModel.dispose();
    cpAfiliadoDashboardModel.dispose();
    cpRodapeModel.dispose();
  }
}
