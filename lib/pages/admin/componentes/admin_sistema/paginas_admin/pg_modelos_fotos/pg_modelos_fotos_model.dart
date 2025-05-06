import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_lista_modelos_fotos/cp_lista_modelos_fotos_widget.dart';
import 'pg_modelos_fotos_widget.dart' show PgModelosFotosWidget;
import 'package:flutter/material.dart';

class PgModelosFotosModel extends FlutterFlowModel<PgModelosFotosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_lista_modelos_fotos component.
  late CpListaModelosFotosModel cpListaModelosFotosModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpListaModelosFotosModel =
        createModel(context, () => CpListaModelosFotosModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpListaModelosFotosModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
