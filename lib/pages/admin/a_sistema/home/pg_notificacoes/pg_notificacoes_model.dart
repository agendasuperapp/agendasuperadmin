import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_notificacao/cp_notificacao_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import 'pg_notificacoes_widget.dart' show PgNotificacoesWidget;
import 'package:flutter/material.dart';

class PgNotificacoesModel extends FlutterFlowModel<PgNotificacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cp_cabecalho_pagina component.
  late CpCabecalhoPaginaModel cpCabecalhoPaginaModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel1;
  // Model for cp_notificacao component.
  late CpNotificacaoModel cpNotificacaoModel;
  // Model for cp_rodape component.
  late CpRodapeModel cpRodapeModel;
  // Model for cp_menu_lateral component.
  late CpMenuLateralModel cpMenuLateralModel2;

  @override
  void initState(BuildContext context) {
    cpCabecalhoPaginaModel =
        createModel(context, () => CpCabecalhoPaginaModel());
    cpMenuLateralModel1 = createModel(context, () => CpMenuLateralModel());
    cpNotificacaoModel = createModel(context, () => CpNotificacaoModel());
    cpRodapeModel = createModel(context, () => CpRodapeModel());
    cpMenuLateralModel2 = createModel(context, () => CpMenuLateralModel());
  }

  @override
  void dispose() {
    cpCabecalhoPaginaModel.dispose();
    cpMenuLateralModel1.dispose();
    cpNotificacaoModel.dispose();
    cpRodapeModel.dispose();
    cpMenuLateralModel2.dispose();
  }
}
