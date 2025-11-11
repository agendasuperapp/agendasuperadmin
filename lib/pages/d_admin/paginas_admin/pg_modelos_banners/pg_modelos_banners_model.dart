import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/d_admin/cp_admin/cp_lista_modelos_banners/cp_lista_modelos_banners_widget.dart';
import 'pg_modelos_banners_widget.dart' show PgModelosBannersWidget;
import 'package:flutter/material.dart';

class PgModelosBannersModel extends FlutterFlowModel<PgModelosBannersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_lista_modelos_banners component.
  late CpListaModelosBannersModel cpListaModelosBannersModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpListaModelosBannersModel =
        createModel(context, () => CpListaModelosBannersModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpListaModelosBannersModel.dispose();
    cpRodapeModel.dispose();
  }
}
