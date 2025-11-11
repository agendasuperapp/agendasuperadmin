import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/d_admin/cp_admin/cp_admin_cupons_padroes/cp_admin_cupons_padroes_widget.dart';
import 'pg_admin_cupons_padroes_widget.dart' show PgAdminCuponsPadroesWidget;
import 'package:flutter/material.dart';

class PgAdminCuponsPadroesModel
    extends FlutterFlowModel<PgAdminCuponsPadroesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_admin_cupons_padroes component.
  late CpAdminCuponsPadroesModel cpAdminCuponsPadroesModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAdminCuponsPadroesModel =
        createModel(context, () => CpAdminCuponsPadroesModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAdminCuponsPadroesModel.dispose();
    cpRodapeModel.dispose();
  }
}
