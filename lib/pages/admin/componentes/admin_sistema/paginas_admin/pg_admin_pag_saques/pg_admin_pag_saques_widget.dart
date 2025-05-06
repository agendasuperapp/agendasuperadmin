import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_admin_pag_saques/cp_admin_pag_saques_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
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
        drawer: Container(
          width: valueOrDefault<double>(
            FFAppState().varLayoutTamanhoMenuLateral.toDouble(),
            225.0,
          ),
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: Stack(
                children: [
                  wrapWithModel(
                    model: _model.cpMenuLateralModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: CpMenuLateralWidget(
                      paramBotaoSelecionado: 'PAG_SAQUES',
                      paramGrupoBotao: 'ADMIN',
                      paramElpacamentoTop: true,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
                    if (MediaQuery.sizeOf(context).width <
                        FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              valueOrDefault<double>(
                                isAndroid || FFAppState().VarEmDesenvolvimento
                                    ? 50.0
                                    : 0.0,
                                0.0,
                              ),
                              0.0,
                              0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              scaffoldKey.currentState!.openDrawer();
                            },
                            child: Container(
                              height: 60.0,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.menu,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                        model: _model.cpMenuLateralModel1,
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
          ],
        ),
      ),
    );
  }
}
