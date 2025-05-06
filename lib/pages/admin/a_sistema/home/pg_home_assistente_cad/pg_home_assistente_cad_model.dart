import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_home_assistente_cad/cp_home_assistente_cad_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import 'pg_home_assistente_cad_widget.dart' show PgHomeAssistenteCadWidget;
import 'package:flutter/material.dart';

class PgHomeAssistenteCadModel
    extends FlutterFlowModel<PgHomeAssistenteCadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_home_assistente_cad component.
  late CpHomeAssistenteCadModel cpHomeAssistenteCadModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpHomeAssistenteCadModel =
        createModel(context, () => CpHomeAssistenteCadModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpHomeAssistenteCadModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
