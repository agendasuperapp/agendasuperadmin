import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_notificacao_model.dart';
export 'cp_notificacao_model.dart';

class CpNotificacaoWidget extends StatefulWidget {
  const CpNotificacaoWidget({super.key});

  @override
  State<CpNotificacaoWidget> createState() => _CpNotificacaoWidgetState();
}

class _CpNotificacaoWidgetState extends State<CpNotificacaoWidget>
    with TickerProviderStateMixin {
  late CpNotificacaoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpNotificacaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await TblNotificacoesTable().update(
        data: {
          'lida': true,
          'data_leitura': supaSerialize<DateTime>(getCurrentTimestamp),
        },
        matchingRows: (rows) => rows
            .eqOrNull(
              'user_id',
              currentUserUid,
            )
            .eqOrNull(
              'lida',
              false,
            ),
      );
      await TblNotificacoesQuantTable().update(
        data: {
          'quant': 0,
        },
        matchingRows: (rows) => rows
            .eqOrNull(
              'user_id',
              currentUserUid,
            )
            .eqOrNull(
              'tipo',
              'ESTABELECIMENTO',
            ),
      );
      if (isWeb) {
        _model.instantTimer = InstantTimer.periodic(
          duration: Duration(milliseconds: 2000),
          callback: (timer) async {
            unawaited(
              () async {
                await action_blocks.acOneSignalWebAtualizarOptions(context);
              }(),
            );
          },
          startImmediately: true,
        );
      }
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(115.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).colorGradient1,
              FlutterFlowTheme.of(context).colorGradient2
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width <=
                                FFAppState()
                                    .varTamanhoMinimoTelaMenuLateral
                                    .toDouble()
                            ? 0.0
                            : 16.0,
                        0.0,
                      ),
                      0.0,
                      16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notificações',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Veja todas as notificações do aplicativo',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if ((MediaQuery.sizeOf(context).width >
                              valueOrDefault<double>(
                                FFAppState()
                                    .varTamanhoMinimoTelaMenuLateral
                                    .toDouble(),
                                1000.0,
                              )) &&
                          responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (FFAppState().VarAbrirJanelasWebAndroid ==
                                true) {
                              Navigator.pop(context);
                            } else {
                              Navigator.pop(context);
                            }
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28.0,
                          ),
                        ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if ((currentUserUid != '') &&
                        isWeb &&
                        (isWeb &&
                                !FFAppState()
                                    .VarTblDispositivoInformacoes
                                    .pwa &&
                                ((FFAppState()
                                            .VarTblDispositivoInformacoes
                                            .osName ==
                                        'iOS') ||
                                    (FFAppState()
                                            .VarTblDispositivoInformacoes
                                            .osName ==
                                        'Mac OS'))
                            ? false
                            : true))
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile.adaptive(
                            value: _model.switchListTileNotificacoesWebValue ??=
                                FFAppState().varWebOneSignalNotificacoesAtivas,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileNotificacoesWebValue =
                                      newValue);
                              if (newValue) {
                                FFAppState().varWebOneSignalNotificacoesAtivas =
                                    true;
                                FFAppState().varWebOneSignalContadorAtzOptions =
                                    0;
                                safeSetState(() {});
                                _model.resultPermissOneSign2Copy = await actions
                                    .caWebOneSignalRequestPermission(
                                  '',
                                );
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 5000,
                                  ),
                                );
                                _model.resultOneSignalCarregNotifON2 =
                                    await action_blocks
                                        .acOneSignalWebCarregarNotificacoes(
                                  context,
                                  paramFuncao: 'PERMITIR',
                                );
                                await action_blocks
                                    .acOneSignalWebAtualizarOptions(context);
                                if (FFAppState().VarEmDesenvolvimento) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Atenção!'),
                                        content: Text(
                                            'resultPermissOneSign:${_model.resultOneSignalCarregNotifON2?.toString()}'),
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

                                safeSetState(() {});
                              } else {
                                FFAppState().varWebOneSignalContadorAtzOptions =
                                    0;
                                _model.acDesativarNotificacoesOneSignal22 =
                                    await action_blocks
                                        .acOneSignalWebCarregarNotificacoes(
                                  context,
                                  paramFuncao: 'DESATIVAR',
                                );
                                await action_blocks
                                    .acOneSignalWebAtualizarOptions(context);
                                if (_model.acDesativarNotificacoesOneSignal22 ==
                                    true) {
                                  FFAppState()
                                          .varWebOneSignalNotificacoesAtivas =
                                      false;
                                  safeSetState(() {});
                                } else {
                                  if (FFAppState()
                                      .varWebOneSignalNotificacoesAtivas) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Atenção!'),
                                          content: Text(
                                              'Falha ao desativar notificações, tente novamente'),
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
                                }

                                safeSetState(() {});
                              }
                            },
                            title: Text(
                              FFAppState().varWebOneSignalNotificacoesAtivas
                                  ? FFAppState()
                                      .varWebOneSignalWebStatusNotificacao
                                  : 'Receba notificações sobre seus agendamentos',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: () {
                                      if (FFAppState()
                                              .varWebOneSignalNotificacoesAtivas ==
                                          false) {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryText;
                                      } else if (FFAppState()
                                              .varWebOneSignalWebStatusNotificacao ==
                                          'Notificações ativas') {
                                        return FlutterFlowTheme.of(context)
                                            .success;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .error;
                                      }
                                    }(),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            activeColor: FlutterFlowTheme.of(context).alternate,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    if ((currentUserUid != '') &&
                        (isAndroid || isiOS))
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile.adaptive(
                            value: _model.switchListTileNotificacoesAPPValue ??=
                                FFAppState().varAPPNotificacoesAtivas,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileNotificacoesAPPValue =
                                      newValue);
                              if (newValue) {
                                _model.varResultInicializaNotifOneSiganl2 =
                                    await action_blocks
                                        .acOneSignalAPPInicializarNotificacoes(
                                            context);
                                if (_model.varResultInicializaNotifOneSiganl2 ==
                                    false) {
                                  FFAppState().varAPPNotificacoesAtivas = false;
                                  safeSetState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Atenção!'),
                                        content: Text(
                                            'Não foi possível inicializar as notificações, verifique  as permissões de notificações do seu dispositivo'),
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
                                } else {
                                  FFAppState().varAPPNotificacoesAtivas = true;
                                  safeSetState(() {});
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Notificações ativadas',
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 1000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              } else {
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Atenção!'),
                                              content: Text(
                                                  'Deseja desativar as notificações desse dispositivo?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('Não'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Sim'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  await actions
                                      .caAPPOneSignalLogoutExternalId();
                                  FFAppState().varAPPNotificacoesAtivas = false;
                                  safeSetState(() {});
                                }
                              }
                            },
                            title: Text(
                              'Receba notificações sobre seus agendamentos',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            activeColor: FlutterFlowTheme.of(context).alternate,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.varResultInicializaNotifOneSiganl =
                                      await action_blocks
                                          .acOneSignalAPPInicializarNotificacoes(
                                              context);
                                  if (_model
                                          .varResultInicializaNotifOneSiganl ==
                                      false) {
                                    FFAppState().varAPPNotificacoesAtivas =
                                        false;
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Atenção!'),
                                          content: Text(
                                              'Não foi possível inicializar as notificações, verifique  as permissões de notificações do seu dispositivo'),
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
                                  } else {
                                    FFAppState().varAPPNotificacoesAtivas =
                                        true;
                                    safeSetState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Notificações ativadas',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 1000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().varAPPNotificacoesAtivas
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.notifications_none,
                                          color:
                                              FFAppState()
                                                      .varAPPNotificacoesAtivas
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondary
                                                  : Color(0xFF57636C),
                                          size: 20.0,
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Notificações Ativas',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.outfit(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: FFAppState()
                                                              .varAPPNotificacoesAtivas
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary
                                                          : Color(0xFF57636C),
                                                      fontSize: MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 12.0
                                                          : 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            if ((FFAppState()
                                                        .varAPPNotificacoesAtivas ==
                                                    true) &&
                                                !FFAppState()
                                                    .varAPPOneSignalInicializado)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Tente novamente',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.outfit(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 12.0
                                                            : 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var confirmDialogResponse =
                                      await showDialog<bool>(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Atenção!'),
                                                content: Text(
                                                    'Deseja desativar as notificações desse dispositivo?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: Text('Não'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: Text('Sim'),
                                                  ),
                                                ],
                                              );
                                            },
                                          ) ??
                                          false;
                                  if (confirmDialogResponse) {
                                    await actions
                                        .caAPPOneSignalLogoutExternalId();
                                    FFAppState().varAPPNotificacoesAtivas =
                                        false;
                                    safeSetState(() {});
                                  }
                                },
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  decoration: BoxDecoration(
                                    color: !FFAppState()
                                            .varAPPNotificacoesAtivas
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.notifications_off_outlined,
                                          color: !FFAppState()
                                                  .varAPPNotificacoesAtivas
                                              ? FlutterFlowTheme.of(context)
                                                  .warning
                                              : Color(0xFF57636C),
                                          size: 20.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Notificações desativadas',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: !FFAppState()
                                                          .varAPPNotificacoesAtivas
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .warning
                                                      : Color(0xFF57636C),
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 12.0
                                                          : 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'containerOnActionTriggerAnimation']!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (((FFAppState().varAPPNotificacoesAtivas == true) &&
                            !FFAppState().varAPPOneSignalInicializado) &&
                        responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Flexible(
                        child: Text(
                          'Não foi possiível ativar as nofificações, verifique as permissões. Tente novamente',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: FutureBuilder<List<ViewTblNotificacoesRow>>(
                        future: ViewTblNotificacoesTable().queryRows(
                          queryFn: (q) => q,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<ViewTblNotificacoesRow>
                              listViewViewTblNotificacoesRowList =
                              snapshot.data!;

                          if (listViewViewTblNotificacoesRowList.isEmpty) {
                            return CpSemCadastroWidget(
                              paramTexto: 'Nenhum registro encontrado',
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount:
                                listViewViewTblNotificacoesRowList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 8.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewViewTblNotificacoesRow =
                                  listViewViewTblNotificacoesRowList[
                                      listViewIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (listViewViewTblNotificacoesRow.tipo ==
                                          'VENCIMENTO') {
                                        context.pushNamed(
                                            PgEstabelecimentoPlanoWidget
                                                .routeName);
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons.notifications_none,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            Opacity(
                                              opacity: 0.7,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    listViewViewTblNotificacoesRow
                                                        .icone,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                  ),
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 50.0
                                                          : 75.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewViewTblNotificacoesRow
                                                                  .titulo,
                                                              '...',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF57636C),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            listViewViewTblNotificacoesRow
                                                                        .dataField ==
                                                                    getCurrentTimestamp
                                                                ? dateTimeFormat(
                                                                    "HH:mm",
                                                                    listViewViewTblNotificacoesRow
                                                                        .dataCadastro!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )
                                                                : dateTimeFormat(
                                                                    "dd/MM HH:mm",
                                                                    listViewViewTblNotificacoesRow
                                                                        .dataCadastro!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF57636C),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        listViewViewTblNotificacoesRow
                                                            .texto,
                                                        '...',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
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
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
