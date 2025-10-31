import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_dashboard/cp_afiliado_dashboard_widget.dart';
import 'd_e_l_e_t_e_pg_afiliado_dashboard_widget.dart'
    show DELETEPgAfiliadoDashboardWidget;
import 'package:flutter/material.dart';

class DELETEPgAfiliadoDashboardModel
    extends FlutterFlowModel<DELETEPgAfiliadoDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_afiliado_dashboard component.
  late CpAfiliadoDashboardModel cpAfiliadoDashboardModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoDashboardModel =
        createModel(context, () => CpAfiliadoDashboardModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpAfiliadoDashboardModel.dispose();
    cpRodapeModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
