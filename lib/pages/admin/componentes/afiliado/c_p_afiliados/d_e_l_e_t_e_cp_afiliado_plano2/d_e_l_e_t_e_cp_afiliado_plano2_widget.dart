import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_nota_fiscal/cp_nota_fiscal_widget.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/d_e_l_e_t_e_cp_afiliado_plano_renovar2/d_e_l_e_t_e_cp_afiliado_plano_renovar2_widget.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/d_e_l_e_t_e_cp_estabelecimento_historico_pg/d_e_l_e_t_e_cp_estabelecimento_historico_pg_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'd_e_l_e_t_e_cp_afiliado_plano2_model.dart';
export 'd_e_l_e_t_e_cp_afiliado_plano2_model.dart';

class DELETECpAfiliadoPlano2Widget extends StatefulWidget {
  const DELETECpAfiliadoPlano2Widget({super.key});

  @override
  State<DELETECpAfiliadoPlano2Widget> createState() =>
      _DELETECpAfiliadoPlano2WidgetState();
}

class _DELETECpAfiliadoPlano2WidgetState
    extends State<DELETECpAfiliadoPlano2Widget> with TickerProviderStateMixin {
  late DELETECpAfiliadoPlano2Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DELETECpAfiliadoPlano2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().varCarregouPrimeiraPagina) {
        await Future.delayed(
          Duration(
            milliseconds: 3000,
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
      await _model.acAtualizarTblLogs(context);

      safeSetState(() {});
    });

    animationsMap.addAll({
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
      'rowOnPageLoadAnimation6': AnimationInfo(
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
      'listViewOnPageLoadAnimation': AnimationInfo(
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
      'rowOnPageLoadAnimation7': AnimationInfo(
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
      'rowOnPageLoadAnimation8': AnimationInfo(
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
      'rowOnPageLoadAnimation9': AnimationInfo(
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
                              'Plano Afiliação',
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 750.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: FutureBuilder<
                                      List<ViewTblAppPlanosAfiliadosRow>>(
                                    future: (_model.requestCompleter ??= Completer<
                                            List<
                                                ViewTblAppPlanosAfiliadosRow>>()
                                          ..complete(
                                              ViewTblAppPlanosAfiliadosTable()
                                                  .queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'id_estabelecimento',
                                              FFAppState()
                                                  .VarIDEstabelecimentoLogado,
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
                                      List<ViewTblAppPlanosAfiliadosRow>
                                          columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRowList =
                                          snapshot.data!;

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRowList
                                                .length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 8.0),
                                        itemBuilder: (context,
                                            columnPlanoEstabelecimentoIndex) {
                                          final columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow =
                                              columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRowList[
                                                  columnPlanoEstabelecimentoIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (columnPlanoEstabelecimentoIndex ==
                                                          1)
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      50.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.varMostrarPlanosAnteriores =
                                                                  !_model
                                                                      .varMostrarPlanosAnteriores;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.update_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 30.0,
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                                                                              child: Text(
                                                                                'Planos anteriores',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 24.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (!_model
                                                                        .varMostrarPlanosAnteriores)
                                                                      Icon(
                                                                        Icons
                                                                            .keyboard_arrow_right_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    if (_model
                                                                        .varMostrarPlanosAnteriores)
                                                                      Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      if ((columnPlanoEstabelecimentoIndex >
                                                                  0) &&
                                                              !_model
                                                                  .varMostrarPlanosAnteriores
                                                          ? false
                                                          : true)
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: () {
                                                              if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                          .trialPeriod ==
                                                                      true) &&
                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                      .planoAtivo!) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1;
                                                              } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
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
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                '',
                                                              ).image,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child:
                                                                      Container(
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.crown,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              'Plano ${valueOrDefault<String>(
                                                                                columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.nomePlano,
                                                                                '...',
                                                                              )}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 24.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        minWidth: MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall
                                                                            ? 500.0
                                                                            : 250.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.transparent,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(2.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.attach_money_sharp,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 16.0,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinatura! ? formatNumber(
                                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.precoAssinatura,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                  currency: 'R\$',
                                                                                ) : formatNumber(
                                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.valorComDesconto,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                  currency: 'R\$',
                                                                                )}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.nomePlanoPeriodos ==
                                                                                'Mensal')
                                                                              Text(
                                                                                '/mês',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupom !=
                                                                            null &&
                                                                        columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupom !=
                                                                            '')
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          minWidth:
                                                                              250.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(2.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.discount_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                'Cupom: ${valueOrDefault<String>(
                                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupom,
                                                                                  '...',
                                                                                )}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupom !=
                                                                            null &&
                                                                        columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupom !=
                                                                            '')
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(2.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.discount_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  () {
                                                                                    if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTipo == 'DESCONTO') {
                                                                                      return 'Desconto de ${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.porcentagemDesconto?.toString()}% aplicado: ${formatNumber(
                                                                                        columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.valorComDesconto,
                                                                                        formatType: FormatType.decimal,
                                                                                        decimalType: DecimalType.commaDecimal,
                                                                                        currency: 'R\$',
                                                                                      )}';
                                                                                    } else if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTipo == 'DIA') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTipo == 'MES')) {
                                                                                      return '${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTempo?.toString()} ${() {
                                                                                        if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTipo == 'MES') {
                                                                                          return (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTempo == 1 ? 'mês' : 'meses');
                                                                                        } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTipo == 'DIA') {
                                                                                          return (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.cupomTempo == 1 ? 'dia' : 'dias');
                                                                                        } else {
                                                                                          return '...';
                                                                                        }
                                                                                      }()} grátis';
                                                                                    } else {
                                                                                      return 'Cupom não identificado';
                                                                                    }
                                                                                  }(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
                                                                        ),
                                                                      ),
                                                                    if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.nomeFormaPagamento !=
                                                                            null &&
                                                                        columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.nomeFormaPagamento !=
                                                                            '')
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(2.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.payments_outlined,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 16.0,
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  'Forma de pagamento: ${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.nomeFormaPagamento}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                                if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .assinaturaInicio !=
                                                                    null)
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      minWidth:
                                                                          250.0,
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.calendar_month,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                'Validade: ${dateTimeFormat(
                                                                                  "dd/MM/y",
                                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaInicio,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                )} até ${dateTimeFormat(
                                                                                  "dd/MM/y",
                                                                                  columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaFinal,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                )}',
                                                                                '...',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                  ),
                                                                if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado! &&
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .planoAtivo! &&
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .assinatura! &&
                                                                    ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento ==
                                                                            'PAGO') ||
                                                                        (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento ==
                                                                            'ALTEROU PLANO')))
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      minWidth:
                                                                          250.0,
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.restore,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              'Renova automaticamente em ${dateTimeFormat(
                                                                                "dd/MM/y HH:mm",
                                                                                columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaFinal,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              )}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                  ),
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
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
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.date_range,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child: SelectionArea(
                                                                              child: Text(
                                                                            'Data cadastro: ${dateTimeFormat(
                                                                              "dd/MM/y H:mm",
                                                                              columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataCadastro,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}${FFAppState().VarEmDesenvolvimento ? '  #${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.idPlanoAfiliado?.toString()}' : ''}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          )),
                                                                        ),
                                                                      ],
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'rowOnPageLoadAnimation3']!),
                                                                  ),
                                                                ),
                                                                if (FFAppState()
                                                                    .VarEmDesenvolvimento)
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
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
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.grid_3x3,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child: SelectionArea(
                                                                                child: Text(
                                                                              'Subscription ID: ${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId}  | Customer ID: ${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeCustomerId}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            )),
                                                                          ),
                                                                        ],
                                                                      ).animateOnPageLoad(
                                                                              animationsMap['rowOnPageLoadAnimation4']!),
                                                                    ),
                                                                  ),
                                                                if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                            .statusPagamento !=
                                                                        'PERIODO TESTE') ||
                                                                    !columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .planoAtivo!)
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color:
                                                                          () {
                                                                        if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                            .planoAtivo!) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .alternate;
                                                                        } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! &&
                                                                            columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                                .assinaturaCancSolicitado!) {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .warning;
                                                                        } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento ==
                                                                            'PERIODO TESTE') {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .primary;
                                                                        } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento !=
                                                                            'PAGO') {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .warning;
                                                                        } else {
                                                                          return Colors
                                                                              .transparent;
                                                                        }
                                                                      }(),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .transparent,
                                                                      ),
                                                                    ),
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
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(4.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.star_outline,
                                                                                    color: () {
                                                                                      if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado! && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade != '')) {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      } else if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo!) {
                                                                                        return FlutterFlowTheme.of(context).secondaryText;
                                                                                      } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') {
                                                                                        return FlutterFlowTheme.of(context).info;
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      }
                                                                                    }(),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Status: ${() {
                                                                                    if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado!) {
                                                                                      return 'CANCELADO';
                                                                                    } else if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado! && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'ALTEROU PLANO')) {
                                                                                      return 'CANCELADO (MUDANÇA DE PLANO)';
                                                                                    } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'ALTEROU PLANO') {
                                                                                      return 'MUDANÇA DE PLANO';
                                                                                    } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') {
                                                                                      return 'PERÍODO DE TESTE';
                                                                                    } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'AG. CARTAO') {
                                                                                      return 'AGUARDANDO CARTÃO';
                                                                                    } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'AG. PAGAMENTO') {
                                                                                      return 'AGUARDANDO PAGAMENTO';
                                                                                    } else {
                                                                                      return columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento;
                                                                                    }
                                                                                  }()}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: () {
                                                                                          if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado! && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade != '')) {
                                                                                            return FlutterFlowTheme.of(context).error;
                                                                                          } else if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo!) {
                                                                                            return FlutterFlowTheme.of(context).secondaryText;
                                                                                          } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') {
                                                                                            return FlutterFlowTheme.of(context).success;
                                                                                          } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') {
                                                                                            return FlutterFlowTheme.of(context).info;
                                                                                          } else {
                                                                                            return FlutterFlowTheme.of(context).error;
                                                                                          }
                                                                                        }(),
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'rowOnPageLoadAnimation5']!),
                                                                  ),
                                                                if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! &&
                                                                    (columnPlanoEstabelecimentoIndex ==
                                                                        0) &&
                                                                    (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                            .trialPeriod ==
                                                                        true) &&
                                                                    !columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .assinaturaCancSolicitado! &&
                                                                    (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                            .trialPeriodDate !=
                                                                        null))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.transparent,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(2.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(4.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Flexible(
                                                                                        child: Column(
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
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                  TextSpan(
                                                                                                    text: dateTimeFormat(
                                                                                                      "dd/MM/y H:mm",
                                                                                                      columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.trialPeriodDate!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: TextStyle(
                                                                                                      color: Color(0xFFFFE100),
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  TextSpan(
                                                                                                    text: '. Depois desse período o valor do plano será cobrado no seu cartão. ',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          font: GoogleFonts.readexPro(
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.bold,
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
                                                                                                        if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') {
                                                                                                          return FlutterFlowTheme.of(context).success;
                                                                                                        } else if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') {
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
                                                                        ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation6']!),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        8.0,
                                                                    runSpacing:
                                                                        8.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      if (((columnPlanoEstabelecimentoIndex == 0) ||
                                                                              columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo!) &&
                                                                          !columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinaturaCancSolicitado!)
                                                                        Wrap(
                                                                          spacing:
                                                                              8.0,
                                                                          runSpacing:
                                                                              8.0,
                                                                          alignment:
                                                                              WrapAlignment.center,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.center,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.center,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: [
                                                                            if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento != 'PAGO') &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.trialPeriod == false) &&
                                                                                (columnPlanoEstabelecimentoIndex == 0) &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinatura == true))
                                                                              Builder(
                                                                                builder: (context) => FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == 'complete') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == null || columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == '')) && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatusPg == 'unpaid') && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl != '')) {
                                                                                      if (isWeb) {
                                                                                        await actions.caWebRedirectToUrl(
                                                                                          columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl!,
                                                                                        );
                                                                                      } else {
                                                                                        await launchURL(columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl!);
                                                                                      }

                                                                                      return;
                                                                                    } else {
                                                                                      await action_blocks.acAtualizarPlanos(
                                                                                        context,
                                                                                        paramIDAfiliadoApp: 3,
                                                                                      );
                                                                                      await showDialog(
                                                                                        barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                        context: context,
                                                                                        builder: (dialogContext) {
                                                                                          return Dialog(
                                                                                            elevation: 0,
                                                                                            insetPadding: EdgeInsets.zero,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                            child: WebViewAware(
                                                                                              child: DELETECpAfiliadoPlanoRenovar2Widget(
                                                                                                paramRenovacao: false,
                                                                                                paramAssinatura: true,
                                                                                                paramDiasTry: '0',
                                                                                                paramDownUp: '',
                                                                                                paramTipo: 'AFI',
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );

                                                                                      safeSetState(() => _model.requestCompleter = null);
                                                                                      await _model.waitForRequestCompleted();
                                                                                    }
                                                                                  },
                                                                                  text: columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! ? 'Pagar plano' : 'Reativar plano',
                                                                                  icon: Icon(
                                                                                    Icons.monetization_on_outlined,
                                                                                    size: 36.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                    height: 50.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          fontSize: 24.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation1']!),
                                                                              ),
                                                                            if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'AG. CARTAO') &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.trialPeriod == true) &&
                                                                                (columnPlanoEstabelecimentoIndex == 0) &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinatura == true))
                                                                              Builder(
                                                                                builder: (context) => FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == 'complete') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == null || columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatus == '')) && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeStatusPg == 'unpaid') && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl != '')) {
                                                                                      if (isWeb) {
                                                                                        await actions.caWebRedirectToUrl(
                                                                                          columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl!,
                                                                                        );
                                                                                      } else {
                                                                                        await launchURL(columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeUrl!);
                                                                                      }

                                                                                      return;
                                                                                    } else {
                                                                                      await action_blocks.acAtualizarPlanos(
                                                                                        context,
                                                                                        paramIDAfiliadoApp: 1,
                                                                                      );
                                                                                      await showDialog(
                                                                                        barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                        context: context,
                                                                                        builder: (dialogContext) {
                                                                                          return Dialog(
                                                                                            elevation: 0,
                                                                                            insetPadding: EdgeInsets.zero,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                            child: WebViewAware(
                                                                                              child: DELETECpAfiliadoPlanoRenovar2Widget(
                                                                                                paramRenovacao: false,
                                                                                                paramAssinatura: true,
                                                                                                paramDiasTry: '0',
                                                                                                paramDownUp: '',
                                                                                                paramTipo: 'AFI',
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );

                                                                                      safeSetState(() => _model.requestCompleter = null);
                                                                                      await _model.waitForRequestCompleted();
                                                                                    }
                                                                                  },
                                                                                  text: 'Inserir Cartão',
                                                                                  icon: Icon(
                                                                                    Icons.add_card_outlined,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                    height: 35.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo == true) &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.assinatura == false))
                                                                              Builder(
                                                                                builder: (context) => FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                    await action_blocks.acAtualizarPlanos(
                                                                                      context,
                                                                                      paramIDAfiliadoApp: 3,
                                                                                    );
                                                                                    await showDialog(
                                                                                      barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: WebViewAware(
                                                                                            child: DELETECpAfiliadoPlanoRenovar2Widget(
                                                                                              paramRenovacao: false,
                                                                                              paramAssinatura: true,
                                                                                              paramDiasTry: '0',
                                                                                              paramDownUp: '',
                                                                                              paramTipo: 'AFI',
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );

                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                  },
                                                                                  text: 'Renovar Plano',
                                                                                  icon: Icon(
                                                                                    Icons.paid,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                    height: 35.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if ((((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.trialPeriod == true)) && (columnPlanoEstabelecimentoIndex == 0)) &&
                                                                                responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ))
                                                                              Builder(
                                                                                builder: (context) => FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'ALTEROU PLANO') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade == 'UP') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.upgradeDowngrade == 'DOWN')) && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento != 'PERIODO TESTE')) {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return WebViewAware(
                                                                                            child: AlertDialog(
                                                                                              title: Text('Atenção!'),
                                                                                              content: Text('Você já fez alteração de plano, aguarde até a renovação para alterar novamente ou entre em contato com o suporte.'),
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
                                                                                      return;
                                                                                    }
                                                                                    var confirmDialogResponse = await showDialog<bool>(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return WebViewAware(
                                                                                              child: AlertDialog(
                                                                                                title: Text('Atenção!'),
                                                                                                content: Text('Deseja alterar o plano? ${'\n\n'}${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE' ? '' : 'ATENÇÃO! O plano só pode ser alterado uma vez por mês'}'),
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
                                                                                    if (!confirmDialogResponse) {
                                                                                      return;
                                                                                    }
                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                    await action_blocks.acAtualizarPlanos(
                                                                                      context,
                                                                                      paramIDAfiliadoApp: 1,
                                                                                    );
                                                                                    await showDialog(
                                                                                      barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: WebViewAware(
                                                                                            child: DELETECpAfiliadoPlanoRenovar2Widget(
                                                                                              paramRenovacao: false,
                                                                                              paramAssinatura: true,
                                                                                              paramDiasTry: '0',
                                                                                              paramDownUp: '',
                                                                                              paramTipo: 'AFI',
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );

                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                  },
                                                                                  text: 'Alterar Plano',
                                                                                  icon: Icon(
                                                                                    Icons.edit_square,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                    height: 35.0,
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            if ((((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.trialPeriod == true)) && (columnPlanoEstabelecimentoIndex == 0)) &&
                                                                                responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ))
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  var _shouldSetState = false;
                                                                                  _model.resultStripePortalUrl2 = await action_blocks.acStripePortalURL(
                                                                                    context,
                                                                                    paramCustomerID: columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeCustomerId,
                                                                                  );
                                                                                  _shouldSetState = true;
                                                                                  if (_model.resultStripePortalUrl2 == 'false') {
                                                                                    if (_shouldSetState) safeSetState(() {});
                                                                                    return;
                                                                                  }
                                                                                  await actions.caWebRedirectToUrl(
                                                                                    '${_model.resultStripePortalUrl2}/subscriptions/${columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId}/update',
                                                                                  );
                                                                                  if (_shouldSetState) safeSetState(() {});
                                                                                },
                                                                                text: 'Alterar Plano',
                                                                                icon: Icon(
                                                                                  Icons.edit_square,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                  height: 35.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'ALTEROU PLANO')) &&
                                                                                ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusAssinatura == 'ATIVA') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PERIODO TESTE') || (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'ALTEROU PLANO')) &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento != 'AG. PAGAMENTO') &&
                                                                                (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento != 'AG. CARTAO'))
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
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
                                                                                    await TblPagamentosStripeCancTable().insert({
                                                                                      'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
                                                                                      'subscription_id': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId,
                                                                                      'charge_id': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.chargeId,
                                                                                      'cancel_at_period_end': true,
                                                                                      'reembolso': false,
                                                                                      'valor_reembolso': ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.precoAssinatura!) / 30) * functions.fcDiferencaDiasEntreDatas(getCurrentTimestamp, columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataFinal!),
                                                                                      'motivo': 'teste',
                                                                                      'concluido': false,
                                                                                      'result': '',
                                                                                      'user_id': currentUserUid,
                                                                                      'dias_restantes': functions.fcDiferencaDiasEntreDatas(getCurrentTimestamp, columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataFinal!),
                                                                                      'id_plano_afiliado': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.idPlanoAfiliado,
                                                                                    });
                                                                                    await Future.delayed(
                                                                                      Duration(
                                                                                        milliseconds: 5000,
                                                                                      ),
                                                                                    );
                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                    await _model.acAtualizarTblLogs(context);

                                                                                    safeSetState(() {});
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Atenção!'),
                                                                                            content: Text('Assinatura cancelada...'),
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
                                                                                text: 'Cancelar Assinatura',
                                                                                icon: Icon(
                                                                                  Icons.cancel_outlined,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                                  height: 35.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusPagamento == 'PAGO') && (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusAssinatura == 'ATIVA')) &&
                                                                                responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                  desktop: false,
                                                                                ))
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
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
                                                                                    await TblPagamentosStripeCancTable().insert({
                                                                                      'id_estabelecimento': FFAppState().VarIDEstabelecimentoLogado,
                                                                                      'subscription_id': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId,
                                                                                      'charge_id': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.chargeId,
                                                                                      'cancel_at_period_end': false,
                                                                                      'reembolso': true,
                                                                                      'valor_reembolso': ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.precoAssinatura!) / 30) * functions.fcDiferencaDiasEntreDatas(getCurrentTimestamp, columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataFinal!),
                                                                                      'motivo': 'Teste reembolso',
                                                                                      'concluido': false,
                                                                                      'result': '',
                                                                                      'user_id': currentUserUid,
                                                                                      'dias_restantes': functions.fcDiferencaDiasEntreDatas(getCurrentTimestamp, columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataFinal!),
                                                                                      'id_plano_afiliado': columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.idPlanoAfiliado,
                                                                                    });
                                                                                    await Future.delayed(
                                                                                      Duration(
                                                                                        milliseconds: 6000,
                                                                                      ),
                                                                                    );
                                                                                    safeSetState(() => _model.requestCompleter = null);
                                                                                    await _model.waitForRequestCompleted();
                                                                                    await _model.acAtualizarTblLogs(context);

                                                                                    safeSetState(() {});
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Atenção!'),
                                                                                            content: Text('Cancelando com sucesso...'),
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
                                                                                text: 'Cancelar Assinatura com Reembolso',
                                                                                icon: Icon(
                                                                                  Icons.cancel_presentation,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 350.0,
                                                                                  height: 35.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.readexPro(
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      if (((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.statusAssinatura != 'PERIODO TESTE') &&
                                                                              (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId != '')) &&
                                                                          responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                        Builder(
                                                                          builder: (context) =>
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              if (MediaQuery.sizeOf(context).width <= FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: DELETECpEstabelecimentoHistoricoPgWidget(
                                                                                          paramSubscriptionID: valueOrDefault<String>(
                                                                                            columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId,
                                                                                            'sem',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              } else {
                                                                                await showDialog(
                                                                                  barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: WebViewAware(
                                                                                        child: DELETECpEstabelecimentoHistoricoPgWidget(
                                                                                          paramSubscriptionID: valueOrDefault<String>(
                                                                                            columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId,
                                                                                            'sem',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            },
                                                                            text:
                                                                                'Histórico Pagamentos',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.history_sharp,
                                                                              size: 24.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 200.0,
                                                                              height: 35.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                    color: Colors.white,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo! &&
                                                                              (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeCustomerId != null && columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeCustomerId != '')) &&
                                                                          responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                            desktop:
                                                                                false,
                                                                          ))
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            var _shouldSetState =
                                                                                false;
                                                                            _model.resultStripePortalUrsl =
                                                                                await action_blocks.acStripePortalURL(
                                                                              context,
                                                                              paramCustomerID: columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeCustomerId,
                                                                            );
                                                                            _shouldSetState =
                                                                                true;
                                                                            if (_model.resultStripePortalUrsl ==
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
                                                                          text:
                                                                              'Gerenciar Assinatura',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.settings_sharp,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width: MediaQuery.sizeOf(context).width < kBreakpointSmall
                                                                                ? MediaQuery.sizeOf(context).width
                                                                                : 200.0,
                                                                            height:
                                                                                35.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .assinaturaCancSolicitado! &&
                                                                    columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                        .planoAtivo!)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          1000.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(16.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            RichText(
                                                                              textScaler: MediaQuery.of(context).textScaler,
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Sua assinatura foi CANCELADA, você ainda poderá usar o sistema até o final do período ',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: dateTimeFormat(
                                                                                      "dd/MM/y",
                                                                                      columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.dataFinal!,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      fontSize: 18.0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                            RichText(
                                                                              textScaler: MediaQuery.of(context).textScaler,
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: 'Caso queira continuar com o plano você pode desfazer o cancelamento.',
                                                                                    style: TextStyle(
                                                                                      color: Color(0xFF41FEE8),
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                var _shouldSetState = false;
                                                                                _model.resultDesfazerCanc = await _model.acDesfazerCancelamento(
                                                                                  context,
                                                                                  paramSubscriptionID: columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                if (!_model.resultDesfazerCanc!) {
                                                                                  if (_shouldSetState) safeSetState(() {});
                                                                                  return;
                                                                                }
                                                                                safeSetState(() => _model.requestCompleter = null);
                                                                                await _model.waitForRequestCompleted();
                                                                                await _model.acAtualizarTblLogs(context);

                                                                                safeSetState(() {});
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return WebViewAware(
                                                                                      child: AlertDialog(
                                                                                        title: Text('Atenção!'),
                                                                                        content: Text('Cancelamento desfeito com sucesso, obrigado por containuar conosco.'),
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
                                                                                if (_shouldSetState) safeSetState(() {});
                                                                              },
                                                                              text: 'Desfazer Cancelamento',
                                                                              icon: Icon(
                                                                                Icons.keyboard_return,
                                                                                size: 24.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 250.0,
                                                                                height: 35.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.readexPro(
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                      color: Colors.white,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation2']!),
                                                                          ].divide(SizedBox(height: 12.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if ((columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow
                                                                            .statusAssinatura !=
                                                                        'PERIODO TESTE') &&
                                                                    responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      phone:
                                                                          false,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final varTblPagStripeLog = _model
                                                                            .varTblPagamentosStripeLogs
                                                                            .where((e) =>
                                                                                e.subscriptionId ==
                                                                                columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.stripeSubscriptionId)
                                                                            .toList();

                                                                        return ListView
                                                                            .separated(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          primary:
                                                                              false,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              varTblPagStripeLog.length,
                                                                          separatorBuilder: (_, __) =>
                                                                              SizedBox(height: 8.0),
                                                                          itemBuilder:
                                                                              (context, varTblPagStripeLogIndex) {
                                                                            final varTblPagStripeLogItem =
                                                                                varTblPagStripeLog[varTblPagStripeLogIndex];
                                                                            return Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (!columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.planoAtivo!) {
                                                                                    return FlutterFlowTheme.of(context).alternate;
                                                                                  } else if (varTblPagStripeLogItem.nomeEvento == 'invoice.paid') {
                                                                                    return FlutterFlowTheme.of(context).accent2;
                                                                                  } else if (varTblPagStripeLogItem.nomeEvento == 'invoice.payment_failed') {
                                                                                    return Color(0x82EE8B60);
                                                                                  } else if (varTblPagStripeLogItem.nomeEvento == 'customer.subscription.deleted') {
                                                                                    return FlutterFlowTheme.of(context).accent3;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).primary;
                                                                                  }
                                                                                }(),
                                                                                image: DecorationImage(
                                                                                  fit: BoxFit.cover,
                                                                                  image: Image.network(
                                                                                    '',
                                                                                  ).image,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                ),
                                                                              ),
                                                                              child: Flex(
                                                                                direction: (MediaQuery.sizeOf(context).width < kBreakpointSmall ? false : true) ? Axis.horizontal : Axis.vertical,
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(4.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          if (varTblPagStripeLogItem.assinaturaInicio != null)
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              constraints: BoxConstraints(
                                                                                                minWidth: 250.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                                border: Border.all(
                                                                                                  color: Colors.transparent,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(2.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                      child: Icon(
                                                                                                        Icons.calendar_month,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Flexible(
                                                                                                      child: Text(
                                                                                                        valueOrDefault<String>(
                                                                                                          'Validade: ${dateTimeFormat(
                                                                                                            "dd/MM/y",
                                                                                                            varTblPagStripeLogItem.assinaturaInicio,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          )} até ${dateTimeFormat(
                                                                                                            "dd/MM/y",
                                                                                                            varTblPagStripeLogItem.assinaturaFinal,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          )}',
                                                                                                          '...',
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.readexPro(
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
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
                                                                                            ),
                                                                                          if (columnPlanoEstabelecimentoViewTblAppPlanosAfiliadosRow.valorComDesconto! > 0.0)
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                border: Border.all(
                                                                                                  color: Colors.transparent,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(2.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                      ),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                            child: Icon(
                                                                                                              Icons.attach_money_sharp,
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              size: 16.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            'Status: ${valueOrDefault<String>(
                                                                                                              () {
                                                                                                                if (varTblPagStripeLogItem.nomeEvento == 'invoice.paid') {
                                                                                                                  return 'Pago';
                                                                                                                } else if (varTblPagStripeLogItem.nomeEvento == 'invoice.payment_failed') {
                                                                                                                  return 'Pagamento Falhou';
                                                                                                                } else if (varTblPagStripeLogItem.nomeEvento == 'customer.subscription.deleted') {
                                                                                                                  return 'Assinatura Cancelada';
                                                                                                                } else {
                                                                                                                  return varTblPagStripeLogItem.nomeEvento;
                                                                                                                }
                                                                                                              }(),
                                                                                                              '...',
                                                                                                            )}',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  font: GoogleFonts.readexPro(
                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                  ),
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                  fontSize: 14.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation7']!),
                                                                                              ),
                                                                                            ),
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                            decoration: BoxDecoration(
                                                                                              borderRadius: BorderRadius.circular(4.0),
                                                                                              border: Border.all(
                                                                                                color: Colors.transparent,
                                                                                              ),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsets.all(2.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                    child: Icon(
                                                                                                      Icons.date_range,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      size: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Text(
                                                                                                      'Data histórico: ${dateTimeFormat(
                                                                                                        "dd/MM/y H:mm",
                                                                                                        varTblPagStripeLogItem.dataCadastro,
                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                      )}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            font: GoogleFonts.readexPro(
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation8']!),
                                                                                            ),
                                                                                          ),
                                                                                          if (FFAppState().VarEmDesenvolvimento)
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                                                border: Border.all(
                                                                                                  color: Colors.transparent,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(2.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                      child: Icon(
                                                                                                        Icons.grid_3x3,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Flexible(
                                                                                                      child: Text(
                                                                                                        'Subscription ID: ${varTblPagStripeLogItem.subscriptionId}',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.readexPro(
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation9']!),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Visibility(
                                                                                    visible: varTblPagStripeLogItem.nomeEvento == 'invoice.paid',
                                                                                    child: Builder(
                                                                                      builder: (context) => Padding(
                                                                                        padding: EdgeInsets.all(8.0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            if (MediaQuery.sizeOf(context).width <= FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return WebViewAware(
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: CpNotaFiscalWidget(),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            } else {
                                                                                              await showDialog(
                                                                                                barrierColor: FlutterFlowTheme.of(context).customFundoShowComponentes,
                                                                                                context: context,
                                                                                                builder: (dialogContext) {
                                                                                                  return Dialog(
                                                                                                    elevation: 0,
                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    child: WebViewAware(
                                                                                                      child: CpNotaFiscalWidget(),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              );
                                                                                            }
                                                                                          },
                                                                                          text: 'Visualizar NF',
                                                                                          icon: Icon(
                                                                                            Icons.description_sharp,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? MediaQuery.sizeOf(context).width : 160.0,
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                            iconColor: FlutterFlowTheme.of(context).success,
                                                                                            color: FlutterFlowTheme.of(context).accent2,
                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                  font: GoogleFonts.readexPro(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                  ),
                                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                                ),
                                                                                            elevation: 0.0,
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['listViewOnPageLoadAnimation']!);
                                                                      },
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
