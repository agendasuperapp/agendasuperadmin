import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_ativacao/cp_afiliado_ativacao_widget.dart';
import 'pg_afiliado_ativacao_widget.dart' show PgAfiliadoAtivacaoWidget;
import 'package:flutter/material.dart';

class PgAfiliadoAtivacaoModel
    extends FlutterFlowModel<PgAfiliadoAtivacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_afiliado_ativacao component.
  late CpAfiliadoAtivacaoModel cpAfiliadoAtivacaoModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoAtivacaoModel =
        createModel(context, () => CpAfiliadoAtivacaoModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpAfiliadoAtivacaoModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
