import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_estabelecimento_cad/cp_estabelecimento_cad_widget.dart';
import 'pg_estabelecimento_cad_widget.dart' show PgEstabelecimentoCadWidget;
import 'package:flutter/material.dart';

class PgEstabelecimentoCadModel
    extends FlutterFlowModel<PgEstabelecimentoCadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_estabelecimento_cad component.
  late CpEstabelecimentoCadModel cpEstabelecimentoCadModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpEstabelecimentoCadModel =
        createModel(context, () => CpEstabelecimentoCadModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpEstabelecimentoCadModel.dispose();
    cpRodapeModel.dispose();
  }
}
