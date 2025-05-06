import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_nota_fiscal/cp_nota_fiscal_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelecimento_plano_pagar/cp_estabelecimento_plano_pagar_widget.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelecimento_plano_renovar/cp_estabelecimento_plano_renovar_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_estabelecimento_plano_model.dart';
export 'cp_estabelecimento_plano_model.dart';

class CpEstabelecimentoPlanoWidget extends StatefulWidget {
  const CpEstabelecimentoPlanoWidget({super.key});

  @override
  State<CpEstabelecimentoPlanoWidget> createState() =>
      _CpEstabelecimentoPlanoWidgetState();
}

class _CpEstabelecimentoPlanoWidgetState
    extends State<CpEstabelecimentoPlanoWidget> with TickerProviderStateMixin {
  late CpEstabelecimentoPlanoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpEstabelecimentoPlanoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().varMostrarAvisoPgPlanoEstab = false;
      _model.updatePage(() {});
      if (FFAppState().varCarregouPrimeiraPagina) {
        await Future.delayed(const Duration(milliseconds: 1000));
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          safeSetState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        } else {
          safeSetState(() => _model.requestCompleter = null);
          await _model.waitForRequestCompleted();
        }
      }
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
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
      'textOnPageLoadAnimation3': AnimationInfo(
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
      'wrapOnPageLoadAnimation': AnimationInfo(
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
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              Theme.of(context).brightness == Brightness.dark
                  ? 'sem foto, usar a cor do container'
                  : FFAppState().VarTblEstabelecimentoLogado.fotoLightMode,
            ).image,
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
            Padding(
              padding: EdgeInsets.all(4.0),
              child: RefreshIndicator(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Text(
                              'Renovar Plano Estabelecimento',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ),
                              FutureBuilder<
                                  List<ViewTblAppPlanosEstabelecimentosRow>>(
                                future: (_model.requestCompleter ??= Completer<
                                        List<
                                            ViewTblAppPlanosEstabelecimentosRow>>()
                                      ..complete(
                                          ViewTblAppPlanosEstabelecimentosTable()
                                              .queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'id_estabelecimento',
                                              FFAppState()
                                                  .VarIDEstabelecimentoLogado,
                                            )
                                            .order('id_plano_estabelecimento'),
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
                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRowList =
                                      snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRowList
                                            .length,
                                        (columnPlanoEstabelecimentoIndex) {
                                      final columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow =
                                          columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRowList[
                                              columnPlanoEstabelecimentoIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Container(
                                              width: 1200.0,
                                              decoration: BoxDecoration(
                                                color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                        .planoAtivo!
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .success
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .cCFundoContainesDados,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    '',
                                                  ).image,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color:
                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                              .planoAtivo!
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .success
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Wrap(
                                                      spacing: 4.0,
                                                      runSpacing: 4.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .planoAtivo!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .success
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .cCFundoContainesDados,
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
                                                                    4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Flexible(
                                                                  child: Text(
                                                                    '${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo! ? 'Plano atual: ' : 'Plano: '}${valueOrDefault<String>(
                                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                          .nomePlanoPeriodos,
                                                                      '...',
                                                                    )} ${valueOrDefault<String>(
                                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                          .nomePlano,
                                                                      '...',
                                                                    )}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                              ? FlutterFlowTheme.of(context).info
                                                                              : FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation1']!),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
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
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .calendar_month,
                                                                    color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Validade: ${dateTimeFormat(
                                                                    "dd/MM/y",
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                        .dataInicial,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )} até ${dateTimeFormat(
                                                                    "dd/MM/y",
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                        .dataFinal,
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
                                                                        color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                            ? FlutterFlowTheme.of(context).info
                                                                            : FlutterFlowTheme.of(context).secondaryText,
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
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              minWidth: 475.0,
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
                                                                            2.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .person_4_outlined,
                                                                      color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .info
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      'Profissionais: ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.quantProfissionaisCad?.toString()}/${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.quantProfissionaisMaxSalvo?.toString()}',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation2']!),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            constraints:
                                                                BoxConstraints(
                                                              minWidth: 475.0,
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
                                                                            2.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .calendar_month,
                                                                      color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .info
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      'Agendamentos: ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.quantAgendamentosCad?.toString()}/${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.quantAgendamentosMaxSalvo?.toString()}',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation3']!),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 4.0)),
                                                    ),
                                                    Wrap(
                                                      spacing: 4.0,
                                                      runSpacing: 4.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
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
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .attach_money_sharp,
                                                                    color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Valor do plano: ${formatNumber(
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                        .valorSemDesconto,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .commaDecimal,
                                                                    currency:
                                                                        'R\$',
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
                                                                        color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                            ? FlutterFlowTheme.of(context).info
                                                                            : FlutterFlowTheme.of(context).secondaryText,
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
                                                                if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
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
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                              ? FlutterFlowTheme.of(context).info
                                                                              : FlutterFlowTheme.of(context).secondaryText,
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
                                                        if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .cupom !=
                                                                null &&
                                                            columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .cupom !=
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
                                                                      color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .info
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Cupom: ${valueOrDefault<String>(
                                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                          .cupom,
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
                                                                          color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                              ? FlutterFlowTheme.of(context).info
                                                                              : FlutterFlowTheme.of(context).secondaryText,
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
                                                        if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .cupom !=
                                                                null &&
                                                            columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .cupom !=
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
                                                                      color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .warning
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.cupomTipo ==
                                                                              'DESCONTO'
                                                                          ? 'Desconto de ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.porcentagemDesconto?.toString()}% aplicado: ${formatNumber(
                                                                              columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.valorComDesconto,
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.commaDecimal,
                                                                              currency: 'R\$',
                                                                            )}'
                                                                          : 'Desconto de ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.porcentagemDesconto?.toString()}% aplicado válido por ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.tempo?.toString()} ${() {
                                                                              if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.cupomTipo == 'MES') {
                                                                                return (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.tempo == 1 ? 'Mês' : 'Meses');
                                                                              } else if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.cupomTipo == 'DIA') {
                                                                                return (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.tempo == 1 ? 'Dia' : 'Dias');
                                                                              } else {
                                                                                return '...';
                                                                              }
                                                                            }()}: ${formatNumber(
                                                                              columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.valorComDesconto,
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.commaDecimal,
                                                                              currency: 'R\$',
                                                                            )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                                ? FlutterFlowTheme.of(context).warning
                                                                                : FlutterFlowTheme.of(context).primary,
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
                                                        if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .nomeFormaPagamento !=
                                                                null &&
                                                            columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .nomeFormaPagamento !=
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
                                                                          .payments_outlined,
                                                                      color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .info
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child: Text(
                                                                      'Forma de pagamento: ${columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.nomeFormaPagamento}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : FlutterFlowTheme.of(context).secondaryText,
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
                                                                      'rowOnPageLoadAnimation2']!),
                                                            ),
                                                          ),
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
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Flexible(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .attach_money_sharp,
                                                                          color:
                                                                              () {
                                                                            if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp != 'Aprovado') ||
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamento != 'PAGO')) {
                                                                              return (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo! ? FlutterFlowTheme.of(context).warning : FlutterFlowTheme.of(context).error);
                                                                            } else if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!) {
                                                                              return FlutterFlowTheme.of(context).info;
                                                                            } else {
                                                                              return FlutterFlowTheme.of(context).success;
                                                                            }
                                                                          }(),
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'Status do pagamento: ${(columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp == 'Aprovado') || (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamento == 'PAGO') ? 'Pago' : columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp} ${() {
                                                                            if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp ==
                                                                                'Aprovado') {
                                                                              return dateTimeFormat(
                                                                                "dd/MM/y H:mm:ss",
                                                                                columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.dateApproved,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              );
                                                                            } else if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusDetail != null &&
                                                                                columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusDetail != '') {
                                                                              return columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusDetail;
                                                                            } else {
                                                                              return '';
                                                                            }
                                                                          }()}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: () {
                                                                                  if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp != 'Aprovado') || (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamento != 'PAGO')) {
                                                                                    return (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo! ? FlutterFlowTheme.of(context).warning : FlutterFlowTheme.of(context).error);
                                                                                  } else if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!) {
                                                                                    return FlutterFlowTheme.of(context).info;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).success;
                                                                                  }
                                                                                }(),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.statusPagamentoMp != 'Aprovado') &&
                                                                    (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                            .statusPagamento !=
                                                                        'PAGO') &&
                                                                    (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                            .planoAtivo ==
                                                                        true))
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        await showDialog(
                                                                          barrierColor:
                                                                              FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: CpEstabelecimentoPlanoPagarWidget(
                                                                                  paramViewTblPlanoEstabelecimento: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        safeSetState(() =>
                                                                            _model.requestCompleter =
                                                                                null);
                                                                        await _model
                                                                            .waitForRequestCompleted();
                                                                      },
                                                                      text:
                                                                          'Pagar',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .monetization_on_outlined,
                                                                        size:
                                                                            15.0,
                                                                      ),
                                                                      options:
                                                                          FFButtonOptions(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                              ),
                                                                              color: Colors.white,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'rowOnPageLoadAnimation3']!),
                                                          ),
                                                        ),
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
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .date_range,
                                                                    color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Text(
                                                                    'Data histórico: ${dateTimeFormat(
                                                                      "dd/MM/y H:mm",
                                                                      columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                          .dataCadastro,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
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
                                                                          color: columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow.planoAtivo!
                                                                              ? FlutterFlowTheme.of(context).info
                                                                              : FlutterFlowTheme.of(context).secondaryText,
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
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'rowOnPageLoadAnimation4']!),
                                                          ),
                                                        ),
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'wrapOnPageLoadAnimation']!),
                                                    Wrap(
                                                      spacing: 8.0,
                                                      runSpacing: 8.0,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.center,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .planoAtivo ==
                                                                true) &&
                                                            ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamentoMp ==
                                                                    'Aprovado') ||
                                                                (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                        .statusPagamento ==
                                                                    'PAGO')))
                                                          Builder(
                                                            builder: (context) =>
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                safeSetState(() =>
                                                                    _model.requestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted();
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            CpEstabelecimentoPlanoRenovarWidget(
                                                                          paramViewTblAppPlanoEstabelecimento:
                                                                              columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow,
                                                                          paramRenovacao:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
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
                                                                width: 200.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
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
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                elevation: 0.0,
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
                                                          ),
                                                        if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .statusPagamentoMp !=
                                                                'Aprovado') &&
                                                            (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .statusPagamento !=
                                                                'PAGO') &&
                                                            (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .planoAtivo ==
                                                                true))
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              safeSetState(() =>
                                                                  _model.requestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted();
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          CpEstabelecimentoPlanoRenovarWidget(
                                                                        paramViewTblAppPlanoEstabelecimento:
                                                                            columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow,
                                                                        paramRenovacao:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));

                                                              safeSetState(() =>
                                                                  _model.requestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted();
                                                            },
                                                            text:
                                                                'Alterar Plano',
                                                            icon: Icon(
                                                              Icons.edit_square,
                                                              size: 24.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 200.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        if ((columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .statusPagamentoMp ==
                                                                'Aprovado') ||
                                                            (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                                    .statusPagamento ==
                                                                'PAGO'))
                                                          Builder(
                                                            builder: (context) =>
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <=
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()) {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              CpNotaFiscalWidget(),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                } else {
                                                                  await showDialog(
                                                                    barrierColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .customFundoShowComponentes,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              CpNotaFiscalWidget(),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              text:
                                                                  'Visualizar NF',
                                                              icon: Icon(
                                                                Icons
                                                                    .description_sharp,
                                                                size: 24.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 200.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                  .planoAtivo! &&
                                              (columnPlanoEstabelecimentoViewTblAppPlanosEstabelecimentosRow
                                                      .idPlanoAnterior !=
                                                  null))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 36.0, 0.0, 0.0),
                                              child: Text(
                                                'Histórico de Planos Anteriores',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 20.0
                                                          : 24.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                        ],
                                      );
                                    }),
                                  );
                                },
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
            ),
          ],
        ),
      ),
    );
  }
}
