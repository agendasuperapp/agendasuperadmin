import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/afiliado/cp_afiliado_sub_indicacoes/cp_afiliado_sub_indicacoes_widget.dart';
import 'pg_afiliado_sub_afiliados_widget.dart'
    show PgAfiliadoSubAfiliadosWidget;
import 'package:flutter/material.dart';

class PgAfiliadoSubAfiliadosModel
    extends FlutterFlowModel<PgAfiliadoSubAfiliadosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_afiliado_sub_indicacoes component.
  late CpAfiliadoSubIndicacoesModel cpAfiliadoSubIndicacoesModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoSubIndicacoesModel =
        createModel(context, () => CpAfiliadoSubIndicacoesModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAfiliadoSubIndicacoesModel.dispose();
    cpRodapeModel.dispose();
  }
}
