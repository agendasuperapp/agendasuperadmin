import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_rodape_model.dart';
export 'cp_rodape_model.dart';

class CpRodapeWidget extends StatefulWidget {
  const CpRodapeWidget({
    super.key,
    required this.paramBotaoSelecionado,
  });

  final String? paramBotaoSelecionado;

  @override
  State<CpRodapeWidget> createState() => _CpRodapeWidgetState();
}

class _CpRodapeWidgetState extends State<CpRodapeWidget> {
  late CpRodapeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpRodapeModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.queryConsQtNotif = await TblNotificacoesQuantTable().queryRows(
        queryFn: (q) => q,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 10.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: FlutterFlowTheme.of(context).secondaryText,
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().varCarregouPrimeiraPagina ==
                                    false) {
                                  if (FFAppState().VarEmDesenvolvimento) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('tese'),
                                          content: Text('Primeira Pág FALSE 1'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                  context.safePop();
                                  if (FFAppState().VarEmDesenvolvimento) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('tese'),
                                          content: Text('Primeira Pág FALSE 2'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                } else {
                                  if (FFAppState().VarEmDesenvolvimento) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('tese'),
                                          content: Text('Primeira Pág TRUE'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                  FFAppState().varCarregouPrimeiraPagina =
                                      false;
                                }

                                FFAppState().varGrupoBotaoSelecionado =
                                    'AFILIADO';
                                FFAppState()
                                    .addToVarGruposBotoesAbertos('AFILIADO');

                                context.pushNamed(
                                  PgDashboardWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.chartBar,
                                    color: () {
                                      if (_model.mouseRegionDashBoardHovered) {
                                        return FlutterFlowTheme.of(context)
                                            .hoverBtnLateral;
                                      } else if (widget
                                              .paramBotaoSelecionado ==
                                          'DASHBOARD') {
                                        return FlutterFlowTheme.of(context)
                                            .menuLatSelecionado;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .txtMenuLateral;
                                      }
                                    }(),
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: () {
                                            if (_model
                                                .mouseRegionDashBoardHovered) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .hoverBtnLateral;
                                            } else if (widget
                                                    .paramBotaoSelecionado ==
                                                'DASHBOARD') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .menuLatSelecionado;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .txtMenuLateral;
                                            }
                                          }(),
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionDashBoardHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(() =>
                                _model.mouseRegionDashBoardHovered = false);
                          }),
                        ),
                      ),
                    ),
                  ),
                  if (FFAppState().varIDAPPAfiliado == 1)
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState()
                                            .varCarregouPrimeiraPagina ==
                                        false) {
                                      context.safePop();
                                    } else {
                                      FFAppState().varCarregouPrimeiraPagina =
                                          false;
                                    }

                                    FFAppState().varGrupoBotaoSelecionado =
                                        'AGENDAMENTOS';
                                    FFAppState().addToVarGruposBotoesAbertos(
                                        'AGENDAMENTOS');

                                    context.pushNamed(
                                      PgAgendamentosDiariosWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: () {
                                          if (_model
                                              .mouseRegionAgendamentosHovered) {
                                            return FlutterFlowTheme.of(context)
                                                .hoverBtnLateral;
                                          } else if (widget
                                                  .paramBotaoSelecionado ==
                                              'AGENDAMENTOSDIARIOS') {
                                            return FlutterFlowTheme.of(context)
                                                .menuLatSelecionado;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .txtMenuLateral;
                                          }
                                        }(),
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Agendamentos',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: () {
                                                if (_model
                                                    .mouseRegionAgendamentosHovered) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .hoverBtnLateral;
                                                } else if (widget
                                                        .paramBotaoSelecionado ==
                                                    'AGENDAMENTOSDIARIOS') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .menuLatSelecionado;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .txtMenuLateral;
                                                }
                                              }(),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(() => _model
                                    .mouseRegionAgendamentosHovered = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(() => _model
                                    .mouseRegionAgendamentosHovered = false);
                              }),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (FFAppState().varIDAPPAfiliado == 3)
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState()
                                            .varCarregouPrimeiraPagina ==
                                        false) {
                                      if (FFAppState().VarEmDesenvolvimento) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('tese'),
                                              content:
                                                  Text('Primeira Pág FALSE 1'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                      context.safePop();
                                      if (FFAppState().VarEmDesenvolvimento) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('tese'),
                                              content:
                                                  Text('Primeira Pág FALSE 2'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    } else {
                                      if (FFAppState().VarEmDesenvolvimento) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('tese'),
                                              content:
                                                  Text('Primeira Pág TRUE'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                      FFAppState().varCarregouPrimeiraPagina =
                                          false;
                                    }

                                    FFAppState().varGrupoBotaoSelecionado =
                                        'AFILIADO';
                                    FFAppState().addToVarGruposBotoesAbertos(
                                        'AFILIADO');

                                    context.pushNamed(
                                      PgAfiliadoComissoesWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: () {
                                          if (_model
                                              .mouseRegionComissaoDiariaHovered) {
                                            return FlutterFlowTheme.of(context)
                                                .hoverBtnLateral;
                                          } else if (widget
                                                  .paramBotaoSelecionado ==
                                              'AFILIADO_COMISSOES') {
                                            return FlutterFlowTheme.of(context)
                                                .menuLatSelecionado;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .txtMenuLateral;
                                          }
                                        }(),
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Comissões',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: () {
                                                if (_model
                                                    .mouseRegionComissaoDiariaHovered) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .hoverBtnLateral;
                                                } else if (widget
                                                        .paramBotaoSelecionado ==
                                                    'AFILIADO_COMISSOES') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .menuLatSelecionado;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .txtMenuLateral;
                                                }
                                              }(),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(() => _model
                                    .mouseRegionComissaoDiariaHovered = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(() => _model
                                    .mouseRegionComissaoDiariaHovered = false);
                              }),
                            ),
                          ),
                        ),
                      ),
                    ),
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor:
                              Theme.of(context).brightness == Brightness.dark
                                  ? Color(0x7F000000)
                                  : Colors.transparent,
                          useSafeArea: true,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: CpMenuLateralWidget(
                                  paramBotaoSelecionado: '0',
                                  paramGrupoBotao: '0',
                                  paramElpacamentoTop: true,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: _model.mouseRegionMenuHovered
                                  ? FlutterFlowTheme.of(context).hoverBtnLateral
                                  : FlutterFlowTheme.of(context).success,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Icon(
                                          Icons.menu,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 26.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionMenuHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionMenuHovered = false);
                    }),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.safePop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  FFAppState().varGrupoBotaoSelecionado = '0';
                                  FFAppState().addToVarGruposBotoesAbertos('0');

                                  context.pushNamed(
                                    PgNotificacoesWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        Icon(
                                          Icons.notifications_active_outlined,
                                          color: () {
                                            if (_model
                                                .mouseRegionNotificacoesHovered) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .hoverBtnLateral;
                                            } else if (widget
                                                    .paramBotaoSelecionado ==
                                                'NOTIFICACOES') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .menuLatSelecionado;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .txtMenuLateral;
                                            }
                                          }(),
                                          size: 24.0,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    38.0, 0.0, 0.0, 4.0),
                                            child: Container(
                                              width: 20.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    _model.queryConsQtNotif
                                                        ?.firstOrNull?.quant
                                                        ?.toString(),
                                                    '0',
                                                  ),
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .readexPro(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Notificações',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: () {
                                              if (_model
                                                  .mouseRegionNotificacoesHovered) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .hoverBtnLateral;
                                              } else if (widget
                                                      .paramBotaoSelecionado ==
                                                  'NOTIFICACOES') {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .menuLatSelecionado;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .txtMenuLateral;
                                              }
                                            }(),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.mouseRegionNotificacoesHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() => _model
                                  .mouseRegionNotificacoesHovered = false);
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (FFAppState().varIDAPPAfiliado == 3)
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.safePop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  FFAppState().varGrupoBotaoSelecionado =
                                      'AFILIADO';
                                  FFAppState()
                                      .addToVarGruposBotoesAbertos('AFILIADO');
                                  if (FFAppState()
                                          .varTblAfiliado
                                          .statusAfiliacao ==
                                      'CADASTRO') {
                                    context.pushNamed(
                                      PgAfiliadoCpfWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  } else {
                                    context.pushNamed(
                                      PgAfiliadosCadWidget.routeName,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  }
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.person_4_outlined,
                                      color: () {
                                        if (_model.mouseRegionPerfilHovered) {
                                          return FlutterFlowTheme.of(context)
                                              .hoverBtnLateral;
                                        } else if (widget
                                                .paramBotaoSelecionado ==
                                            'AFILIADO_CAD') {
                                          return FlutterFlowTheme.of(context)
                                              .menuLatSelecionado;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .txtMenuLateral;
                                        }
                                      }(),
                                      size: 24.0,
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              widget.paramBotaoSelecionado ==
                                                      'AFILIADO_CAD'
                                                  ? FlutterFlowTheme.of(context)
                                                      .menuLatSelecionado
                                                  : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Container(
                                            width: 24.0,
                                            height: 24.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                FFAppState().varIDAPPAfiliado ==
                                                        1
                                                    ? valueOrDefault<String>(
                                                        FFAppState()
                                                            .VarTblEstabelecimentoLogado
                                                            .fotoPerfil,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                      )
                                                    : valueOrDefault<String>(
                                                        FFAppState()
                                                            .varTblAfiliado
                                                            .fotoPerfil,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                      ),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/ueul5c3j28pd/images.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    Text(
                                      'Perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: () {
                                              if (_model
                                                  .mouseRegionPerfilHovered) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .hoverBtnLateral;
                                              } else if (widget
                                                      .paramBotaoSelecionado ==
                                                  'AFILIADO_CAD') {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .menuLatSelecionado;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .txtMenuLateral;
                                              }
                                            }(),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionPerfilHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.mouseRegionPerfilHovered = false);
                            }),
                          ),
                        ),
                      ),
                    ),
                  if (FFAppState().varIDAPPAfiliado == 1)
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.safePop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  FFAppState().varGrupoBotaoSelecionado =
                                      'CADASTROS';
                                  FFAppState()
                                      .addToVarGruposBotoesAbertos('CADASTROS');

                                  context.pushNamed(
                                    PgEstabelecimentoCadWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      color: () {
                                        if (_model.mouseRegionEmpresaHovered) {
                                          return FlutterFlowTheme.of(context)
                                              .hoverBtnLateral;
                                        } else if (widget
                                                .paramBotaoSelecionado ==
                                            'EMPRESA') {
                                          return FlutterFlowTheme.of(context)
                                              .menuLatSelecionado;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .txtMenuLateral;
                                        }
                                      }(),
                                      size: 24.0,
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Container(
                                        decoration: BoxDecoration(
                                          color:
                                              widget.paramBotaoSelecionado ==
                                                      'AFILIADO_CAD'
                                                  ? FlutterFlowTheme.of(context)
                                                      .menuLatSelecionado
                                                  : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Container(
                                            width: 24.0,
                                            height: 24.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                FFAppState().varIDAPPAfiliado ==
                                                        1
                                                    ? valueOrDefault<String>(
                                                        FFAppState()
                                                            .VarTblEstabelecimentoLogado
                                                            .fotoPerfil,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                      )
                                                    : valueOrDefault<String>(
                                                        FFAppState()
                                                            .varTblAfiliado
                                                            .fotoPerfil,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                      ),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/ueul5c3j28pd/images.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    Text(
                                      'Empresa',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: () {
                                              if (_model
                                                  .mouseRegionEmpresaHovered) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .hoverBtnLateral;
                                              } else if (widget
                                                      .paramBotaoSelecionado ==
                                                  'EMPRESA') {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .menuLatSelecionado;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .txtMenuLateral;
                                              }
                                            }(),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(() =>
                                  _model.mouseRegionEmpresaHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(() =>
                                  _model.mouseRegionEmpresaHovered = false);
                            }),
                          ),
                        ),
                      ),
                    ),
                ].divide(SizedBox(width: 2.0)),
              ),
            ),
            if ((isAndroid ||
                    (FFAppState().VarTblDispositivoInformacoes.osName ==
                        'Android')) ||
                (!isWeb ||
                    (FFAppState().VarTblDispositivoInformacoes.pwa == true)))
              Container(
                width: 100.0,
                height: valueOrDefault<double>(
                  isAndroid ? 50.0 : 20.0,
                  20.0,
                ),
                decoration: BoxDecoration(),
              ),
          ],
        ),
      ),
    );
  }
}
