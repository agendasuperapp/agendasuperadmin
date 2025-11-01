import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_lista_temas_blackground/cp_lista_temas_blackground_widget.dart';
import 'pg_temas_blackground_widget.dart' show PgTemasBlackgroundWidget;
import 'package:flutter/material.dart';

class PgTemasBlackgroundModel
    extends FlutterFlowModel<PgTemasBlackgroundWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_lista_temas_blackground component.
  late CpListaTemasBlackgroundModel cpListaTemasBlackgroundModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpListaTemasBlackgroundModel =
        createModel(context, () => CpListaTemasBlackgroundModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpListaTemasBlackgroundModel.dispose();
    cpRodapeModel.dispose();
  }
}
