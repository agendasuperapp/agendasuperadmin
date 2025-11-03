import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pg_afiliado_google_maps_model.dart';
export 'pg_afiliado_google_maps_model.dart';

class PgAfiliadoGoogleMapsWidget extends StatefulWidget {
  const PgAfiliadoGoogleMapsWidget({super.key});

  static String routeName = 'pg_afiliado_google_maps';
  static String routePath = '/admin/AfiliadoGoogleMaps';

  @override
  State<PgAfiliadoGoogleMapsWidget> createState() =>
      _PgAfiliadoGoogleMapsWidgetState();
}

class _PgAfiliadoGoogleMapsWidgetState
    extends State<PgAfiliadoGoogleMapsWidget> {
  late PgAfiliadoGoogleMapsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAfiliadoGoogleMapsModel());

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
                          paramBotaoSelecionado: 'AFILIADO_GOOGLE',
                          paramGrupoBotao: 'AFILIADO',
                          paramElpacamentoTop: false,
                        ),
                      ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              Theme.of(context).brightness == Brightness.dark
                                  ? 'SEM FOTO USAR COR CONTAINER'
                                  : FFAppState()
                                      .VarTblEstabelecimentoLogado
                                      .fotoLightMode,
                            ).image,
                          ),
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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 20.0, 12.0, 0.0),
                              child: Text(
                                'PESQUISAR EMPRESAS\nNO\nGOOGLE',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                  paramBotaoSelecionado: 'AFILIADO_GOOGLE',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
