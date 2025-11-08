import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pg_afiliado_treinamento_model.dart';
export 'pg_afiliado_treinamento_model.dart';

class PgAfiliadoTreinamentoWidget extends StatefulWidget {
  const PgAfiliadoTreinamentoWidget({super.key});

  static String routeName = 'pg_afiliado_treinamento';
  static String routePath = '/admin/AfiliadoTreinamento';

  @override
  State<PgAfiliadoTreinamentoWidget> createState() =>
      _PgAfiliadoTreinamentoWidgetState();
}

class _PgAfiliadoTreinamentoWidgetState
    extends State<PgAfiliadoTreinamentoWidget> {
  late PgAfiliadoTreinamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAfiliadoTreinamentoModel());

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
        body: SafeArea(
          top: true,
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
                            paramBotaoSelecionado: 'AFILIADO_TREINAMENTO',
                            paramGrupoBotao: 'AFILIADO',
                            paramElpacamentoTop: false,
                          ),
                        ),
                      Expanded(
                        child: Container(
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 20.0, 12.0, 0.0),
                                child: Text(
                                  'TREINAMENTO\nDE \nAFILIADOS',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await TblAfiliadosTable().update(
                                      data: {
                                        'status_afiliacao': 'ATIVA',
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        FFAppState().varIDAfiliadoLogado,
                                      ),
                                    );
                                    await action_blocks
                                        .acAtualizarAfiliadoCad(context);
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return WebViewAware(
                                          child: AlertDialog(
                                            title: Text('Atenção!'),
                                            content: Text(
                                                'Seu treinamento foi concluído com sucesso, agora seu painel de afiliado está liberado.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );

                                    context
                                        .pushNamed(PgDashboardWidget.routeName);
                                  },
                                  text: 'Treinamento Concluído',
                                  icon: Icon(
                                    Icons.check,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
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
                    paramBotaoSelecionado: 'AFILIADO_TREINAMENTO',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
