import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'd_e_l_e_t_e_cp_estabelecimento_plano_renovar2_model.dart';
export 'd_e_l_e_t_e_cp_estabelecimento_plano_renovar2_model.dart';

class DELETECpEstabelecimentoPlanoRenovar2Widget extends StatefulWidget {
  const DELETECpEstabelecimentoPlanoRenovar2Widget({
    super.key,
    required this.paramRenovacao,
    required this.paramAssinatura,
    required this.paramDiasTry,
    required this.paramDownUp,
    this.paramTblAppPlanoEstab,
    required this.paramTipo,
  });

  final bool? paramRenovacao;
  final bool? paramAssinatura;
  final String? paramDiasTry;
  final String? paramDownUp;
  final ViewTblAppPlanosEstabelecimentosRow? paramTblAppPlanoEstab;

  /// Se é ESTAB ou AFIL
  final String? paramTipo;

  @override
  State<DELETECpEstabelecimentoPlanoRenovar2Widget> createState() =>
      _DELETECpEstabelecimentoPlanoRenovar2WidgetState();
}

class _DELETECpEstabelecimentoPlanoRenovar2WidgetState
    extends State<DELETECpEstabelecimentoPlanoRenovar2Widget>
    with TickerProviderStateMixin {
  late DELETECpEstabelecimentoPlanoRenovar2Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => DELETECpEstabelecimentoPlanoRenovar2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarPlanos(
        context,
        paramIDAfiliadoApp: 1,
      );
      _model.queryConsTipoPlaRen = await ViewTblConfiguracoesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'nome',
          'TIPO PLANO RENOVACAO',
        ),
      );
      _model.varAssinatura = () {
        if (_model.queryConsTipoPlaRen?.firstOrNull?.valor == 'ASSINATURA') {
          return true;
        } else if (_model.queryConsTipoPlaRen?.firstOrNull?.valor == 'AVULSO') {
          return false;
        } else if (_model.queryConsTipoPlaRen?.firstOrNull?.valor == 'AMBOS') {
          return widget.paramAssinatura!;
        } else {
          return false;
        }
      }();
      safeSetState(() {});
    });

    _model.textFieldCupomDescTextController ??= TextEditingController();
    _model.textFieldCupomDescFocusNode ??= FocusNode();

    _model.switchAssinaturaValue = widget.paramAssinatura!;
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-12.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'richTextOnPageLoadAnimation1': AnimationInfo(
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
      'textOnPageLoadAnimation4': AnimationInfo(
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
      'buttonOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.04, 1.04),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'richTextOnPageLoadAnimation2': AnimationInfo(
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
              } else if ((MediaQuery.sizeOf(context).width <
                      kBreakpointSmall) ||
                  (MediaQuery.sizeOf(context).width <
                      FFAppState()
                          .varTamanhoMinimoTelaMenuLateral
                          .toDouble())) {
                return 1.0;
              } else {
                return 0.0;
              }
            }(),
            0.0,
          )),
      child: Padding(
        padding: EdgeInsets.all(valueOrDefault<double>(
          MediaQuery.sizeOf(context).width >
                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
              ? 12.0
              : 0.0,
          0.0,
        )),
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.sizeOf(context).width < kBreakpointSmall
                ? MediaQuery.sizeOf(context).height
                : 10.0,
            maxWidth: 1020.0,
            maxHeight: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return MediaQuery.sizeOf(context).height;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 800.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 800.0;
              } else {
                return 800.0;
              }
            }(),
          ),
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
              bottomLeft: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                        (MediaQuery.sizeOf(context).width <
                            FFAppState()
                                .varTamanhoMinimoTelaMenuLateral
                                .toDouble())
                    ? 0.0
                    : 15.0,
                0.0,
              )),
              bottomRight: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width < kBreakpointSmall) ||
                        (MediaQuery.sizeOf(context).width <
                            FFAppState()
                                .varTamanhoMinimoTelaMenuLateral
                                .toDouble())
                    ? 0.0
                    : 15.0,
                0.0,
              )),
              topLeft: Radius.circular(valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 0.0
                    : 15.0,
                0.0,
              )),
              topRight: Radius.circular(valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 0.0
                    : 15.0,
                0.0,
              )),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().VarAbrirJanelasWebAndroid ==
                                    true) {
                                  context.safePop();
                                  Navigator.pop(context);
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              child: Icon(
                                Icons.arrow_back_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 28.0,
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 0.0, 8.0),
                            child: Text(
                              'Pagamento de Plano',
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
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28.0,
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      constraints: BoxConstraints(
                        maxWidth: 1200.0,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            Theme.of(context).brightness == Brightness.dark
                                ? 'assets/images/appbackground-22-homedecor-plant.png'
                                : 'assets/images/appbackground-22-homedecor-plant.jpg',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        'Seu plano atual é o ${functions.fcConverterStringMaiusculo(widget.paramTblAppPlanoEstab!.nomePlano!)}',
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
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation1']!),
                                                    ].divide(
                                                        SizedBox(width: 2.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          widget.paramTblAppPlanoEstab
                                                                      ?.quantProfissionaisMaxSalvo ==
                                                                  1
                                                              ? '1 profissional liberado'
                                                              : '${widget.paramTblAppPlanoEstab?.quantProfissionaisMinSalvo?.toString()} a ${widget.paramTblAppPlanoEstab?.quantProfissionaisMaxSalvo?.toString()} profissionais liberados',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'textOnPageLoadAnimation2']!),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                formatNumber(
                                                                  widget
                                                                      .paramTblAppPlanoEstab!
                                                                      .valor!,
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .commaDecimal,
                                                                  currency:
                                                                      'R\$',
                                                                ),
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
                                                                      fontSize:
                                                                          24.0,
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
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'rowOnPageLoadAnimation1']!),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (!_model.varAssinatura)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Container(
                                            constraints: BoxConstraints(
                                              maxWidth: 960.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Form(
                                              key: _model.formKey,
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Flex(
                                                  direction: (MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          750.0)
                                                      ? Axis.horizontal
                                                      : Axis.vertical,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              750.0
                                                          ? MediaQuery.sizeOf(
                                                                  context)
                                                              .width
                                                          : 300.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textFieldCupomDescTextController,
                                                        focusNode: _model
                                                            .textFieldCupomDescFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.textFieldCupomDescTextController',
                                                          Duration(
                                                              milliseconds: 1),
                                                          () async {
                                                            _model.varCupomDescontoAplicado =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                        onFieldSubmitted:
                                                            (_) async {
                                                          if (_model.formKey
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          await _model
                                                              .caAplicarCupomDesconto(
                                                            context,
                                                            paramMostrarMensagemSucesso:
                                                                true,
                                                          );

                                                          safeSetState(() {});
                                                        },
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .characters,
                                                        textInputAction:
                                                            TextInputAction.go,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelText: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 'Cupom desconto'
                                                              : 'Cupom de desconto',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF1D2428),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          alignLabelWithHint:
                                                              false,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          errorStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Theme.of(context).brightness ==
                                                                            Brightness
                                                                                .dark
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .warning
                                                                        : FlutterFlowTheme.of(context)
                                                                            .error,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFFA8ABAE),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .warning,
                                                          prefixIcon: Icon(
                                                            Icons
                                                                .discount_outlined,
                                                            color: Color(
                                                                0xFF262D34),
                                                            size: 28.0,
                                                          ),
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
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFFF0000),
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
                                                        maxLength: 15,
                                                        buildCounter: (context,
                                                                {required currentLength,
                                                                required isFocused,
                                                                maxLength}) =>
                                                            null,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .textFieldCupomDescTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter
                                                                .withFunction(
                                                                    (oldValue,
                                                                        newValue) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                        TextCapitalization
                                                                            .characters),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: ((_model
                                                                      .varCupomDescontoAplicado ==
                                                                  false) &&
                                                              (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <=
                                                                  750.0)) &&
                                                          responsiveVisibility(
                                                            context: context,
                                                            desktop: false,
                                                          ),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (_model.formKey
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          await _model
                                                              .caAplicarCupomDesconto(
                                                            context,
                                                            paramMostrarMensagemSucesso:
                                                                true,
                                                          );
                                                        },
                                                        text: 'Aplicar Cupom',
                                                        icon: Icon(
                                                          Icons
                                                              .discount_outlined,
                                                          size: 15.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  750.0
                                                              ? MediaQuery.sizeOf(
                                                                      context)
                                                                  .width
                                                              : 300.0,
                                                          height: 40.0,
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
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: ((_model
                                                                      .varCupomDescontoAplicado ==
                                                                  false) &&
                                                              (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >
                                                                  750.0)) &&
                                                          responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ),
                                                      child: Expanded(
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            await _model
                                                                .caAplicarCupomDesconto(
                                                              context,
                                                              paramMostrarMensagemSucesso:
                                                                  true,
                                                            );

                                                            safeSetState(() {});
                                                          },
                                                          text: 'Aplicar Cupom',
                                                          icon: Icon(
                                                            Icons
                                                                .discount_outlined,
                                                            size: 15.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    750.0
                                                                ? MediaQuery.sizeOf(
                                                                        context)
                                                                    .width
                                                                : 300.0,
                                                            height: 40.0,
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
                                                                .primary,
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
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: _model
                                                          .varCupomDescontoAplicado,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          functions.fcConverterStringMaiusculo(FFAppState()
                                                                      .varTblAfiliadoCupom
                                                                      .tipoCupom ==
                                                                  'DESCONTO'
                                                              ? 'Cupom aplicado: ${FFAppState().varTblAfiliadoCupom.percDesconto.toString()}% de desconto'
                                                              : 'Cupom aplicado: ${FFAppState().varTblAfiliadoCupom.tempo.toString()}${() {
                                                                  if (FFAppState()
                                                                          .varTblAfiliadoCupom
                                                                          .tipoCupom ==
                                                                      'MES') {
                                                                    return (FFAppState().varTblAfiliadoCupom.tempo ==
                                                                            1
                                                                        ? ' mês'
                                                                        : ' meses');
                                                                  } else if (FFAppState()
                                                                          .varTblAfiliadoCupom
                                                                          .tipoCupom ==
                                                                      'DIA') {
                                                                    return (FFAppState().varTblAfiliadoCupom.tempo ==
                                                                            1
                                                                        ? ' dia'
                                                                        : ' dias');
                                                                  } else {
                                                                    return '...';
                                                                  }
                                                                }()} grátis'),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18.0,
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
                                                      ),
                                                    ),
                                                  ].divide((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          750.0)
                                                      ? SizedBox(width: 8.0)
                                                      : SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          constraints: BoxConstraints(
                                            maxWidth: 960.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final varPlanosPeriodos2 =
                                                      FFAppState()
                                                          .varTblPlanosPeriodos
                                                          .toList();

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
                                                            kBreakpointSmall) {
                                                          return (FFAppState()
                                                                      .varTblPlanosPeriodos
                                                                      .length <=
                                                                  2
                                                              ? FFAppState()
                                                                  .varTblPlanosPeriodos
                                                                  .length
                                                              : 2);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return (FFAppState()
                                                                      .varTblPlanosPeriodos
                                                                      .length <=
                                                                  3
                                                              ? FFAppState()
                                                                  .varTblPlanosPeriodos
                                                                  .length
                                                              : 3);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return (FFAppState()
                                                                      .varTblPlanosPeriodos
                                                                      .length <=
                                                                  4
                                                              ? FFAppState()
                                                                  .varTblPlanosPeriodos
                                                                  .length
                                                              : 4);
                                                        } else {
                                                          return (FFAppState()
                                                                      .varTblPlanosPeriodos
                                                                      .length <=
                                                                  4
                                                              ? FFAppState()
                                                                  .varTblPlanosPeriodos
                                                                  .length
                                                              : 4);
                                                        }
                                                      }(),
                                                    ),
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    itemCount:
                                                        varPlanosPeriodos2
                                                            .length,
                                                    shrinkWrap: true,
                                                    itemBuilder: (context,
                                                        varPlanosPeriodos2Index) {
                                                      final varPlanosPeriodos2Item =
                                                          varPlanosPeriodos2[
                                                              varPlanosPeriodos2Index];
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.varIDPlanoPeriodoSelecionado =
                                                              varPlanosPeriodos2Item
                                                                  .id;
                                                          safeSetState(() {});
                                                          if (_model
                                                                  .varIDPlanoPeriodoSelecionado ==
                                                              varPlanosPeriodos2Item
                                                                  .id) {
                                                            return;
                                                          }

                                                          await _model
                                                              .caAplicarCupomDesconto(
                                                            context,
                                                            paramMostrarMensagemSucesso:
                                                                false,
                                                          );
                                                        },
                                                        child: Container(
                                                          height: 35.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: _model
                                                                        .varIDPlanoPeriodoSelecionado ==
                                                                    varPlanosPeriodos2Item
                                                                        .id
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .success
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (_model
                                                                      .varIDPlanoPeriodoSelecionado ==
                                                                  varPlanosPeriodos2Item
                                                                      .id)
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              2.0),
                                                                  child: Icon(
                                                                    Icons.check,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              Flexible(
                                                                child: Text(
                                                                  functions.fcConverterStringMaiusculo(
                                                                      varPlanosPeriodos2Item
                                                                          .nome),
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
                                                                            .info,
                                                                        fontSize:
                                                                            16.0,
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
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 960.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final varTblPlanos = FFAppState()
                                                .varTblPlanos
                                                .where((e) =>
                                                    e.idPlanoPeriodo ==
                                                    _model
                                                        .varIDPlanoPeriodoSelecionado)
                                                .toList();

                                            return MasonryGridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 1
                                                        : 2,
                                              ),
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 8.0,
                                              itemCount: varTblPlanos.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (context, varTblPlanosIndex) {
                                                final varTblPlanosItem =
                                                    varTblPlanos[
                                                        varTblPlanosIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Container(
                                                    constraints: BoxConstraints(
                                                      minHeight: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 10.0;
                                                        } else if (_model
                                                                .varCupomDescontoAplicado &&
                                                            (varTblPlanosItem
                                                                    .maxParcSjuros >
                                                                1)) {
                                                          return 150.0;
                                                        } else if (varTblPlanosItem
                                                                .maxParcSjuros >
                                                            1) {
                                                          return 150.0;
                                                        } else if (_model
                                                            .varCupomDescontoAplicado) {
                                                          return 150.0;
                                                        } else {
                                                          return 150.0;
                                                        }
                                                      }(),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: varTblPlanosItem
                                                                  .idPlanoNome ==
                                                              widget
                                                                  .paramTblAppPlanoEstab
                                                                  ?.idPlanoNome
                                                                  .toString()
                                                          ? Color(0xFFA4F4E9)
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          'https://img.freepik.com/fotos-premium/pos-gradiente-azul-pastel-em-po-ar-23-v-52-id-de-trabalho-ed1471e6a82345a5965fa79f13b18d37_941600-64328.jpg?semt=ais_hybrid',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color: varTblPlanosItem
                                                                    .idPlanoNome ==
                                                                widget
                                                                    .paramTblAppPlanoEstab
                                                                    ?.idPlanoNome
                                                                    .toString()
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .success
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Flexible(
                                                                child: RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: functions
                                                                            .fcConverterStringMaiusculo(varTblPlanosItem.nomePlano),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                                              Color(0xFF57636C),
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  maxLines: 1,
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'richTextOnPageLoadAnimation1']!),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 2.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Flexible(
                                                                child: Text(
                                                                  varTblPlanosItem
                                                                              .quantProfissionaisMax ==
                                                                          1
                                                                      ? '1 profissional liberado'
                                                                      : '${varTblPlanosItem.quantProfissionaisMin.toString()} a ${varTblPlanosItem.quantProfissionaisMax.toString()} profissionais liberados',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            16.0,
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
                                                                        'textOnPageLoadAnimation3']!),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Stack(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                children: [
                                                                  if (varTblPlanosItem
                                                                          .preco >
                                                                      0.0)
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          _model.varAssinatura
                                                                              ? formatNumber(
                                                                                  varTblPlanosItem.precoAssinatura,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                  currency: 'R\$',
                                                                                )
                                                                              : formatNumber(
                                                                                  varTblPlanosItem.preco,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                  currency: 'R\$',
                                                                                ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: (FFAppState().varTblAfiliadoCupom.tipoCupom == 'DESCONTO') && _model.varCupomDescontoAplicado && ((FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.length == 0) || (FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.contains(varTblPlanosItem.id) == true)) ? FlutterFlowTheme.of(context).error : Color(0xFF57636C),
                                                                                fontSize: 30.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'rowOnPageLoadAnimation2']!),
                                                                  if ((FFAppState()
                                                                              .varTblAfiliadoCupom
                                                                              .tipoCupom ==
                                                                          'DESCONTO') &&
                                                                      _model
                                                                          .varCupomDescontoAplicado &&
                                                                      ((FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.length ==
                                                                              0) ||
                                                                          (FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.contains(varTblPlanosItem.id) ==
                                                                              true)))
                                                                    Container(
                                                                      width:
                                                                          160.0,
                                                                      height:
                                                                          2.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          if ((varTblPlanosItem
                                                                      .maxParcSjuros >
                                                                  1) &&
                                                              responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Parcele em até ${varTblPlanosItem.maxParcSjuros.toString()}X sem juros no cartão de crédito',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize: MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall
                                                                          ? 12.0
                                                                          : 16.0,
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
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textOnPageLoadAnimation4']!),
                                                            ),
                                                          if ((FFAppState()
                                                                      .varTblAfiliadoCupom
                                                                      .tipoCupom ==
                                                                  'DESCONTO') &&
                                                              _model
                                                                  .varCupomDescontoAplicado &&
                                                              ((FFAppState()
                                                                          .varTblAfiliadoCupom
                                                                          .idPlanosNomesLiberados
                                                                          .length ==
                                                                      0) ||
                                                                  (FFAppState()
                                                                          .varTblAfiliadoCupom
                                                                          .idPlanosNomesLiberados
                                                                          .contains(
                                                                              varTblPlanosItem.id) ==
                                                                      true)))
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'por ',
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
                                                                              Color(0xFF57636C),
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: FFAppState().varTblAfiliadoCupom.tipoCupom ==
                                                                            'DESCONTO'
                                                                        ? formatNumber(
                                                                            functions.fcSubtrairPercentualNumeroDouble(varTblPlanosItem.preco,
                                                                                FFAppState().varTblAfiliadoCupom.percDesconto),
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                            currency:
                                                                                'R\$',
                                                                          )
                                                                        : '',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .success,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          30.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (varTblPlanosItem
                                                                      .idPlanoNome !=
                                                                  widget
                                                                      .paramTblAppPlanoEstab
                                                                      ?.idPlanoNome
                                                                      .toString())
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    var _shouldSetState =
                                                                        false;
                                                                    if (_model.textFieldCupomDescTextController.text !=
                                                                            '') {
                                                                      _model.acResultAplicarCupom =
                                                                          await _model
                                                                              .caAplicarCupomDesconto(
                                                                        context,
                                                                        paramMostrarMensagemSucesso:
                                                                            false,
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      if (!_model
                                                                          .acResultAplicarCupom!) {
                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                    if (_model
                                                                            .varCupomDescontoAplicado &&
                                                                        (FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.length >
                                                                            0) &&
                                                                        (FFAppState().varTblAfiliadoCupom.idPlanosNomesLiberados.contains(varTblPlanosItem.id) ==
                                                                            false)) {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: Text('Atenção!'),
                                                                              content: Text('Cupom não permitido para o  plano ${varTblPlanosItem.nomePlano}, selecione outro plano ou informe outro CUPOM'),
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
                                                                      return;
                                                                    }
                                                                    _model.queryQtProfissionais =
                                                                        await ViewQuantTblProfissionaisTable()
                                                                            .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'id_estabelecimento',
                                                                            FFAppState().VarIDEstabelecimentoLogado,
                                                                          )
                                                                          .eqOrNull(
                                                                            'situacao',
                                                                            true,
                                                                          ),
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model.queryQtProfissionais!.length >
                                                                            0) &&
                                                                        (_model.queryQtProfissionais!.firstOrNull!.quant! >
                                                                            varTblPlanosItem.quantProfissionaisMax)) {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: Text('Atenção!'),
                                                                              content: Text('Você já tem ${_model.queryQtProfissionais?.firstOrNull?.quant?.toString()} profissionais cadastrados no sistema e o plano ${varTblPlanosItem.nomePlano} permite cadastrar ${varTblPlanosItem.quantProfissionaisMax.toString()}${varTblPlanosItem.quantProfissionaisMax == 1 ? ' profissional' : ' profissionais.'}${'\n'}Escolha outro plano ou desative os profissionais excedentes.'),
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
                                                                      return;
                                                                    }
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Atenção!'),
                                                                                    content: Text('Deseja continuar com o plano ${varTblPlanosItem.nomePlano} ${varTblPlanosItem.nomePlanoPeriodos}?'),
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
                                                                      _model.acResultCriarPgPlanoEstabRenov =
                                                                          await action_blocks
                                                                              .acCriarPagamentoPlanoEstab(
                                                                        context,
                                                                        paramidplanopreco: varTblPlanosItem
                                                                            .id
                                                                            .toString(),
                                                                        paramidcupom: _model.varCupomDescontoAplicado &&
                                                                                (FFAppState().varTblAfiliadoCupom.id != null)
                                                                            ? FFAppState().varTblAfiliadoCupom.id.toString()
                                                                            : '0',
                                                                        paramrenovacao:
                                                                            'true',
                                                                        paramcheckout: (_model.varCupomDescontoAplicado && (FFAppState().varTblAfiliadoCupom.percDesconto == 100.0)
                                                                                ? false
                                                                                : true)
                                                                            .toString(),
                                                                        paramAssinatura: _model
                                                                            .varAssinatura
                                                                            .toString(),
                                                                        paramRecriar:
                                                                            'true',
                                                                        paramdiastry:
                                                                            widget.paramDiasTry,
                                                                        paramDownUp: widget.paramTblAppPlanoEstab!.quantProfissionaisMaxSalvo! <
                                                                                varTblPlanosItem.quantProfissionaisMax
                                                                            ? 'UP'
                                                                            : 'DOWN',
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      _model.varURLGerada =
                                                                          false;
                                                                      _model.varContadorTentativasUrl =
                                                                          0;
                                                                      safeSetState(
                                                                          () {});
                                                                      if (_model
                                                                              .varCupomDescontoAplicado &&
                                                                          (FFAppState().varTblAfiliadoCupom.percDesconto ==
                                                                              100.0)) {
                                                                        Navigator.pop(
                                                                            context);
                                                                      } else {
                                                                        await Future
                                                                            .delayed(
                                                                          Duration(
                                                                            milliseconds:
                                                                                1000,
                                                                          ),
                                                                        );
                                                                        while ((_model.varContadorTentativasUrl <=
                                                                                5) &&
                                                                            !_model.varURLGerada) {
                                                                          await Future
                                                                              .delayed(
                                                                            Duration(
                                                                              milliseconds: 1000,
                                                                            ),
                                                                          );
                                                                          _model.resultQueryPlanoRenov =
                                                                              await TblPagamentosStripeAppsTable().queryRows(
                                                                            queryFn: (q) =>
                                                                                q.eqOrNull(
                                                                              'id',
                                                                              functions.fcConverterStringPInteiro(_model.acResultCriarPgPlanoEstabRenov!),
                                                                            ),
                                                                          );
                                                                          _shouldSetState =
                                                                              true;
                                                                          if (_model.resultQueryPlanoRenov?.firstOrNull?.stripeUrl != null &&
                                                                              _model.resultQueryPlanoRenov?.firstOrNull?.stripeUrl != '') {
                                                                            if (isWeb) {
                                                                              await actions.caWebRedirectToUrl(
                                                                                _model.resultQueryPlanoRenov!.firstOrNull!.stripeUrl!,
                                                                              );
                                                                            } else {
                                                                              await launchURL(_model.resultQueryPlanoRenov!.firstOrNull!.stripeUrl!);
                                                                            }

                                                                            _model.varURLGerada =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            Navigator.pop(context);
                                                                            if (_shouldSetState)
                                                                              safeSetState(() {});
                                                                            return;
                                                                          }
                                                                          _model.varContadorTentativasUrl =
                                                                              _model.varContadorTentativasUrl + 1;
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                        if (_model.varContadorTentativasUrl >=
                                                                            5) {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: Text('Atenção!'),
                                                                                  content: Text('Não foi possível gerar o link de pagamento, tente novamente.'),
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
                                                                      }
                                                                    }
                                                                    if (_shouldSetState)
                                                                      safeSetState(
                                                                          () {});
                                                                  },
                                                                  text: '${() {
                                                                    if (widget
                                                                            .paramTblAppPlanoEstab
                                                                            ?.quantProfissionaisMaxSalvo ==
                                                                        varTblPlanosItem
                                                                            .quantProfissionaisMax) {
                                                                      return 'MUDAR P/';
                                                                    } else if (widget
                                                                            .paramTblAppPlanoEstab!
                                                                            .quantProfissionaisMaxSalvo! <
                                                                        varTblPlanosItem
                                                                            .quantProfissionaisMax) {
                                                                      return 'UPGRADE';
                                                                    } else {
                                                                      return 'DOWNGRADE';
                                                                    }
                                                                  }()} PLANO ${functions.fcConverterStringMaiusculo(varTblPlanosItem.nomePlano)}',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
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
                                                                    color: widget.paramTblAppPlanoEstab!.quantProfissionaisMaxSalvo! <=
                                                                            varTblPlanosItem
                                                                                .quantProfissionaisMax
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .success
                                                                        : FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'buttonOnPageLoadAnimation']!),
                                                              if (varTblPlanosItem
                                                                      .idPlanoNome ==
                                                                  widget
                                                                      .paramTblAppPlanoEstab
                                                                      ?.idPlanoNome
                                                                      .toString())
                                                                Container(
                                                                  height: 40.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        offset:
                                                                            Offset(
                                                                          1.0,
                                                                          1.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18.0,
                                                                            0.0,
                                                                            18.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        if (varTblPlanosItem.id ==
                                                                            widget.paramTblAppPlanoEstab?.idPlanoNome)
                                                                          Icon(
                                                                            Icons.check_sharp,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'PLANO ATUAL',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 20.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                        ).animateOnPageLoad(
                                                                            animationsMap['richTextOnPageLoadAnimation2']!),
                                                                      ].divide(SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation3']!),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!),
                                    ],
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
                            ],
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _model.varAssinatura
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).warning,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Switch.adaptive(
                                value: _model.switchAssinaturaValue!,
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.switchAssinaturaValue = newValue);
                                  if (newValue) {
                                    _model.varAssinatura = true;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textFieldCupomDescTextController
                                          ?.clear();
                                    });
                                    _model.varCupomDescontoAplicado = false;
                                    safeSetState(() {});
                                  } else {
                                    _model.varAssinatura = false;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textFieldCupomDescTextController
                                          ?.clear();
                                    });
                                    _model.varCupomDescontoAplicado = false;
                                    safeSetState(() {});
                                  }
                                },
                                activeColor: Colors.white,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).success,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).error,
                                inactiveThumbColor: Color(0xFFD8D9DB),
                              ),
                              Flexible(
                                child: Text(
                                  'Planos com cobrança automática (Recorrente/Assinatura) com desconto',
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
                                        color: _model.varAssinatura
                                            ? FlutterFlowTheme.of(context).info
                                            : FlutterFlowTheme.of(context)
                                                .error,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  if ((MediaQuery.sizeOf(context).width < kBreakpointSmall) &&
                      responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                    Container(
                      width: 100.0,
                      height: 30.0,
                      decoration: BoxDecoration(),
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
