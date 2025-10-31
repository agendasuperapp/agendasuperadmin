import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_lista_estabelecimentos_admin2/cp_lista_estabelecimentos_admin2_widget.dart';
import 'pg_admin_estabelecimentos_widget.dart'
    show PgAdminEstabelecimentosWidget;
import 'package:flutter/material.dart';

class PgAdminEstabelecimentosModel
    extends FlutterFlowModel<PgAdminEstabelecimentosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_lista_estabelecimentos_admin2 component.
  late CpListaEstabelecimentosAdmin2Model cpListaEstabelecimentosAdmin2Model;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpListaEstabelecimentosAdmin2Model =
        createModel(context, () => CpListaEstabelecimentosAdmin2Model());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpListaEstabelecimentosAdmin2Model.dispose();
    cpMenuLateralModel2.dispose();
  }
}
