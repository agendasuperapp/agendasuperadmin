import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/e_sistema/calendario/cp_calendario_pers_dias/cp_calendario_pers_dias_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_calendario_personalizado_model.dart';
export 'cp_calendario_personalizado_model.dart';

class CpCalendarioPersonalizadoWidget extends StatefulWidget {
  const CpCalendarioPersonalizadoWidget({
    super.key,
    bool? paramMostrarDiasDisponiveis,
    this.paramIDProfissional,
    bool? paramAtualizarEstabelecimento,
    required this.paramAceitarSelDiaPassado,
    bool? paramIniciarComDtHoje,
    int? paramIDServico,
  })  : this.paramMostrarDiasDisponiveis = paramMostrarDiasDisponiveis ?? true,
        this.paramAtualizarEstabelecimento =
            paramAtualizarEstabelecimento ?? false,
        this.paramIniciarComDtHoje = paramIniciarComDtHoje ?? true,
        this.paramIDServico = paramIDServico ?? 0;

  final bool paramMostrarDiasDisponiveis;
  final int? paramIDProfissional;
  final bool paramAtualizarEstabelecimento;
  final bool? paramAceitarSelDiaPassado;
  final bool paramIniciarComDtHoje;
  final int paramIDServico;

  @override
  State<CpCalendarioPersonalizadoWidget> createState() =>
      _CpCalendarioPersonalizadoWidgetState();
}

class _CpCalendarioPersonalizadoWidgetState
    extends State<CpCalendarioPersonalizadoWidget>
    with TickerProviderStateMixin {
  late CpCalendarioPersonalizadoModel _model;

  var hasColumnTriggered1 = false;
  var hasColumnTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCalendarioPersonalizadoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.paramIniciarComDtHoje == true) {
        FFAppState().VarCalendarioMesSelecionado =
            functions.fcConverterStringPInteiro(dateTimeFormat(
          "M",
          getCurrentTimestamp,
          locale: FFLocalizations.of(context).languageCode,
        ));
        FFAppState().VarCalendarioDiaSelecionado =
            functions.fcConverterStringPInteiro(dateTimeFormat(
          "d",
          getCurrentTimestamp,
          locale: FFLocalizations.of(context).languageCode,
        ));
        FFAppState().VarCalendarioAnoSelecionado =
            functions.fcConverterStringPInteiro(dateTimeFormat(
          "y",
          getCurrentTimestamp,
          locale: FFLocalizations.of(context).languageCode,
        ));
        FFAppState().varCalendarioDataSelecionada = getCurrentTimestamp;
        FFAppState().update(() {});
      }
      _model.varDiaMesAnoSelecionado = '${formatNumber(
        FFAppState().VarCalendarioDiaSelecionado,
        formatType: FormatType.custom,
        format: '00',
        locale: '',
      )}${formatNumber(
        FFAppState().VarCalendarioMesSelecionado,
        formatType: FormatType.custom,
        format: '00',
        locale: '',
      )}${FFAppState().VarCalendarioAnoSelecionado.toString()}';
      safeSetState(() {});
      await _model.carouselController?.animateToPage(
        1,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      _model.varIndexCarouselAtual = 1;
      _model.varIndexCarouselAnterior = 0;
      safeSetState(() {});
      FFAppState().VarCalendarioMesSelecionado =
          functions.fcConverterStringPInteiro(dateTimeFormat(
        "M",
        getCurrentTimestamp,
        locale: FFLocalizations.of(context).languageCode,
      ));
      FFAppState().VarCalendarioAnoSelecionado =
          functions.fcConverterStringPInteiro(dateTimeFormat(
        "y",
        getCurrentTimestamp,
        locale: FFLocalizations.of(context).languageCode,
      ));
      FFAppState().VarCalendarioIndexCarrocelAtual =
          _model.varIndexCarouselAtual;
      FFAppState().varCalendarioDataSelecionada = getCurrentTimestamp;
      FFAppState().VarCalendarioDiaSelecionado =
          functions.fcConverterStringPInteiro(dateTimeFormat(
        "d",
        getCurrentTimestamp,
        locale: FFLocalizations.of(context).languageCode,
      ));
      FFAppState().update(() {});
      await _model.acAtualizarCalendarioSelecionado(context);
      safeSetState(() {});
      if (widget.paramIDProfissional! > 0) {
        await action_blocks.acBlockAtualizarHorasDispProfissional(
          context,
          paramIDProfissionalAtzHrDipspProf: widget.paramIDProfissional,
        );
        safeSetState(() {});
        await action_blocks.acBlockAtualizarDiasDispProfissional(
          context,
          paramIDProfissionalAtzDiasDipspProf: widget.paramIDProfissional,
          paramIDServico: widget.paramIDServico,
        );
      }
      if (widget.paramAtualizarEstabelecimento == true) {
        await action_blocks.acBlockAtualizarDiasDispEstabelecimento(
          context,
          paramIDServicoEst: widget.paramIDServico,
        );
        await action_blocks.acBlockAtualizarHorasDispEstabelecimento(context);
      }
    });

    animationsMap.addAll({
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: Offset(-300.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
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

    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${functions.fcConverterNumPMes(FFAppState().VarCalendarioMesSelecionado)} de ${FFAppState().VarCalendarioAnoSelecionado.toString()}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.readexPro(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await _model.carouselController?.animateToPage(
                              1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            _model.varIndexCarouselAtual = 1;
                            _model.varIndexCarouselAnterior = 0;
                            safeSetState(() {});
                            FFAppState().VarCalendarioMesSelecionado = functions
                                .fcConverterStringPInteiro(dateTimeFormat(
                              "M",
                              getCurrentTimestamp,
                              locale: FFLocalizations.of(context).languageCode,
                            ));
                            FFAppState().VarCalendarioAnoSelecionado = functions
                                .fcConverterStringPInteiro(dateTimeFormat(
                              "y",
                              getCurrentTimestamp,
                              locale: FFLocalizations.of(context).languageCode,
                            ));
                            FFAppState().VarCalendarioIndexCarrocelAtual =
                                _model.varIndexCarouselAtual;
                            FFAppState().varCalendarioDataSelecionada =
                                getCurrentTimestamp;
                            FFAppState().VarCalendarioDiaSelecionado = functions
                                .fcConverterStringPInteiro(dateTimeFormat(
                              "d",
                              getCurrentTimestamp,
                              locale: FFLocalizations.of(context).languageCode,
                            ));
                            FFAppState().update(() {});
                            await _model
                                .acAtualizarCalendarioSelecionado(context);
                            if (widget.paramIDProfissional! > 0) {
                              await action_blocks
                                  .acBlockAtualizarHorasDispProfissional(
                                context,
                                paramIDProfissionalAtzHrDipspProf:
                                    widget.paramIDProfissional,
                              );
                              safeSetState(() {});
                              await action_blocks
                                  .acBlockAtualizarDiasDispProfissional(
                                context,
                                paramIDProfissionalAtzDiasDipspProf:
                                    widget.paramIDProfissional,
                                paramIDServico: widget.paramIDServico,
                              );
                            }
                            if (widget.paramAtualizarEstabelecimento == true) {
                              await action_blocks
                                  .acBlockAtualizarDiasDispEstabelecimento(
                                context,
                                paramIDServicoEst: widget.paramIDServico,
                              );
                              await action_blocks
                                  .acBlockAtualizarHorasDispEstabelecimento(
                                      context);
                            }
                            if (animationsMap[
                                    'columnOnActionTriggerAnimation1'] !=
                                null) {
                              safeSetState(() => hasColumnTriggered1 = true);
                              SchedulerBinding.instance.addPostFrameCallback(
                                  (_) async => await animationsMap[
                                          'columnOnActionTriggerAnimation1']!
                                      .controller
                                      .forward(from: 0.0));
                            }
                          },
                          child: Icon(
                            Icons.calendar_today,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 26.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await _model.carouselController?.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 26.0,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await _model.carouselController?.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 26.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: () {
                if (_model.varContadorSemanas == 6) {
                  return 218.0;
                } else if (_model.varContadorSemanas == 5) {
                  return 185.0;
                } else if (_model.varContadorSemanas == 4) {
                  return 145.0;
                } else {
                  return 218.0;
                }
              }(),
              child: CarouselSlider(
                items: [
                  wrapWithModel(
                    model: _model.cpCalendarioPersDiasModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: CpCalendarioPersDiasWidget(
                      paramMostrarDiasDisponiveis:
                          widget.paramMostrarDiasDisponiveis,
                      paramSeleAntePost: 'anterior',
                      paramMes: FFAppState().VarCalendarioMesSelecionado,
                      paramAno: FFAppState().VarCalendarioAnoSelecionado,
                      paramIndexCarrocel: 0,
                      paramIDProfissional: widget.paramIDProfissional!,
                      paramAtualizarEstabelecimento:
                          widget.paramAtualizarEstabelecimento,
                      paramAceitarSelDiaPassado:
                          widget.paramAceitarSelDiaPassado!,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpCalendarioPersDiasModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: CpCalendarioPersDiasWidget(
                      paramMostrarDiasDisponiveis:
                          widget.paramMostrarDiasDisponiveis,
                      paramSeleAntePost: 'selecionado',
                      paramMes: FFAppState().VarCalendarioMesSelecionado,
                      paramAno: FFAppState().VarCalendarioAnoSelecionado,
                      paramIndexCarrocel: 1,
                      paramIDProfissional: widget.paramIDProfissional!,
                      paramAtualizarEstabelecimento:
                          widget.paramAtualizarEstabelecimento,
                      paramAceitarSelDiaPassado:
                          widget.paramAceitarSelDiaPassado!,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.cpCalendarioPersDiasModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: CpCalendarioPersDiasWidget(
                      paramMostrarDiasDisponiveis:
                          widget.paramMostrarDiasDisponiveis,
                      paramSeleAntePost: 'posterior',
                      paramMes: FFAppState().VarCalendarioMesSelecionado,
                      paramAno: FFAppState().VarCalendarioAnoSelecionado,
                      paramIndexCarrocel: 2,
                      paramIDProfissional: widget.paramIDProfissional!,
                      paramAtualizarEstabelecimento:
                          widget.paramAtualizarEstabelecimento,
                      paramAceitarSelDiaPassado:
                          widget.paramAceitarSelDiaPassado!,
                    ),
                  ),
                ],
                carouselController: _model.carouselController ??=
                    CarouselSliderController(),
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 1.0,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 1.0,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  onPageChanged: (index, _) async {
                    _model.carouselCurrentIndex = index;
                    _model.varIndexCarouselAnterior =
                        _model.varIndexCarouselAtual;
                    safeSetState(() {});
                    _model.varIndexCarouselAtual = _model.carouselCurrentIndex;
                    safeSetState(() {});
                    FFAppState().VarCalendarioIndexCarrocelAtual =
                        _model.varIndexCarouselAtual;
                    safeSetState(() {});
                    if (((_model.varIndexCarouselAtual == 1) &&
                            (_model.varIndexCarouselAnterior == 0)) ||
                        ((_model.varIndexCarouselAtual == 2) &&
                            (_model.varIndexCarouselAnterior == 1)) ||
                        ((_model.varIndexCarouselAtual == 0) &&
                            (_model.varIndexCarouselAnterior == 2))) {
                      await _model.acAvancarCalendario(context);
                    } else {
                      await _model.acVoltarCalendario(context);
                    }
                  },
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Dom.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Seg',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Ter.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Qua.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Qui',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Sex',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Text(
                              'Sáb',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
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
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Builder(
                        builder: (context) {
                          final varTblCalendarioPersonalizadoDados =
                              FFAppState()
                                  .VarTblCalendarioPersonalizadoSelecionado
                                  .toList();

                          return MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 7,
                            ),
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            itemCount:
                                varTblCalendarioPersonalizadoDados.length,
                            shrinkWrap: true,
                            itemBuilder: (context,
                                varTblCalendarioPersonalizadoDadosIndex) {
                              final varTblCalendarioPersonalizadoDadosItem =
                                  varTblCalendarioPersonalizadoDados[
                                      varTblCalendarioPersonalizadoDadosIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().VarCalendarioDiaSelecionado =
                                      functions.fcConverterStringPInteiro(
                                          varTblCalendarioPersonalizadoDadosItem
                                              .dia);
                                  FFAppState().varCalendarioDataSelecionada =
                                      varTblCalendarioPersonalizadoDadosItem
                                          .data;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: () {
                                        if ((widget.paramMostrarDiasDisponiveis ==
                                                false) &&
                                            (varTblCalendarioPersonalizadoDadosItem
                                                    .dia !=
                                                '0')) {
                                          return Color(0x1914181B);
                                        } else if (FFAppState()
                                                .VarCalendarioListaDiasDisponiveis
                                                .contains(
                                                    varTblCalendarioPersonalizadoDadosItem
                                                        .dia) ==
                                            true) {
                                          return FlutterFlowTheme.of(context)
                                              .secondary;
                                        } else {
                                          return (varTblCalendarioPersonalizadoDadosItem
                                                      .dia !=
                                                  '0'
                                              ? Color(0x7FEE8B60)
                                              : Color(0x00000000));
                                        }
                                      }(),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Stack(
                                      children: [
                                        if (varTblCalendarioPersonalizadoDadosItem
                                                .dia !=
                                            '0')
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              varTblCalendarioPersonalizadoDadosItem
                                                  .dia
                                                  .maybeHandleOverflow(
                                                maxChars: 3,
                                              ),
                                              maxLines: 1,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
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
                                                    color: FlutterFlowTheme.of(
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
                                        if ((FFAppState()
                                                    .VarCalendarioListaDiasDisponiveis
                                                    .contains(
                                                        varTblCalendarioPersonalizadoDadosItem
                                                            .dia) ==
                                                false) &&
                                            widget
                                                .paramMostrarDiasDisponiveis &&
                                            (varTblCalendarioPersonalizadoDadosItem
                                                    .dia !=
                                                '0'))
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 20.0,
                                              height: 0.5,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ).animateOnActionTrigger(
                    animationsMap['columnOnActionTriggerAnimation2']!,
                    hasBeenTriggered: hasColumnTriggered2),
              ],
            ).animateOnActionTrigger(
                animationsMap['columnOnActionTriggerAnimation1']!,
                hasBeenTriggered: hasColumnTriggered1),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Text(
              valueOrDefault<String>(
                _model.varContadorSemanas?.toString(),
                '...',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
        ],
      ),
    );
  }
}
