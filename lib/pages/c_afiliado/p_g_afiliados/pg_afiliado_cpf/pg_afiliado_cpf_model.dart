import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_cpf/cp_afiliado_cpf_widget.dart';
import 'pg_afiliado_cpf_widget.dart' show PgAfiliadoCpfWidget;
import 'package:flutter/material.dart';

class PgAfiliadoCpfModel extends FlutterFlowModel<PgAfiliadoCpfWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_afiliado_cpf component.
  late CpAfiliadoCpfModel cpAfiliadoCpfModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoCpfModel = createModel(context, () => CpAfiliadoCpfModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAfiliadoCpfModel.dispose();
    cpRodapeModel.dispose();
  }
}
