import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_afiliado_dashboard/cp_afiliado_dashboard_widget.dart';
import '/pages/c_afiliado/c_p_afiliados/cp_estabelecimento_dashboard/cp_estabelecimento_dashboard_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_dashboard_model.dart';
export 'pg_dashboard_model.dart';

class PgDashboardWidget extends StatefulWidget {
  const PgDashboardWidget({super.key});

  static String routeName = 'pg_dashboard';
  static String routePath = '/admin/Dashboard';

  @override
  State<PgDashboardWidget> createState() => _PgDashboardWidgetState();
}

class _PgDashboardWidgetState extends State<PgDashboardWidget> {
  late PgDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarInicializacaoSistema(
        context,
        paramNaoAtualizarTabelas: false,
      );
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).colorGradPage1,
                FlutterFlowTheme.of(context).colorGradPage2
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
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
                          if ((MediaQuery.sizeOf(context).width <
                                  FFAppState()
                                      .varTamanhoMinimoTelaMenuLateral
                                      .toDouble()) &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    valueOrDefault<double>(
                                      isAndroid ||
                                              FFAppState().VarEmDesenvolvimento
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
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.menu,
                                        color: FlutterFlowTheme.of(context)
                                            .colorIconMenu,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                paramBotaoSelecionado: 'DASHBOARD',
                                paramGrupoBotao: 'DASHBOARD',
                              ),
                            ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'SEM FOTO USAR COR CONTAINER'
                                        : FFAppState()
                                            .VarTblEstabelecimentoLogado
                                            .fotoLightMode,
                                  ).image,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().varIDAPPAfiliado == 1)
                                    Flexible(
                                      child: wrapWithModel(
                                        model: _model
                                            .cpEstabelecimentoDashboardModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child:
                                            CpEstabelecimentoDashboardWidget(),
                                      ),
                                    ),
                                  if (FFAppState().varIDAPPAfiliado == 3)
                                    Flexible(
                                      child: wrapWithModel(
                                        model: _model.cpAfiliadoDashboardModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CpAfiliadoDashboardWidget(),
                                      ),
                                    ),
                                ],
                              ),
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
                        paramBotaoSelecionado: 'DASHBOARD',
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
