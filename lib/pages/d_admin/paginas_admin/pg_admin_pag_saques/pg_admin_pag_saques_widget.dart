import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/d_admin/cp_admin/cp_admin_pag_saques/cp_admin_pag_saques_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_admin_pag_saques_model.dart';
export 'pg_admin_pag_saques_model.dart';

class PgAdminPagSaquesWidget extends StatefulWidget {
  const PgAdminPagSaquesWidget({super.key});

  static String routeName = 'pg_admin_pag_saques';
  static String routePath = '/admin/PagPagSaques';

  @override
  State<PgAdminPagSaquesWidget> createState() => _PgAdminPagSaquesWidgetState();
}

class _PgAdminPagSaquesWidgetState extends State<PgAdminPagSaquesWidget> {
  late PgAdminPagSaquesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAdminPagSaquesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarInicializacaoSistema(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  children: [
                    wrapWithModel(
                      model: _model.cpCabecalhoPaginaModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CpCabecalhoPaginaWidget(),
                    ),
                  ],
                ),
              ],
            ),
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if ((MediaQuery.sizeOf(context).width >
                            FFAppState()
                                .varTamanhoMinimoTelaMenuLateral
                                .toDouble()) &&
                        responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                      wrapWithModel(
                        model: _model.cpMenuLateralModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpMenuLateralWidget(
                          paramBotaoSelecionado: 'PAG_SAQUES',
                          paramGrupoBotao: 'ADMIN',
                          paramElpacamentoTop: false,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (FFAppState().varTblUsuarios.adminSistema == true)
                            Flexible(
                              child: wrapWithModel(
                                model: _model.cpAdminPagSaquesModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpAdminPagSaquesWidget(),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (MediaQuery.sizeOf(context).width <=
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())
              wrapWithModel(
                model: _model.cpRodapeModel,
                updateCallback: () => safeSetState(() {}),
                child: CpRodapeWidget(
                  paramBotaoSelecionado: 'PAG_SAQUES',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
