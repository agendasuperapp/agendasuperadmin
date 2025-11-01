import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_admin_pag_saques/cp_admin_pag_saques_widget.dart';
import 'pg_admin_pag_saques_widget.dart' show PgAdminPagSaquesWidget;
import 'package:flutter/material.dart';

class PgAdminPagSaquesModel extends FlutterFlowModel<PgAdminPagSaquesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_admin_pag_saques component.
  late CpAdminPagSaquesModel cpAdminPagSaquesModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAdminPagSaquesModel = createModel(context, () => CpAdminPagSaquesModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAdminPagSaquesModel.dispose();
    cpRodapeModel.dispose();
  }
}
