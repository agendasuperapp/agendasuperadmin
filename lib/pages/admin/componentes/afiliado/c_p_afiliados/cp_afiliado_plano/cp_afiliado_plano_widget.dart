import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_pagamento/cp_afiliado_pagamento_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_nota_fiscal/cp_nota_fiscal_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_afiliado_plano_model.dart';
export 'cp_afiliado_plano_model.dart';

class CpAfiliadoPlanoWidget extends StatefulWidget {
  const CpAfiliadoPlanoWidget({super.key});

  @override
  State<CpAfiliadoPlanoWidget> createState() => _CpAfiliadoPlanoWidgetState();
}

class _CpAfiliadoPlanoWidgetState extends State<CpAfiliadoPlanoWidget>
    with TickerProviderStateMixin {
  late CpAfiliadoPlanoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAfiliadoPlanoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
      FFAppState().varMostrarAvisoPgPlanoEstab = false;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
                              'Renovar Plano',
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
                              FutureBuilder<List<ViewTblAfiliadoPlanoRow>>(
                                future: (_model.requestCompleter ??= Completer<
                                        List<ViewTblAfiliadoPlanoRow>>()
                                      ..complete(
                                          ViewTblAfiliadoPlanoTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'id_afiliado',
                                              FFAppState().varIDAfiliadoLogado,
                                            )
                                            .order('id'),
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
                                  List<ViewTblAfiliadoPlanoRow>
                                      columnPlanoEstabelecimentoViewTblAfiliadoPlanoRowList =
                                      snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnPlanoEstabelecimentoViewTblAfiliadoPlanoRowList
                                            .length,
                                        (columnPlanoEstabelecimentoIndex) {
                                      final columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow =
                                          columnPlanoEstabelecimentoViewTblAfiliadoPlanoRowList[
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
                                                color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                      columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                        if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                .planoAtivo ??
                                                            true)
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.0),
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
                                                                      'PLANO ATUAL',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
                                                                                ? FlutterFlowTheme.of(context).info
                                                                                : FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'textOnPageLoadAnimation']!),
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
                                                                    color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                    columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                        .dataInicial,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )} até ${dateTimeFormat(
                                                                    "dd/MM/y",
                                                                    columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                                        color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                    color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Valor do plano: ${formatNumber(
                                                                    columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                                        color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                Text(
                                                                  '/mês',
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
                                                                        color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                        if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                    .nomeFormaPagamento !=
                                                                null &&
                                                            columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
                                                                      color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                      'Forma de pagamento: ${columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.nomeFormaPagamento}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                      'rowOnPageLoadAnimation1']!),
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
                                                                              valueOrDefault<Color>(
                                                                            () {
                                                                              if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.statusPagamento != 'PAGO') {
                                                                                return valueOrDefault<Color>(
                                                                                  columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo! ? FlutterFlowTheme.of(context).warning : FlutterFlowTheme.of(context).error,
                                                                                  FlutterFlowTheme.of(context).secondaryText,
                                                                                );
                                                                              } else if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!) {
                                                                                return FlutterFlowTheme.of(context).info;
                                                                              } else {
                                                                                return FlutterFlowTheme.of(context).success;
                                                                              }
                                                                            }(),
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          size:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Text(
                                                                          'Status do pagamento: ${columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.statusPagamento}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: valueOrDefault<Color>(
                                                                                  () {
                                                                                    if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.statusPagamento != 'PAGO') {
                                                                                      return valueOrDefault<Color>(
                                                                                        columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo! ? FlutterFlowTheme.of(context).warning : FlutterFlowTheme.of(context).error,
                                                                                        FlutterFlowTheme.of(context).secondaryText,
                                                                                      );
                                                                                    } else if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!) {
                                                                                      return FlutterFlowTheme.of(context).info;
                                                                                    } else {
                                                                                      return FlutterFlowTheme.of(context).success;
                                                                                    }
                                                                                  }(),
                                                                                  FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
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
                                                                if ((columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                            .statusPagamento !=
                                                                        'PAGO') &&
                                                                    (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                            .planoAtivo ==
                                                                        true))
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        if (MediaQuery.sizeOf(context).width >
                                                                            FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
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
                                                                                  child: CpAfiliadoPagamentoWidget(
                                                                                    paramExternalReference: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.externalReference!,
                                                                                    paramRenovacao: false,
                                                                                    paramTblViewTblAfiliadoPlano: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: CpAfiliadoPagamentoWidget(
                                                                                    paramExternalReference: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.externalReference!,
                                                                                    paramRenovacao: false,
                                                                                    paramTblViewTblAfiliadoPlano: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        }

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
                                                                    color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .info
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Text(
                                                                    'Data pagamento: ${dateTimeFormat(
                                                                      "dd/MM/y H:mm",
                                                                      columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                          .dataPagamento,
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
                                                                          color: columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow.planoAtivo!
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
                                                                    'rowOnPageLoadAnimation3']!),
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
                                                        if ((columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                    .planoAtivo ==
                                                                true) &&
                                                            (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                    .statusPagamento ==
                                                                'PAGO'))
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
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()) {
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
                                                                              CpAfiliadoPagamentoWidget(
                                                                            paramExternalReference:
                                                                                random_data.randomString(
                                                                              12,
                                                                              12,
                                                                              true,
                                                                              true,
                                                                              true,
                                                                            ),
                                                                            paramRenovacao:
                                                                                true,
                                                                            paramTblViewTblAfiliadoPlano:
                                                                                columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                } else {
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
                                                                              CpAfiliadoPagamentoWidget(
                                                                            paramExternalReference:
                                                                                random_data.randomString(
                                                                              12,
                                                                              12,
                                                                              true,
                                                                              true,
                                                                              true,
                                                                            ),
                                                                            paramRenovacao:
                                                                                true,
                                                                            paramTblViewTblAfiliadoPlano:
                                                                                columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                }

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
                                                        if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                                .statusPagamento ==
                                                            'PAGO')
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
                                          if (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
                                                  .planoAtivo! &&
                                              (columnPlanoEstabelecimentoViewTblAfiliadoPlanoRow
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
