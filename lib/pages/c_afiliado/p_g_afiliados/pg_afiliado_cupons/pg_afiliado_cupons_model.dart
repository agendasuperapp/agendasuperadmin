import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_cupons/cp_afiliado_cupons_widget.dart';
import 'pg_afiliado_cupons_widget.dart' show PgAfiliadoCuponsWidget;
import 'package:flutter/material.dart';

class PgAfiliadoCuponsModel extends FlutterFlowModel<PgAfiliadoCuponsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_afiliado_cupons component.
  late CpAfiliadoCuponsModel cpAfiliadoCuponsModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoCuponsModel = createModel(context, () => CpAfiliadoCuponsModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAfiliadoCuponsModel.dispose();
    cpRodapeModel.dispose();
  }
}
