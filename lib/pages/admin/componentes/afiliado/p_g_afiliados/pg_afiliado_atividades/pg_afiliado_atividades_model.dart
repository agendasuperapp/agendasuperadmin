import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_atividades/cp_afiliado_atividades_widget.dart';
import 'pg_afiliado_atividades_widget.dart' show PgAfiliadoAtividadesWidget;
import 'package:flutter/material.dart';

class PgAfiliadoAtividadesModel
    extends FlutterFlowModel<PgAfiliadoAtividadesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel;
  // Model for cp_afiliado_atividades component.
  late CpAfiliadoAtividadesModel cpAfiliadoAtividadesModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel = createModel(context, () => CpMenuLateralModel());
    cpAfiliadoAtividadesModel =
        createModel(context, () => CpAfiliadoAtividadesModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel.dispose();
    cpAfiliadoAtividadesModel.dispose();
    cpRodapeModel.dispose();
  }
}
