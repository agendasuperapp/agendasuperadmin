import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/d_e_l_e_t_e_cp_afiliado_ativacao/d_e_l_e_t_e_cp_afiliado_ativacao_widget.dart';
import 'd_e_l_e_t_e_pg_afiliado_ativacao_widget.dart'
    show DELETEPgAfiliadoAtivacaoWidget;
import 'package:flutter/material.dart';

class DELETEPgAfiliadoAtivacaoModel
    extends FlutterFlowModel<DELETEPgAfiliadoAtivacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for DELETE-cp_afiliado_ativacao component.
  late DELETECpAfiliadoAtivacaoModel dELETECpAfiliadoAtivacaoModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    dELETECpAfiliadoAtivacaoModel =
        createModel(context, () => DELETECpAfiliadoAtivacaoModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    dELETECpAfiliadoAtivacaoModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
