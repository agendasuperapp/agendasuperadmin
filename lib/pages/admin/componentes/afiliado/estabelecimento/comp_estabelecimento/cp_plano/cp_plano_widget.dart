import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_plano_model.dart';
export 'cp_plano_model.dart';

class CpPlanoWidget extends StatefulWidget {
  const CpPlanoWidget({super.key});

  @override
  State<CpPlanoWidget> createState() => _CpPlanoWidgetState();
}

class _CpPlanoWidgetState extends State<CpPlanoWidget>
    with TickerProviderStateMixin {
  late CpPlanoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpPlanoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().varCarregouPrimeiraPagina) {
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          safeSetState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        } else {
          safeSetState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        }
      }
      await action_blocks.acAtualizarPlanosJson(context);

      safeSetState(() {});
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.08, 1.08),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.01, 1.01),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'staggeredViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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

    return Align(
      alignment: AlignmentDirectional(
          0.0,
          valueOrDefault<double>(
            () {
              if ((isWeb == true) &&
                  (FFAppState().VarTblDispositivoInformacoes.osName ==
                      'Android')) {
                return -1.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 1.0;
              } else {
                return 0.0;
              }
            }(),
            0.0,
          )),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 1.0,
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
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: () async {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  safeSetState(() => _model.requestCompleter = null);
                  await _model.waitForRequestCompleted();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Atualizado com sucesso...',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      duration: Duration(milliseconds: 1000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                } else {
                  safeSetState(() => _model.requestCompleter = null);
                  await _model.waitForRequestCompleted();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Atualizado com sucesso!',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      duration: Duration(milliseconds: 1000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                }
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0,
                          MediaQuery.sizeOf(context).width <=
                                  FFAppState()
                                      .varTamanhoMinimoTelaMenuLateral
                                      .toDouble()
                              ? valueOrDefault<double>(
                                  FFAppState()
                                      .varLayoutMargemPgTopMibile
                                      .toDouble(),
                                  16.0,
                                )
                              : 16.0,
                          16.0,
                          0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFAppState().varIDAPPAfiliado == 1
                                        ? 'Plano Estabelecimento'
                                        : 'Plano Afiliado',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Gerencie seu plano',
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
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: FutureBuilder<
                                  List<ViewTblAppPlanosEstabelecimentosRow>>(
                                future: (_model.requestCompleter ??= Completer<
                                        List<
                                            ViewTblAppPlanosEstabelecimentosRow>>()
                                      ..complete(
                                          ViewTblAppPlanosEstabelecimentosTable()
                                              .querySingleRow(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'id_estabelecimento',
                                              FFAppState()
                                                  .VarIDEstabelecimentoLogado,
                                            )
                                            .eqOrNull(
                                              'plano_ativo',
                                              true,
                                            )
                                            .eqOrNull(
                                              'id_afiliado_app',
                                              FFAppState().varIDAPPAfiliado,
                                            ),
                                      )))
                                    .future,
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ViewTblAppPlanosEstabelecimentosRow>
                                      containerDadosViewTblAppPlanosEstabelecimentosRowList =
                                      snapshot.data!;

                                  final containerDadosViewTblAppPlanosEstabelecimentosRow =
                                      containerDadosViewTblAppPlanosEstabelecimentosRowList
                                              .isNotEmpty
                                          ? containerDadosViewTblAppPlanosEstabelecimentosRowList
                                              .first
                                          : null;

                                  return Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 1000.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: () {
                                                  if ((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                              ?.trialPeriod ==
                                                          true) &&
                                                      containerDadosViewTblAppPlanosEstabelecimentosRow!
                                                          .planoAtivo!) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .accent2;
                                                  } else if (containerDadosViewTblAppPlanosEstabelecimentosRow!
                                                      .planoAtivo!) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .accent2;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .alternate;
                                                  }
                                                }(),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    '',
                                                  ).image,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          border: Border.all(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .crown,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  'Plano Atual: ${valueOrDefault<String>(
                                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        ?.nomePlanoPeriodos,
                                                                    '...',
                                                                  )} ${valueOrDefault<String>(
                                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        ?.nomePlano,
                                                                    '...',
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
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
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (FFAppState()
                                                                .varIDAPPAfiliado ==
                                                            1)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minWidth:
                                                                        475.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Colors
                                                                          .transparent,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            2.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              2.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.person_4_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            'Profissionais liberados: ${containerDadosViewTblAppPlanosEstabelecimentosRow?.quantProfissionaisMaxSalvo?.toString()}',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        if (FFAppState()
                                                                .varIDAPPAfiliado ==
                                                            3)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minWidth:
                                                                        475.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Colors
                                                                          .transparent,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            2.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              2.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.percent_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            'Percentual comissão: ${formatNumber(
                                                                              containerDadosViewTblAppPlanosEstabelecimentosRow?.percComissao,
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.commaDecimal,
                                                                            )}%',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              minWidth: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall
                                                                  ? 500.0
                                                                  : 250.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .attach_money_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Valor do plano: ${containerDadosViewTblAppPlanosEstabelecimentosRow!.assinatura! ? formatNumber(
                                                                        containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .precoAssinatura,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.commaDecimal,
                                                                        currency:
                                                                            'R\$',
                                                                      ) : formatNumber(
                                                                        containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .valor,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.commaDecimal,
                                                                        currency:
                                                                            'R\$',
                                                                      )}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          .nomePlanoPeriodos ==
                                                                      'Mensal')
                                                                    Text(
                                                                      '/mês',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                    ?.cupom !=
                                                                null &&
                                                            containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                    ?.cupom !=
                                                                '')
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              minWidth: 250.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .discount_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Cupom: ${valueOrDefault<String>(
                                                                      containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          ?.cupom,
                                                                      '...',
                                                                    )}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                    ?.cupom !=
                                                                null &&
                                                            containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                    ?.cupom !=
                                                                '')
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .discount_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      () {
                                                                        if (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTipo ==
                                                                            'DESCONTO') {
                                                                          return 'Desconto de ${containerDadosViewTblAppPlanosEstabelecimentosRow?.porcentagemDesconto?.toString()}% aplicado: ${formatNumber(
                                                                            containerDadosViewTblAppPlanosEstabelecimentosRow?.valor,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                            currency:
                                                                                'R\$',
                                                                          )}';
                                                                        } else if ((containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTipo ==
                                                                                'DIA') ||
                                                                            (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTipo ==
                                                                                'MES')) {
                                                                          return '${containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTempo?.toString()} ${() {
                                                                            if (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTipo ==
                                                                                'MES') {
                                                                              return (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTempo == 1 ? 'mês' : 'meses');
                                                                            } else if (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTipo ==
                                                                                'DIA') {
                                                                              return (containerDadosViewTblAppPlanosEstabelecimentosRow?.cupomTempo == 1 ? 'dia' : 'dias');
                                                                            } else {
                                                                              return '...';
                                                                            }
                                                                          }()} grátis';
                                                                        } else {
                                                                          return 'Cupom não identificado';
                                                                        }
                                                                      }(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'rowOnPageLoadAnimation1']!),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            ?.assinaturaInicio !=
                                                        null)
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          minWidth: 250.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          border: Border.all(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .calendar_month,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    'Validade: ${dateTimeFormat(
                                                                      "dd/MM/y",
                                                                      containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          ?.assinaturaInicio,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )} até ${dateTimeFormat(
                                                                      "dd/MM/y",
                                                                      containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          ?.assinaturaFinal,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )}',
                                                                    '...',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                    if ((!containerDadosViewTblAppPlanosEstabelecimentosRow!
                                                                .assinaturaCancSolicitado! &&
                                                            containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                .planoAtivo! &&
                                                            containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                .assinatura! &&
                                                            ((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'PAGO') ||
                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'ALTEROU PLANO'))) &&
                                                        responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          minWidth: 250.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          border: Border.all(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons.restore,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  'Renova automaticamente em ${dateTimeFormat(
                                                                    "dd/MM/y HH:mm",
                                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .assinaturaFinal,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          border: Border.all(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .date_range,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 16.0,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child:
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                  'Data cadastro: ${dateTimeFormat(
                                                                    "dd/MM/y H:mm",
                                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .dataCadastro,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}${FFAppState().VarEmDesenvolvimento ? '  #${containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoEstabelecimento?.toString()}' : ''}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                )),
                                                              ),
                                                            ],
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'rowOnPageLoadAnimation2']!),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                        .VarEmDesenvolvimento)
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                          border: Border.all(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .grid_3x3,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child:
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                  'Subscription ID: ${containerDadosViewTblAppPlanosEstabelecimentosRow.stripeSubscriptionId}  | Customer ID: ${containerDadosViewTblAppPlanosEstabelecimentosRow.stripeCustomerId}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                )),
                                                              ),
                                                            ],
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'rowOnPageLoadAnimation3']!),
                                                        ),
                                                      ),
                                                    if ((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                .statusPagamento !=
                                                            'PERIODO TESTE') ||
                                                        !containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .planoAtivo!)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: () {
                                                                if (!containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                    .planoAtivo!) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate;
                                                                } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .planoAtivo! &&
                                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .assinaturaCancSolicitado!) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning;
                                                                } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'PERIODO TESTE') {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary;
                                                                } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento !=
                                                                    'PAGO') {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning;
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .info;
                                                                }
                                                              }(),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          .statusPagamento !=
                                                                      'PAGO')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .exclamationTriangle,
                                                                        color:
                                                                            () {
                                                                          if (containerDadosViewTblAppPlanosEstabelecimentosRow.assinaturaCancSolicitado! &&
                                                                              (containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade != null &&
                                                                                  containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade !=
                                                                                      '')) {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          } else if (!containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .planoAtivo!) {
                                                                            return FlutterFlowTheme.of(context).secondaryText;
                                                                          } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                              'PAGO') {
                                                                            return FlutterFlowTheme.of(context).success;
                                                                          } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                              'PERIODO TESTE') {
                                                                            return FlutterFlowTheme.of(context).info;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          }
                                                                        }(),
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                    ),
                                                                  if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                          .statusPagamento ==
                                                                      'PAGO')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .check_circle_outline_sharp,
                                                                        color:
                                                                            () {
                                                                          if (containerDadosViewTblAppPlanosEstabelecimentosRow.assinaturaCancSolicitado! &&
                                                                              (containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade != null &&
                                                                                  containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade !=
                                                                                      '')) {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          } else if (!containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .planoAtivo!) {
                                                                            return FlutterFlowTheme.of(context).secondaryText;
                                                                          } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                              'PAGO') {
                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                          } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                              'PERIODO TESTE') {
                                                                            return FlutterFlowTheme.of(context).info;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).error;
                                                                          }
                                                                        }(),
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                    ),
                                                                  Text(
                                                                    '${() {
                                                                      if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .planoAtivo! &&
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .assinaturaCancSolicitado!) {
                                                                        return 'CANCELADO';
                                                                      } else if (!containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .planoAtivo! &&
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .assinaturaCancSolicitado! &&
                                                                          (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                              'ALTEROU PLANO')) {
                                                                        return 'CANCELADO (MUDANÇA DE PLANO)';
                                                                      } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .statusPagamento ==
                                                                          'ALTEROU PLANO') {
                                                                        return 'MUDANÇA DE PLANO';
                                                                      } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .statusPagamento ==
                                                                          'PERIODO TESTE') {
                                                                        return 'PERÍODO DE TESTE';
                                                                      } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .statusPagamento ==
                                                                          'AG. CARTAO') {
                                                                        return 'AGUARDANDO CARTÃO';
                                                                      } else if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .statusPagamento ==
                                                                          'AG. PAGAMENTO') {
                                                                        return 'AGUARDANDO PAGAMENTO';
                                                                      } else {
                                                                        return containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .statusPagamento;
                                                                      }
                                                                    }()}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              () {
                                                                            if (containerDadosViewTblAppPlanosEstabelecimentosRow.assinaturaCancSolicitado! &&
                                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade != null && containerDadosViewTblAppPlanosEstabelecimentosRow.upgradeDowngrade != '')) {
                                                                              return FlutterFlowTheme.of(context).error;
                                                                            } else if (!containerDadosViewTblAppPlanosEstabelecimentosRow.planoAtivo!) {
                                                                              return FlutterFlowTheme.of(context).secondaryText;
                                                                            } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PAGO') {
                                                                              return FlutterFlowTheme.of(context).secondary;
                                                                            } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PERIODO TESTE') {
                                                                              return FlutterFlowTheme.of(context).info;
                                                                            } else {
                                                                              return FlutterFlowTheme.of(context).error;
                                                                            }
                                                                          }(),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'rowOnPageLoadAnimation4']!),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .planoAtivo! &&
                                                        (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                .trialPeriod ==
                                                            true) &&
                                                        !containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .assinaturaCancSolicitado! &&
                                                        (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                .trialPeriodDate !=
                                                            null))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: Colors
                                                                  .transparent,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Flexible(
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: 'Seu período de teste termina em ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: dateTimeFormat(
                                                                                          "dd/MM/y H:mm",
                                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow.trialPeriodDate!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: '. Depois desse período o valor do plano será cobrado no seu cartão. ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: () {
                                                                                            if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PAGO') {
                                                                                              return FlutterFlowTheme.of(context).success;
                                                                                            } else if (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PERIODO TESTE') {
                                                                                              return FlutterFlowTheme.of(context).info;
                                                                                            } else {
                                                                                              return FlutterFlowTheme.of(context).error;
                                                                                            }
                                                                                          }(),
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'rowOnPageLoadAnimation5']!),
                                                          ),
                                                        ),
                                                      ),
                                                    if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .planoAtivo! &&
                                                        !containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .assinaturaCancSolicitado!)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Wrap(
                                                          spacing: 8.0,
                                                          runSpacing: 8.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .center,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            if (((containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento != 'PAGO') &&
                                                                    (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .trialPeriod ==
                                                                        false) &&
                                                                    (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .assinatura ==
                                                                        true)) &&
                                                                responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  if (((containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus ==
                                                                              'complete') ||
                                                                          (containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus == null ||
                                                                              containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus ==
                                                                                  '')) &&
                                                                      (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeStatusPg ==
                                                                          'unpaid') &&
                                                                      (containerDadosViewTblAppPlanosEstabelecimentosRow.stripeUrl !=
                                                                              null &&
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow.stripeUrl !=
                                                                              '')) {
                                                                    if (isWeb) {
                                                                      await actions
                                                                          .caWebRedirectToUrl(
                                                                        containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .stripeUrl!,
                                                                      );
                                                                    } else {
                                                                      await launchURL(
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeUrl!);
                                                                    }

                                                                    return;
                                                                  } else {
                                                                    await action_blocks
                                                                        .acAtualizarPlanos(
                                                                      context,
                                                                      paramIDAfiliadoApp:
                                                                          1,
                                                                    );
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                  }
                                                                },
                                                                text: containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .planoAtivo!
                                                                    ? 'Pagar plano'
                                                                    : 'Reativar plano',
                                                                icon: Icon(
                                                                  Icons
                                                                      .monetization_on_outlined,
                                                                  size: 36.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? MediaQuery.sizeOf(
                                                                              context)
                                                                          .width
                                                                      : 200.0,
                                                                  height: 50.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            24.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'buttonOnPageLoadAnimation1']!),
                                                            if ((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'AG. CARTAO') &&
                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .trialPeriod ==
                                                                    true) &&
                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .assinatura ==
                                                                    true))
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  if (((containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus ==
                                                                              'complete') ||
                                                                          (containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus == null ||
                                                                              containerDadosViewTblAppPlanosEstabelecimentosRow.stripeStatus ==
                                                                                  '')) &&
                                                                      (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeStatusPg ==
                                                                          'unpaid') &&
                                                                      (containerDadosViewTblAppPlanosEstabelecimentosRow.stripeUrl !=
                                                                              null &&
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow.stripeUrl !=
                                                                              '')) {
                                                                    if (isWeb) {
                                                                      await actions
                                                                          .caWebRedirectToUrl(
                                                                        containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .stripeUrl!,
                                                                      );
                                                                    } else {
                                                                      await launchURL(
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeUrl!);
                                                                    }

                                                                    return;
                                                                  } else {
                                                                    await action_blocks
                                                                        .acAtualizarPlanos(
                                                                      context,
                                                                      paramIDAfiliadoApp:
                                                                          1,
                                                                    );
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                  }
                                                                },
                                                                text:
                                                                    'Inserir Cartão',
                                                                icon: Icon(
                                                                  Icons
                                                                      .add_card_outlined,
                                                                  size: 24.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? MediaQuery.sizeOf(
                                                                              context)
                                                                          .width
                                                                      : 300.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            if ((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .planoAtivo ==
                                                                    true) &&
                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'PAGO') &&
                                                                (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                        .assinatura ==
                                                                    false))
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  safeSetState(() =>
                                                                      _model.requestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted();
                                                                  await action_blocks
                                                                      .acAtualizarPlanos(
                                                                    context,
                                                                    paramIDAfiliadoApp:
                                                                        1,
                                                                  );
                                                                  safeSetState(() =>
                                                                      _model.requestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted();
                                                                },
                                                                text:
                                                                    'Renovar Plano',
                                                                icon: Icon(
                                                                  Icons.paid,
                                                                  size: 24.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? MediaQuery.sizeOf(
                                                                              context)
                                                                          .width
                                                                      : 200.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            if ((((containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PAGO') || (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PERIODO TESTE') || (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'ALTEROU PLANO')) &&
                                                                    ((containerDadosViewTblAppPlanosEstabelecimentosRow.statusAssinatura == 'ATIVA') ||
                                                                        (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                            'PERIODO TESTE') ||
                                                                        (containerDadosViewTblAppPlanosEstabelecimentosRow.statusPagamento ==
                                                                            'ALTEROU PLANO')) &&
                                                                    (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .statusPagamento !=
                                                                        'AG. PAGAMENTO') &&
                                                                    (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .statusPagamento !=
                                                                        'AG. CARTAO')) &&
                                                                responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Atenção!'),
                                                                                  content: Text('Deseja cancelar a assinatura?'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Não'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Sim'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    unawaited(
                                                                      () async {}(),
                                                                    );
                                                                    await TblPagamentosStripeCancTable()
                                                                        .insert({
                                                                      'id_estabelecimento':
                                                                          FFAppState()
                                                                              .VarIDEstabelecimentoLogado,
                                                                      'id_plano_estab':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .idPlanoEstabelecimento,
                                                                      'subscription_id':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeSubscriptionId,
                                                                      'charge_id':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .chargeId,
                                                                      'cancel_at_period_end':
                                                                          true,
                                                                      'reembolso':
                                                                          false,
                                                                      'valor_reembolso': ((containerDadosViewTblAppPlanosEstabelecimentosRow.precoAssinatura!) /
                                                                              30) *
                                                                          functions.fcDiferencaDiasEntreDatas(
                                                                              getCurrentTimestamp,
                                                                              containerDadosViewTblAppPlanosEstabelecimentosRow.dataFinal!),
                                                                      'motivo':
                                                                          'teste',
                                                                      'concluido':
                                                                          false,
                                                                      'result':
                                                                          '',
                                                                      'user_id':
                                                                          currentUserUid,
                                                                      'dias_restantes': functions.fcDiferencaDiasEntreDatas(
                                                                          getCurrentTimestamp,
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .dataFinal!),
                                                                    });
                                                                    await Future
                                                                        .delayed(
                                                                      Duration(
                                                                        milliseconds:
                                                                            5000,
                                                                      ),
                                                                    );
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                    await _model
                                                                        .acAtualizarTblLogs(
                                                                            context);

                                                                    safeSetState(
                                                                        () {});
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                Text('Atenção!'),
                                                                            content:
                                                                                Text('Assinatura cancelada...'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                },
                                                                text:
                                                                    'Cancelar Assinatura',
                                                                icon: Icon(
                                                                  Icons
                                                                      .cancel_outlined,
                                                                  size: 24.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? MediaQuery.sizeOf(
                                                                              context)
                                                                          .width
                                                                      : 200.0,
                                                                  height: 35.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            if (((containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .statusPagamento ==
                                                                        'PAGO') &&
                                                                    (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                            .statusAssinatura ==
                                                                        'ATIVA')) &&
                                                                responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Atenção!'),
                                                                                  content: Text('Deseja cancelar o plano?'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Não'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Sim'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    unawaited(
                                                                      () async {}(),
                                                                    );
                                                                    await TblPagamentosStripeCancTable()
                                                                        .insert({
                                                                      'id_estabelecimento':
                                                                          FFAppState()
                                                                              .VarIDEstabelecimentoLogado,
                                                                      'id_plano_estab':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .idPlanoEstabelecimento,
                                                                      'subscription_id':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeSubscriptionId,
                                                                      'charge_id':
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .chargeId,
                                                                      'cancel_at_period_end':
                                                                          false,
                                                                      'reembolso':
                                                                          true,
                                                                      'valor_reembolso': ((containerDadosViewTblAppPlanosEstabelecimentosRow.precoAssinatura!) /
                                                                              30) *
                                                                          functions.fcDiferencaDiasEntreDatas(
                                                                              getCurrentTimestamp,
                                                                              containerDadosViewTblAppPlanosEstabelecimentosRow.dataFinal!),
                                                                      'motivo':
                                                                          'Teste reembolso',
                                                                      'concluido':
                                                                          false,
                                                                      'result':
                                                                          '',
                                                                      'user_id':
                                                                          currentUserUid,
                                                                      'dias_restantes': functions.fcDiferencaDiasEntreDatas(
                                                                          getCurrentTimestamp,
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .dataFinal!),
                                                                    });
                                                                    await Future
                                                                        .delayed(
                                                                      Duration(
                                                                        milliseconds:
                                                                            6000,
                                                                      ),
                                                                    );
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                    await _model
                                                                        .acAtualizarTblLogs(
                                                                            context);

                                                                    safeSetState(
                                                                        () {});
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                Text('Atenção!'),
                                                                            content:
                                                                                Text('Cancelando com sucesso...'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }
                                                                },
                                                                text:
                                                                    'Cancelar Assinatura com Reembolso',
                                                                icon: Icon(
                                                                  Icons
                                                                      .cancel_presentation,
                                                                  size: 24.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? MediaQuery.sizeOf(
                                                                              context)
                                                                          .width
                                                                      : 350.0,
                                                                  height: 35.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .assinaturaCancSolicitado! &&
                                                        containerDadosViewTblAppPlanosEstabelecimentosRow
                                                            .planoAtivo!)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 1000.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Sua assinatura foi CANCELADA, você ainda poderá usar o sistema até o final do período ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Color(0xFFFFFF00),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            dateTimeFormat(
                                                                          "dd/MM/y",
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .dataFinal!,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Caso queira continuar com o plano você pode desfazer o cancelamento.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF41FEE8),
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    var _shouldSetState =
                                                                        false;
                                                                    _model.resultDesfazerCanc =
                                                                        await _model
                                                                            .acDesfazerCancelamento(
                                                                      context,
                                                                      paramSubscriptionID:
                                                                          containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                              .stripeSubscriptionId,
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    if (!_model
                                                                        .resultDesfazerCanc!) {
                                                                      if (_shouldSetState)
                                                                        safeSetState(
                                                                            () {});
                                                                      return;
                                                                    }
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                    await _model
                                                                        .acAtualizarTblLogs(
                                                                            context);

                                                                    safeSetState(
                                                                        () {});
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              AlertDialog(
                                                                            title:
                                                                                Text('Atenção!'),
                                                                            content:
                                                                                Text('Cancelamento desfeito com sucesso, obrigado por containuar conosco.'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  text:
                                                                      'Desfazer Cancelamento',
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_return,
                                                                    size: 24.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? MediaQuery.sizeOf(context)
                                                                            .width
                                                                        : 250.0,
                                                                    height:
                                                                        35.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'buttonOnPageLoadAnimation2']!),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Planos',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .outfit(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState().varIDAPPAfiliado ==
                                                                      1
                                                                  ? 'Escolha um plano que melhor atende a sua empresa'
                                                                  : 'Escolha um plano que melhor te atende',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .plusJakartaSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
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
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 9999.0,
                                                maxHeight: 9999.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final varTblPlanosAgSuper =
                                                      FFAppState()
                                                          .varTblPlanosJson
                                                          .toList();
                                                  if (varTblPlanosAgSuper
                                                      .isEmpty) {
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      child:
                                                          CpSemCadastroWidget(
                                                        paramTexto:
                                                            'Nenhum registro encontrado, atualize a página',
                                                      ),
                                                    );
                                                  }

                                                  return MasonryGridView
                                                      .builder(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    gridDelegate:
                                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            680.0) {
                                                          return 1;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            1000.0) {
                                                          return 2;
                                                        } else if (FFAppState()
                                                                .varTblPlanosJson
                                                                .length ==
                                                            2) {
                                                          return 2;
                                                        } else if (FFAppState()
                                                                .varTblPlanosJson
                                                                .length ==
                                                            3) {
                                                          return 3;
                                                        } else if (FFAppState()
                                                                .varTblPlanosJson
                                                                .length ==
                                                            4) {
                                                          return 2;
                                                        } else if (FFAppState()
                                                                .varTblPlanosJson
                                                                .length >=
                                                            5) {
                                                          return 3;
                                                        } else {
                                                          return 2;
                                                        }
                                                      }(),
                                                    ),
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    itemCount:
                                                        varTblPlanosAgSuper
                                                            .length,
                                                    shrinkWrap: true,
                                                    itemBuilder: (context,
                                                        varTblPlanosAgSuperIndex) {
                                                      final varTblPlanosAgSuperItem =
                                                          varTblPlanosAgSuper[
                                                              varTblPlanosAgSuperIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, -1.0),
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minHeight:
                                                                        430.0,
                                                                    maxWidth:
                                                                        600.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .colorGradPage1,
                                                                        containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoPreco ==
                                                                                getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.id''',
                                                                                )
                                                                            ? FlutterFlowTheme.of(context).alternate
                                                                            : FlutterFlowTheme.of(context).secondaryBackground
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                      end: AlignmentDirectional(
                                                                          0,
                                                                          1.0),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                                  .idPlanoPreco ==
                                                                              getJsonField(
                                                                                varTblPlanosAgSuperItem,
                                                                                r'''$.id''',
                                                                              )
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .success
                                                                          : FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.all(
                                                                        valueOrDefault<
                                                                            double>(
                                                                      MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall
                                                                          ? 18.0
                                                                          : 30.0,
                                                                      0.0,
                                                                    )),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            SelectionArea(
                                                                                child: Text(
                                                                              getJsonField(
                                                                                varTblPlanosAgSuperItem,
                                                                                r'''$.nome''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.w800,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: MediaQuery.sizeOf(context).width <
                                                                                            valueOrDefault<double>(
                                                                                              FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
                                                                                              1000.0,
                                                                                            )
                                                                                        ? 30.0
                                                                                        : 40.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w800,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            )),
                                                                            SelectionArea(
                                                                                child: Text(
                                                                              getJsonField(
                                                                                varTblPlanosAgSuperItem,
                                                                                r'''$.obs_plano''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.w800,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).agendaSuper,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w800,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            )),
                                                                          ],
                                                                        ),
                                                                        Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                350.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                22.0,
                                                                                0.0,
                                                                                22.0,
                                                                                0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                final varDescricao = getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.detalhes''',
                                                                                ).toList();

                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: List.generate(varDescricao.length, (varDescricaoIndex) {
                                                                                    final varDescricaoItem = varDescricao[varDescricaoIndex];
                                                                                    return Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.check,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          size: () {
                                                                                            if (FFAppState().varTblPlanosJson.length > 2) {
                                                                                              return 16.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                              return 20.0;
                                                                                            } else {
                                                                                              return 24.0;
                                                                                            }
                                                                                          }(),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: SelectionArea(
                                                                                              child: Text(
                                                                                            getJsonField(
                                                                                              varDescricaoItem,
                                                                                              r'''$''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.start,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.readexPro(
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: () {
                                                                                                    if (FFAppState().varTblPlanosJson.length > 2) {
                                                                                                      return 14.0;
                                                                                                    } else if (MediaQuery.sizeOf(context).width <
                                                                                                        valueOrDefault<double>(
                                                                                                          FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
                                                                                                          1000.0,
                                                                                                        )) {
                                                                                                      return 16.0;
                                                                                                    } else {
                                                                                                      return 18.0;
                                                                                                    }
                                                                                                  }(),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                          )),
                                                                                        ),
                                                                                      ].divide(SizedBox(width: 12.0)),
                                                                                    );
                                                                                  }).divide(SizedBox(height: 8.0)),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              constraints: BoxConstraints(
                                                                                minHeight: 35.0,
                                                                              ),
                                                                              decoration: BoxDecoration(),
                                                                              child: Visibility(
                                                                                visible: (double.tryParse(getJsonField(
                                                                                      varTblPlanosAgSuperItem,
                                                                                      r'''$.valor_anterior''',
                                                                                    ).toString()))! >
                                                                                    0.0,
                                                                                child: SelectionArea(
                                                                                    child: Text(
                                                                                  'de ${formatNumber(
                                                                                    double.tryParse(getJsonField(
                                                                                      varTblPlanosAgSuperItem,
                                                                                      r'''$.valor_anterior''',
                                                                                    ).toString()),
                                                                                    formatType: FormatType.decimal,
                                                                                    decimalType: DecimalType.commaDecimal,
                                                                                    currency: 'R\$',
                                                                                  )}por: ',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.w800,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: MediaQuery.sizeOf(context).width <
                                                                                                valueOrDefault<double>(
                                                                                                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
                                                                                                  1000.0,
                                                                                                )
                                                                                            ? 18.0
                                                                                            : 24.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w800,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                )),
                                                                              ),
                                                                            ),
                                                                            SelectionArea(
                                                                                child: Text(
                                                                              formatNumber(
                                                                                double.tryParse(getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.valor''',
                                                                                ).toString()),
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.commaDecimal,
                                                                                currency: 'R\$',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.w800,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).agendaSuper,
                                                                                    fontSize: MediaQuery.sizeOf(context).width <
                                                                                            valueOrDefault<double>(
                                                                                              FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
                                                                                              1000.0,
                                                                                            )
                                                                                        ? 40.0
                                                                                        : 50.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w800,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            )),
                                                                            Container(
                                                                              constraints: BoxConstraints(
                                                                                minHeight: 30.0,
                                                                              ),
                                                                              decoration: BoxDecoration(),
                                                                              child: Visibility(
                                                                                visible: (getJsonField(
                                                                                          varTblPlanosAgSuperItem,
                                                                                          r'''$.obs_desconto''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    ('${getJsonField(
                                                                                          varTblPlanosAgSuperItem,
                                                                                          r'''$.obs_desconto''',
                                                                                        ).toString()}' !=
                                                                                        ''),
                                                                                child: SelectionArea(
                                                                                    child: Text(
                                                                                  getJsonField(
                                                                                    varTblPlanosAgSuperItem,
                                                                                    r'''$.obs_desconto''',
                                                                                  ).toString(),
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.w800,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 20.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w800,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                )),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 4.0)),
                                                                        ),
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed: (containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoPreco ==
                                                                                    getJsonField(
                                                                                      varTblPlanosAgSuperItem,
                                                                                      r'''$.id''',
                                                                                    ))
                                                                                ? null
                                                                                : () async {
                                                                                    var _shouldSetState = false;
                                                                                    _model.resultStripePortalUrl3 = await action_blocks.acStripePortalURL(
                                                                                      context,
                                                                                      paramCustomerID: containerDadosViewTblAppPlanosEstabelecimentosRow.stripeCustomerId,
                                                                                    );
                                                                                    _shouldSetState = true;
                                                                                    if (_model.resultStripePortalUrl3 == 'false') {
                                                                                      if (_shouldSetState) safeSetState(() {});
                                                                                      return;
                                                                                    }
                                                                                    await actions.caWebRedirectToUrl(
                                                                                      '${_model.resultStripePortalUrl3}/subscriptions/${containerDadosViewTblAppPlanosEstabelecimentosRow.stripeSubscriptionId}/update',
                                                                                    );
                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                  },
                                                                            text:
                                                                                () {
                                                                              if (containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoPreco ==
                                                                                  getJsonField(
                                                                                    varTblPlanosAgSuperItem,
                                                                                    r'''$.id''',
                                                                                  )) {
                                                                                return 'Plano Atual';
                                                                              } else if ((double.tryParse(getJsonField(
                                                                                    varTblPlanosAgSuperItem,
                                                                                    r'''$.valor''',
                                                                                  ).toString()))! >
                                                                                  containerDadosViewTblAppPlanosEstabelecimentosRow.valor!) {
                                                                                return 'Upgrade para plano ${getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.nome''',
                                                                                ).toString()}';
                                                                              } else if ((double.tryParse(getJsonField(
                                                                                    varTblPlanosAgSuperItem,
                                                                                    r'''$.valor''',
                                                                                  ).toString()))! <
                                                                                  containerDadosViewTblAppPlanosEstabelecimentosRow.valor!) {
                                                                                return 'Downgrade para plano ${getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.nome''',
                                                                                ).toString()}';
                                                                              } else {
                                                                                return 'Selecionar Plano ${getJsonField(
                                                                                  varTblPlanosAgSuperItem,
                                                                                  r'''$.nome''',
                                                                                ).toString()}';
                                                                              }
                                                                            }(),
                                                                            icon:
                                                                                Icon(
                                                                              Icons.ads_click,
                                                                              size: 24.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoPreco ==
                                                                                      getJsonField(
                                                                                        varTblPlanosAgSuperItem,
                                                                                        r'''$.id''',
                                                                                      )
                                                                                  ? FlutterFlowTheme.of(context).secondaryText
                                                                                  : FlutterFlowTheme.of(context).agendaSuper,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                    color: containerDadosViewTblAppPlanosEstabelecimentosRow.idPlanoPreco ==
                                                                                            getJsonField(
                                                                                              varTblPlanosAgSuperItem,
                                                                                              r'''$.id''',
                                                                                            )
                                                                                        ? FlutterFlowTheme.of(context).secondaryBackground
                                                                                        : Colors.black,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              hoverColor: FlutterFlowTheme.of(context).hoverBtnLateral,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          constraints:
                                                                              BoxConstraints(
                                                                            maxWidth:
                                                                                400.0,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.asset(
                                                                              Theme.of(context).brightness == Brightness.dark ? 'assets/images/compra-Segura-vetor-branco1-1.png' : 'assets/images/compra-Segura-vetor-branco1-1_(2).png',
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 18.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                                      .idPlanoPreco ==
                                                                  getJsonField(
                                                                    varTblPlanosAgSuperItem,
                                                                    r'''$.id''',
                                                                  ))
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          FaIcon(
                                                                            FontAwesomeIcons.crown,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                16.0,
                                                                          ),
                                                                          Text(
                                                                            'Plano atual',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ).animateOnPageLoad(animationsMap[
                                                      'staggeredViewOnPageLoadAnimation']!);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Gerenciar Assinatura',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .outfit(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Gerencie sua assinatura, altere a forma de pagamento ou cancele quando quiser.',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .plusJakartaSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
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
                                        if (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                .planoAtivo! &&
                                            (containerDadosViewTblAppPlanosEstabelecimentosRow
                                                        .stripeCustomerId !=
                                                    null &&
                                                containerDadosViewTblAppPlanosEstabelecimentosRow
                                                        .stripeCustomerId !=
                                                    ''))
                                          FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              _model.resultStripePortalUrsl =
                                                  await action_blocks
                                                      .acStripePortalURL(
                                                context,
                                                paramCustomerID:
                                                    containerDadosViewTblAppPlanosEstabelecimentosRow
                                                        .stripeCustomerId,
                                              );
                                              _shouldSetState = true;
                                              if (_model
                                                      .resultStripePortalUrsl ==
                                                  'false') {
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                              await actions.caWebRedirectToUrl(
                                                _model.resultStripePortalUrsl!,
                                              );
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                            text: 'Gerenciar Assinatura',
                                            icon: Icon(
                                              Icons.settings_sharp,
                                              size: 24.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall
                                                  ? MediaQuery.sizeOf(context)
                                                      .width
                                                  : 350.0,
                                              padding: EdgeInsets.all(16.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                          ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: BoxDecoration(),
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
