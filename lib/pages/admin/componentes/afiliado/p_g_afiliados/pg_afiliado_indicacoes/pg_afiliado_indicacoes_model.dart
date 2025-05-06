import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_indicacoes/cp_afiliado_indicacoes_widget.dart';
import 'pg_afiliado_indicacoes_widget.dart' show PgAfiliadoIndicacoesWidget;
import 'package:flutter/material.dart';

class PgAfiliadoIndicacoesModel
    extends FlutterFlowModel<PgAfiliadoIndicacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_afiliado_indicacoes component.
  late CpAfiliadoIndicacoesModel cpAfiliadoIndicacoesModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoIndicacoesModel =
        createModel(context, () => CpAfiliadoIndicacoesModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpAfiliadoIndicacoesModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
