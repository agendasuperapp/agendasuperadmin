import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelecimento_cad/cp_estabelecimento_cad_widget.dart';
import 'pg_estabelecimento_cad_widget.dart' show PgEstabelecimentoCadWidget;
import 'package:flutter/material.dart';

class PgEstabelecimentoCadModel
    extends FlutterFlowModel<PgEstabelecimentoCadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_estabelecimento_cad component.
  late CpEstabelecimentoCadModel cpEstabelecimentoCadModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpEstabelecimentoCadModel =
        createModel(context, () => CpEstabelecimentoCadModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpEstabelecimentoCadModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
