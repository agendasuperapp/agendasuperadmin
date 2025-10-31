import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_saques/cp_afiliado_saques_widget.dart';
import 'pg_afiliado_saques_widget.dart' show PgAfiliadoSaquesWidget;
import 'package:flutter/material.dart';

class PgAfiliadoSaquesModel extends FlutterFlowModel<PgAfiliadoSaquesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_afiliado_saques component.
  late CpAfiliadoSaquesModel cpAfiliadoSaquesModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoSaquesModel = createModel(context, () => CpAfiliadoSaquesModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAfiliadoSaquesModel.dispose();
    cpRodapeModel.dispose();
  }
}
