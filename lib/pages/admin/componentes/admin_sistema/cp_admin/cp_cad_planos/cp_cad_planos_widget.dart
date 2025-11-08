import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_nomes/cp_cad_planos_nomes_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_periodos/cp_cad_planos_periodos_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_precos/cp_cad_planos_precos_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_cad_planos_model.dart';
export 'cp_cad_planos_model.dart';

class CpCadPlanosWidget extends StatefulWidget {
  const CpCadPlanosWidget({
    super.key,
    bool? paramAdmin,
  }) : this.paramAdmin = paramAdmin ?? false;

  final bool paramAdmin;

  @override
  State<CpCadPlanosWidget> createState() => _CpCadPlanosWidgetState();
}

class _CpCadPlanosWidgetState extends State<CpCadPlanosWidget>
    with TickerProviderStateMixin {
  late CpCadPlanosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCadPlanosModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.queryConsTblAfiliadosApps =
          await TblAfiliadosAppsTable().queryRows(
        queryFn: (q) => q.order('nome', ascending: true),
      );
      _model.varTblAfiliadosApps = _model.queryConsTblAfiliadosApps!
          .toList()
          .cast<TblAfiliadosAppsRow>();
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation4': AnimationInfo(
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

    return Visibility(
      visible: FFAppState().varTblUsuarios.adminSistema == true,
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          constraints: BoxConstraints(
            maxWidth: () {
              if (!widget.paramAdmin) {
                return MediaQuery.sizeOf(context).width;
              } else if (MediaQuery.sizeOf(context).width <
                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                return MediaQuery.sizeOf(context).width;
              } else {
                return (MediaQuery.sizeOf(context).width * 0.8);
              }
            }(),
            maxHeight: () {
              if (!widget.paramAdmin) {
                return MediaQuery.sizeOf(context).height;
              } else if (MediaQuery.sizeOf(context).width <
                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                return MediaQuery.sizeOf(context).height;
              } else {
                return (MediaQuery.sizeOf(context).height * 0.9);
              }
            }(),
          ),
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
              bottomLeft: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width > kBreakpointSmall) &&
                        widget.paramAdmin
                    ? 15.0
                    : 0.0,
                0.0,
              )),
              bottomRight: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width > kBreakpointSmall) &&
                        widget.paramAdmin
                    ? 15.0
                    : 0.0,
                0.0,
              )),
              topLeft: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width > kBreakpointSmall) &&
                        widget.paramAdmin
                    ? 15.0
                    : 0.0,
                0.0,
              )),
              topRight: Radius.circular(valueOrDefault<double>(
                (MediaQuery.sizeOf(context).width > kBreakpointSmall) &&
                        widget.paramAdmin
                    ? 15.0
                    : 0.0,
                0.0,
              )),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (widget.paramAdmin)
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (FFAppState()
                                                .VarAbrirJanelasWebAndroid ==
                                            true) {
                                          context.safePop();
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                        }
                                      },
                                      child: Icon(
                                        Icons.arrow_back_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 28.0,
                                      ),
                                    ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Text(
                                        'Planos',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.varSituacaoCadastro =
                                    !_model.varSituacaoCadastro;
                                safeSetState(() {});
                                safeSetState(
                                    () => _model.requestCompleter3 = null);
                                await _model.waitForRequestCompleted3();
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.varSituacaoCadastro)
                                    Icon(
                                      Icons.check_box_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      size: 24.0,
                                    ),
                                  if (!_model.varSituacaoCadastro)
                                    Icon(
                                      Icons.check_box_outline_blank_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 24.0,
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Ativos',
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
                                            color: _model.varSituacaoCadastro
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : FlutterFlowTheme.of(context)
                                                    .error,
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
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: 5000.0,
                          maxHeight: 2000.0,
                        ),
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Flex(
                            direction: (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium
                                    ? false
                                    : true)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: FutureBuilder<List<TblAfiliadosAppsRow>>(
                                  future: TblAfiliadosAppsTable().queryRows(
                                    queryFn: (q) =>
                                        q.order('nome', ascending: true),
                                  ),
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
                                    List<TblAfiliadosAppsRow>
                                        dropDownAplicativo1TblAfiliadosAppsRowList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<int>(
                                      controller: _model
                                              .dropDownAplicativo1ValueController ??=
                                          FormFieldController<int>(
                                        _model.dropDownAplicativo1Value ??= 0,
                                      ),
                                      options: List<int>.from(
                                          dropDownAplicativo1TblAfiliadosAppsRowList
                                              .map((e) => e.id)
                                              .toList()),
                                      optionLabels:
                                          dropDownAplicativo1TblAfiliadosAppsRowList
                                              .map((e) => e.nome)
                                              .withoutNulls
                                              .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownAplicativo1Value = val);
                                        if (_model.tabBarCurrentIndex == 0) {
                                          safeSetState(() =>
                                              _model.requestCompleter3 = null);
                                          await _model
                                              .waitForRequestCompleted3();
                                        } else if (_model.tabBarCurrentIndex ==
                                            1) {
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          await _model
                                              .waitForRequestCompleted2();
                                        } else if (_model.tabBarCurrentIndex ==
                                            2) {
                                          safeSetState(() =>
                                              _model.requestCompleter1 = null);
                                          await _model
                                              .waitForRequestCompleted1();
                                        }
                                      },
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      textStyle: FlutterFlowTheme.of(context)
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
                                      hintText: 'Selecione o APP',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Aplicativo',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium
                                    ? MediaQuery.sizeOf(context).width
                                    : 180.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.varSituacaoCadastro = true;
                                        safeSetState(() {});
                                        if (_model.tabBarCurrentIndex == 0) {
                                          safeSetState(() =>
                                              _model.requestCompleter3 = null);
                                          await _model
                                              .waitForRequestCompleted3();
                                        } else if (_model.tabBarCurrentIndex ==
                                            1) {
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          await _model
                                              .waitForRequestCompleted2();
                                        } else if (_model.tabBarCurrentIndex ==
                                            2) {
                                          safeSetState(() =>
                                              _model.requestCompleter1 = null);
                                          await _model
                                              .waitForRequestCompleted1();
                                        } else if (_model.tabBarCurrentIndex ==
                                            3) {
                                          safeSetState(() =>
                                              _model.requestCompleter4 = null);
                                          await _model
                                              .waitForRequestCompleted4();
                                        }
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: _model.varSituacaoCadastro
                                              ? Colors.white
                                              : Color(0xFFF1F4F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: _model.varSituacaoCadastro
                                                ? FlutterFlowTheme.of(context)
                                                    .customBordaAtivos
                                                : Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .check_circle_outline_rounded,
                                                color:
                                                    _model.varSituacaoCadastro
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .success
                                                        : Color(0xFF57636C),
                                                size: 16.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Ativos',
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
                                                        color: _model
                                                                .varSituacaoCadastro
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .success
                                                            : Color(0xFF57636C),
                                                        fontSize: 14.0,
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
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.varSituacaoCadastro = false;
                                        safeSetState(() {});
                                        if (_model.tabBarCurrentIndex == 0) {
                                          safeSetState(() =>
                                              _model.requestCompleter3 = null);
                                          await _model
                                              .waitForRequestCompleted3();
                                        } else if (_model.tabBarCurrentIndex ==
                                            1) {
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          await _model
                                              .waitForRequestCompleted2();
                                        } else if (_model.tabBarCurrentIndex ==
                                            2) {
                                          safeSetState(() =>
                                              _model.requestCompleter1 = null);
                                          await _model
                                              .waitForRequestCompleted1();
                                        } else if (_model.tabBarCurrentIndex ==
                                            3) {
                                          safeSetState(() =>
                                              _model.requestCompleter4 = null);
                                          await _model
                                              .waitForRequestCompleted4();
                                        }
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: !_model.varSituacaoCadastro
                                              ? Colors.white
                                              : Color(0xFFF1F4F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: !_model.varSituacaoCadastro
                                                ? FlutterFlowTheme.of(context)
                                                    .customBordaInativos
                                                : Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.block,
                                                color:
                                                    !_model.varSituacaoCadastro
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .error
                                                        : Color(0xFF57636C),
                                                size: 16.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Inativos',
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
                                                        color: !_model.varSituacaoCadastro
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .error
                                                            : Color(0xFF57636C),
                                                        fontSize: 14.0,
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
                                        ),
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'containerOnActionTriggerAnimation']!,
                                    ),
                                  ],
                                ),
                              ),
                            ].divide((MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium
                                    ? false
                                    : true)
                                ? SizedBox(width: 12.0)
                                : SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: false,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      fontSize:
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 12.0
                                              : 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                unselectedLabelStyle: FlutterFlowTheme.of(
                                        context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      fontSize:
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 12.0
                                              : 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                labelColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent1,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                elevation: 0.0,
                                buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                tabs: [
                                  Tab(
                                    text: MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 'Layout 1'
                                        : 'Planos Períodos',
                                    icon: Icon(
                                      Icons.calendar_month,
                                    ),
                                  ),
                                  Tab(
                                    text: MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 'Layout 2'
                                        : 'Planos Nomes',
                                    icon: Icon(
                                      Icons.format_list_bulleted,
                                    ),
                                  ),
                                  Tab(
                                    text: MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? '+ Nomes'
                                        : 'Cadastro de  Nomes',
                                    icon: Icon(
                                      Icons.edit_note,
                                    ),
                                  ),
                                  Tab(
                                    text: MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? '+ Períodos'
                                        : 'Cadastro de Períodos',
                                    icon: Icon(
                                      Icons.edit_calendar,
                                    ),
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [
                                    () async {
                                      safeSetState(() =>
                                          _model.requestCompleter3 = null);
                                      await _model.waitForRequestCompleted3();
                                    },
                                    () async {
                                      safeSetState(() =>
                                          _model.requestCompleter2 = null);
                                      await _model.waitForRequestCompleted2();
                                    },
                                    () async {
                                      safeSetState(() =>
                                          _model.requestCompleter1 = null);
                                      await _model.waitForRequestCompleted1();
                                    },
                                    () async {
                                      safeSetState(() =>
                                          _model.requestCompleter4 = null);
                                      await _model.waitForRequestCompleted4();
                                    }
                                  ][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<
                                              List<TblPlanosPeriodosRow>>(
                                            future: (_model
                                                        .requestCompleter3 ??=
                                                    Completer<
                                                        List<
                                                            TblPlanosPeriodosRow>>()
                                                      ..complete(
                                                          TblPlanosPeriodosTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'situacao',
                                                              _model
                                                                  .varSituacaoCadastro,
                                                            )
                                                            .order('tipo',
                                                                ascending: true)
                                                            .order('tempo',
                                                                ascending:
                                                                    true),
                                                      )))
                                                .future,
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<TblPlanosPeriodosRow>
                                                  columnPlanosLay11TblPlanosPeriodosRowList =
                                                  snapshot.data!;

                                              if (columnPlanosLay11TblPlanosPeriodosRowList
                                                  .isEmpty) {
                                                return CpSemCadastroWidget();
                                              }

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: List.generate(
                                                    columnPlanosLay11TblPlanosPeriodosRowList
                                                        .length,
                                                    (columnPlanosLay11Index) {
                                                  final columnPlanosLay11TblPlanosPeriodosRow =
                                                      columnPlanosLay11TblPlanosPeriodosRowList[
                                                          columnPlanosLay11Index];
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnPlanosLay11TblPlanosPeriodosRow
                                                                      .nome,
                                                                  '...',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .outfit(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          FutureBuilder<
                                                              List<
                                                                  ViewTblAppPlanosRow>>(
                                                            future:
                                                                ViewTblAppPlanosTable()
                                                                    .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'id_plano_periodo',
                                                                    columnPlanosLay11TblPlanosPeriodosRow
                                                                        .id,
                                                                  )
                                                                  .eqOrNull(
                                                                    'situacao',
                                                                    _model
                                                                        .varSituacaoCadastro,
                                                                  )
                                                                  .eqOrNull(
                                                                    'id_afiliado_app',
                                                                    valueOrDefault<
                                                                        int>(
                                                                      _model
                                                                          .dropDownAplicativo1Value,
                                                                      0,
                                                                    ),
                                                                  ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ViewTblAppPlanosRow>
                                                                  columnPlanosPrecosViewTblAppPlanosRowList =
                                                                  snapshot
                                                                      .data!;

                                                              if (columnPlanosPrecosViewTblAppPlanosRowList
                                                                  .isEmpty) {
                                                                return CpSemCadastroWidget();
                                                              }

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    columnPlanosPrecosViewTblAppPlanosRowList
                                                                        .length,
                                                                    (columnPlanosPrecosIndex) {
                                                                  final columnPlanosPrecosViewTblAppPlanosRow =
                                                                      columnPlanosPrecosViewTblAppPlanosRowList[
                                                                          columnPlanosPrecosIndex];
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: columnPlanosPrecosViewTblAppPlanosRow.situacao!
                                                                            ? FlutterFlowTheme.of(context).cCFundoContainesDados
                                                                            : Color(0x19FF5963),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color: columnPlanosPrecosViewTblAppPlanosRow.situacao!
                                                                              ? FlutterFlowTheme.of(context).alternate
                                                                              : FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Builder(
                                                                          builder: (context) =>
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              if (FFAppState().VarAbrirJanelasWebAndroid) {
                                                                                context.pushNamed(
                                                                                  PgCadPlanosPrecosWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'paramCadastro': serializeParam(
                                                                                      false,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'paramTblPlanoPreco': serializeParam(
                                                                                      columnPlanosPrecosViewTblAppPlanosRow,
                                                                                      ParamType.SupabaseRow,
                                                                                    ),
                                                                                    'paramIDAfiliadoApp': serializeParam(
                                                                                      columnPlanosPrecosViewTblAppPlanosRow.idAfiliadoApp,
                                                                                      ParamType.int,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.bottomToTop,
                                                                                      duration: Duration(milliseconds: 500),
                                                                                    ),
                                                                                  },
                                                                                );

                                                                                await showDialog(
                                                                                  barrierColor: Colors.transparent,
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: WebViewAware(
                                                                                        child: CaAguardeWidget(
                                                                                          paramMostrarAnimacao: false,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );

                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                await _model.waitForRequestCompleted3();
                                                                              } else {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  useSafeArea: true,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: CpCadPlanosPrecosWidget(
                                                                                          paramCadastro: false,
                                                                                          paramRowTblAppPlanos: columnPlanosPrecosViewTblAppPlanosRow,
                                                                                          paramIDAfiliadoApp: columnPlanosPrecosViewTblAppPlanosRow.idAfiliadoApp,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));

                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                await _model.waitForRequestCompleted3();
                                                                              }
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  columnPlanosPrecosViewTblAppPlanosRow.nomePlano,
                                                                                                  '...',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.readexPro(
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 8.0)),
                                                                                        ),
                                                                                        if (_model.dropDownAplicativo1Value == 1)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.groups_3_outlined,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMax == 1 ? '1 Profissional' : '${columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMin?.toString()} a ${columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMax?.toString()} Profissionais',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (_model.dropDownAplicativo1Value == 1)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.calendar_month,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Limite de agendamentos:  ${columnPlanosPrecosViewTblAppPlanosRow.quantAgendamentosMax?.toString()}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (columnPlanosPrecosViewTblAppPlanosRow.idCupomPadrao != null)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.sell_outlined,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Cupom: ${columnPlanosPrecosViewTblAppPlanosRow.nomeCupomPadrao} - ${columnPlanosPrecosViewTblAppPlanosRow.descricaoCupom}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.monetization_on,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 18.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Preço assinatura: ${formatNumber(
                                                                                                  columnPlanosPrecosViewTblAppPlanosRow.precoAssinatura,
                                                                                                  formatType: FormatType.decimal,
                                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                                  currency: 'R\$',
                                                                                                )}',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.readexPro(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 8.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      if (columnPlanosPrecosViewTblAppPlanosRow.situacao ?? true)
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          title: Text('Atenção!'),
                                                                                                          content: Text('Deseja INATIVAR o plano ${columnPlanosPrecosViewTblAppPlanosRow.nomePlano}?'),
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
                                                                                                await TblPlanosPrecosTable().update(
                                                                                                  data: {
                                                                                                    'situacao': false,
                                                                                                  },
                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                    'id',
                                                                                                    columnPlanosPrecosViewTblAppPlanosRow.id,
                                                                                                  ),
                                                                                                );
                                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                                await _model.waitForRequestCompleted3();
                                                                                              }
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.lock_outline,
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      if (!columnPlanosPrecosViewTblAppPlanosRow.situacao!)
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          title: Text('Atenção!'),
                                                                                                          content: Text('Deseja ATIVAR o plano ${columnPlanosPrecosViewTblAppPlanosRow.nomePlano}?'),
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
                                                                                                await TblPlanosPrecosTable().update(
                                                                                                  data: {
                                                                                                    'situacao': true,
                                                                                                  },
                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                    'id',
                                                                                                    columnPlanosPrecosViewTblAppPlanosRow.id,
                                                                                                  ),
                                                                                                );
                                                                                                safeSetState(() => _model.requestCompleter3 = null);
                                                                                                await _model.waitForRequestCompleted3();
                                                                                              }
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.lock_open,
                                                                                              color: FlutterFlowTheme.of(context).success,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.edit,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 12.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation1']!),
                                                                  );
                                                                }).divide(
                                                                    SizedBox(
                                                                        height:
                                                                            8.0)),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                    SizedBox(height: 18.0)),
                                              );
                                            },
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<
                                              List<TblPlanosNomesRow>>(
                                            future: (_model
                                                        .requestCompleter2 ??=
                                                    Completer<
                                                        List<
                                                            TblPlanosNomesRow>>()
                                                      ..complete(
                                                          TblPlanosNomesTable()
                                                              .queryRows(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'situacao',
                                                              _model
                                                                  .varSituacaoCadastro,
                                                            )
                                                            .eqOrNull(
                                                              'id_afiliado_app',
                                                              _model
                                                                  .dropDownAplicativo1Value,
                                                            )
                                                            .order('tipo',
                                                                ascending: true)
                                                            .order(
                                                                'qt_profissionais_max',
                                                                ascending:
                                                                    true),
                                                      )))
                                                .future,
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<TblPlanosNomesRow>
                                                  columnPlanosLay22TblPlanosNomesRowList =
                                                  snapshot.data!;

                                              if (columnPlanosLay22TblPlanosNomesRowList
                                                  .isEmpty) {
                                                return CpSemCadastroWidget();
                                              }

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: List.generate(
                                                    columnPlanosLay22TblPlanosNomesRowList
                                                        .length,
                                                    (columnPlanosLay22Index) {
                                                  final columnPlanosLay22TblPlanosNomesRow =
                                                      columnPlanosLay22TblPlanosNomesRowList[
                                                          columnPlanosLay22Index];
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnPlanosLay22TblPlanosNomesRow
                                                                      .nome,
                                                                  '...',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .outfit(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          FutureBuilder<
                                                              List<
                                                                  ViewTblAppPlanosRow>>(
                                                            future:
                                                                ViewTblAppPlanosTable()
                                                                    .queryRows(
                                                              queryFn: (q) => q
                                                                  .eqOrNull(
                                                                    'id_plano_nome',
                                                                    columnPlanosLay22TblPlanosNomesRow
                                                                        .id,
                                                                  )
                                                                  .eqOrNull(
                                                                    'situacao',
                                                                    _model
                                                                        .varSituacaoCadastro,
                                                                  ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ViewTblAppPlanosRow>
                                                                  columnPlanosPrecosViewTblAppPlanosRowList =
                                                                  snapshot
                                                                      .data!;

                                                              if (columnPlanosPrecosViewTblAppPlanosRowList
                                                                  .isEmpty) {
                                                                return CpSemCadastroWidget();
                                                              }

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    columnPlanosPrecosViewTblAppPlanosRowList
                                                                        .length,
                                                                    (columnPlanosPrecosIndex) {
                                                                  final columnPlanosPrecosViewTblAppPlanosRow =
                                                                      columnPlanosPrecosViewTblAppPlanosRowList[
                                                                          columnPlanosPrecosIndex];
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: columnPlanosPrecosViewTblAppPlanosRow.situacao!
                                                                            ? FlutterFlowTheme.of(context).cCFundoContainesDados
                                                                            : Color(0x19FF5963),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color: columnPlanosPrecosViewTblAppPlanosRow.situacao!
                                                                              ? FlutterFlowTheme.of(context).alternate
                                                                              : FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        child:
                                                                            Builder(
                                                                          builder: (context) =>
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              if (FFAppState().VarAbrirJanelasWebAndroid) {
                                                                                context.pushNamed(
                                                                                  PgCadPlanosPrecosWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'paramCadastro': serializeParam(
                                                                                      false,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'paramTblPlanoPreco': serializeParam(
                                                                                      columnPlanosPrecosViewTblAppPlanosRow,
                                                                                      ParamType.SupabaseRow,
                                                                                    ),
                                                                                    'paramIDAfiliadoApp': serializeParam(
                                                                                      columnPlanosPrecosViewTblAppPlanosRow.idAfiliadoApp,
                                                                                      ParamType.int,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.bottomToTop,
                                                                                      duration: Duration(milliseconds: 500),
                                                                                    ),
                                                                                  },
                                                                                );

                                                                                await showDialog(
                                                                                  barrierColor: Colors.transparent,
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: WebViewAware(
                                                                                        child: CaAguardeWidget(
                                                                                          paramMostrarAnimacao: false,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );

                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                await _model.waitForRequestCompleted2();
                                                                              } else {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
                                                                                  useSafeArea: true,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: CpCadPlanosPrecosWidget(
                                                                                          paramCadastro: false,
                                                                                          paramRowTblAppPlanos: columnPlanosPrecosViewTblAppPlanosRow,
                                                                                          paramIDAfiliadoApp: columnPlanosPrecosViewTblAppPlanosRow.idAfiliadoApp,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));

                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                await _model.waitForRequestCompleted2();
                                                                              }
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  columnPlanosPrecosViewTblAppPlanosRow.nomePlanoPeriodos,
                                                                                                  '...',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.readexPro(
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 8.0)),
                                                                                        ),
                                                                                        if (valueOrDefault<int>(
                                                                                              _model.dropDownAplicativo1Value,
                                                                                              0,
                                                                                            ) ==
                                                                                            1)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.groups_3_outlined,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMax == 1 ? '1 Profissional' : '${columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMin?.toString()} a ${columnPlanosPrecosViewTblAppPlanosRow.quantProfissionaisMax?.toString()} Profissionais',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (valueOrDefault<int>(
                                                                                              _model.dropDownAplicativo1Value,
                                                                                              0,
                                                                                            ) ==
                                                                                            1)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.calendar_month,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Limite de agendamentos:  ${columnPlanosPrecosViewTblAppPlanosRow.quantAgendamentosMax?.toString()}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                          tablet: false,
                                                                                          tabletLandscape: false,
                                                                                          desktop: false,
                                                                                        ))
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.monetization_on,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    formatNumber(
                                                                                                      columnPlanosPrecosViewTblAppPlanosRow.preco,
                                                                                                      formatType: FormatType.decimal,
                                                                                                      decimalType: DecimalType.commaDecimal,
                                                                                                      currency: 'R\$',
                                                                                                    ),
                                                                                                    '...',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        if (columnPlanosPrecosViewTblAppPlanosRow.idCupomPadrao != null)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Icon(
                                                                                                Icons.sell_outlined,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Cupom: ${columnPlanosPrecosViewTblAppPlanosRow.nomeCupomPadrao} - ${columnPlanosPrecosViewTblAppPlanosRow.descricaoCupom}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.readexPro(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.monetization_on,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 18.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Preço assinatura: ${valueOrDefault<String>(
                                                                                                  formatNumber(
                                                                                                    columnPlanosPrecosViewTblAppPlanosRow.precoAssinatura,
                                                                                                    formatType: FormatType.decimal,
                                                                                                    decimalType: DecimalType.commaDecimal,
                                                                                                    currency: 'R\$',
                                                                                                  ),
                                                                                                  '...',
                                                                                                )}',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.readexPro(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      if (columnPlanosPrecosViewTblAppPlanosRow.situacao ?? true)
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          title: Text('Atenção!'),
                                                                                                          content: Text('Deseja INATIVAR o plano ${columnPlanosPrecosViewTblAppPlanosRow.nomePlano}?'),
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
                                                                                                await TblPlanosPrecosTable().update(
                                                                                                  data: {
                                                                                                    'situacao': false,
                                                                                                  },
                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                    'id',
                                                                                                    columnPlanosPrecosViewTblAppPlanosRow.id,
                                                                                                  ),
                                                                                                );
                                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                                await _model.waitForRequestCompleted2();
                                                                                              }
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.lock_outline,
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      if (!columnPlanosPrecosViewTblAppPlanosRow.situacao!)
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          title: Text('Atenção!'),
                                                                                                          content: Text('Deseja ATIVAR o plano ${columnPlanosPrecosViewTblAppPlanosRow.nomePlano}?'),
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
                                                                                                await TblPlanosPrecosTable().update(
                                                                                                  data: {
                                                                                                    'situacao': true,
                                                                                                  },
                                                                                                  matchingRows: (rows) => rows.eqOrNull(
                                                                                                    'id',
                                                                                                    columnPlanosPrecosViewTblAppPlanosRow.id,
                                                                                                  ),
                                                                                                );
                                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                                await _model.waitForRequestCompleted2();
                                                                                              }
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.lock_open,
                                                                                              color: FlutterFlowTheme.of(context).success,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                        child: Icon(
                                                                                          Icons.edit,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 12.0)),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation2']!),
                                                                  );
                                                                }).divide(
                                                                    SizedBox(
                                                                        height:
                                                                            8.0)),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                    SizedBox(height: 18.0)),
                                              );
                                            },
                                          ),
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: FutureBuilder<
                                                List<ViewTblAppPlanosNomesRow>>(
                                              future: (_model
                                                          .requestCompleter1 ??=
                                                      Completer<
                                                          List<
                                                              ViewTblAppPlanosNomesRow>>()
                                                        ..complete(
                                                            ViewTblAppPlanosNomesTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eqOrNull(
                                                                'situacao',
                                                                _model
                                                                    .varSituacaoCadastro,
                                                              )
                                                              .eqOrNull(
                                                                'excluido',
                                                                false,
                                                              )
                                                              .eqOrNull(
                                                                'id_afiliado_app',
                                                                _model
                                                                    .dropDownAplicativo1Value,
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
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ViewTblAppPlanosNomesRow>
                                                    columnPlanosNomesViewTblAppPlanosNomesRowList =
                                                    snapshot.data!;

                                                if (columnPlanosNomesViewTblAppPlanosNomesRowList
                                                    .isEmpty) {
                                                  return CpSemCadastroWidget();
                                                }

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnPlanosNomesViewTblAppPlanosNomesRowList
                                                          .length,
                                                      (columnPlanosNomesIndex) {
                                                    final columnPlanosNomesViewTblAppPlanosNomesRow =
                                                        columnPlanosNomesViewTblAppPlanosNomesRowList[
                                                            columnPlanosNomesIndex];
                                                    return Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: columnPlanosNomesViewTblAppPlanosNomesRow
                                                                  .situacao!
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .cCFundoContainesDados
                                                              : Color(
                                                                  0x19FF5963),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: columnPlanosNomesViewTblAppPlanosNomesRow.situacao!
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
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
                                                                onTap:
                                                                    () async {
                                                                  if (FFAppState()
                                                                      .VarAbrirJanelasWebAndroid) {
                                                                    context
                                                                        .pushNamed(
                                                                      PgCadPlanosNomesWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'paramCadastro':
                                                                            serializeParam(
                                                                          false,
                                                                          ParamType
                                                                              .bool,
                                                                        ),
                                                                        'paramTblPlanosNomes':
                                                                            serializeParam(
                                                                          columnPlanosNomesViewTblAppPlanosNomesRow,
                                                                          ParamType
                                                                              .SupabaseRow,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.bottomToTop,
                                                                          duration:
                                                                              Duration(milliseconds: 500),
                                                                        ),
                                                                      },
                                                                    );

                                                                    await showDialog(
                                                                      barrierColor:
                                                                          Colors
                                                                              .transparent,
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
                                                                                CaAguardeWidget(
                                                                              paramMostrarAnimacao: false,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );

                                                                    safeSetState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                  } else {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      useSafeArea:
                                                                          true,
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
                                                                                CpCadPlanosNomesWidget(
                                                                              paramCadastro: false,
                                                                              paramRowTblPlanosNomes: columnPlanosNomesViewTblAppPlanosNomesRow,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));

                                                                    safeSetState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted1();
                                                                  }
                                                                },
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
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.nome,
                                                                                      '...',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.readexPro(
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                            if (valueOrDefault<int>(
                                                                                  _model.dropDownAplicativo1Value,
                                                                                  0,
                                                                                ) ==
                                                                                1)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.groups_3_outlined,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 18.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.qtAgendamentosMax == 1 ? '1 Profissional' : '${columnPlanosNomesViewTblAppPlanosNomesRow.qtProfissionaisMin?.toString()} a ${columnPlanosNomesViewTblAppPlanosNomesRow.qtProfissionaisMax?.toString()} Profissionais',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.readexPro(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            if (valueOrDefault<int>(
                                                                                  _model.dropDownAplicativo1Value,
                                                                                  0,
                                                                                ) ==
                                                                                1)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.calendar_month,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 18.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Limite de agendamentos:  ${columnPlanosNomesViewTblAppPlanosNomesRow.qtAgendamentosMax?.toString()}',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.readexPro(
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        if (columnPlanosNomesViewTblAppPlanosNomesRow.situacao ??
                                                                            true)
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Atenção!'),
                                                                                            content: Text('Deseja INATIVAR o nome ${columnPlanosNomesViewTblAppPlanosNomesRow.nome}? (Todos os planos que usam esse nome serão inativados)'),
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
                                                                                  await TblPlanosNomesTable().update(
                                                                                    data: {
                                                                                      'situacao': false,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                      'id',
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.id,
                                                                                    ),
                                                                                  );
                                                                                  await TblPlanosPrecosTable().update(
                                                                                    data: {
                                                                                      'situacao': false,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                      'id_plano_nome',
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.id,
                                                                                    ),
                                                                                  );
                                                                                  safeSetState(() => _model.requestCompleter1 = null);
                                                                                  await _model.waitForRequestCompleted1();
                                                                                }
                                                                              },
                                                                              child: Icon(
                                                                                Icons.lock_outline,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (!columnPlanosNomesViewTblAppPlanosNomesRow
                                                                            .situacao!)
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return WebViewAware(
                                                                                          child: AlertDialog(
                                                                                            title: Text('Atenção!'),
                                                                                            content: Text('Deseja ATIVAR o nome ${columnPlanosNomesViewTblAppPlanosNomesRow.nome}? (Todos os planos que usam esse nome serão ativados)'),
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
                                                                                  await TblPlanosNomesTable().update(
                                                                                    data: {
                                                                                      'situacao': true,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                      'id',
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.id,
                                                                                    ),
                                                                                  );
                                                                                  await TblPlanosPrecosTable().update(
                                                                                    data: {
                                                                                      'situacao': true,
                                                                                    },
                                                                                    matchingRows: (rows) => rows.eqOrNull(
                                                                                      'id_plano_nome',
                                                                                      columnPlanosNomesViewTblAppPlanosNomesRow.id,
                                                                                    ),
                                                                                  );
                                                                                  safeSetState(() => _model.requestCompleter1 = null);
                                                                                  await _model.waitForRequestCompleted1();
                                                                                }
                                                                              },
                                                                              child: Icon(
                                                                                Icons.lock_open,
                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.edit,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation3']!),
                                                    );
                                                  }).divide(
                                                      SizedBox(height: 8.0)),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: FutureBuilder<
                                        List<TblPlanosPeriodosRow>>(
                                      future: (_model.requestCompleter4 ??=
                                              Completer<
                                                  List<TblPlanosPeriodosRow>>()
                                                ..complete(
                                                    TblPlanosPeriodosTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eqOrNull(
                                                        'situacao',
                                                        _model
                                                            .varSituacaoCadastro,
                                                      )
                                                      .eqOrNull(
                                                        'excluido',
                                                        false,
                                                      )
                                                      .order('periodo_mes_dia',
                                                          ascending: true)
                                                      .order('tempo',
                                                          ascending: true)
                                                      .order('nome',
                                                          ascending: true),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TblPlanosPeriodosRow>
                                            columnPlanosPeriodosTblPlanosPeriodosRowList =
                                            snapshot.data!;

                                        if (columnPlanosPeriodosTblPlanosPeriodosRowList
                                            .isEmpty) {
                                          return CpSemCadastroWidget();
                                        }

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              columnPlanosPeriodosTblPlanosPeriodosRowList
                                                  .length,
                                              (columnPlanosPeriodosIndex) {
                                            final columnPlanosPeriodosTblPlanosPeriodosRow =
                                                columnPlanosPeriodosTblPlanosPeriodosRowList[
                                                    columnPlanosPeriodosIndex];
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: columnPlanosPeriodosTblPlanosPeriodosRow
                                                          .situacao!
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .cCFundoContainesDados
                                                      : Color(0x19FF5963),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color:
                                                        columnPlanosPeriodosTblPlanosPeriodosRow.situacao!
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Builder(
                                                    builder: (context) =>
                                                        InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (FFAppState()
                                                            .VarAbrirJanelasWebAndroid) {
                                                          context.pushNamed(
                                                            PgCadPlanosPeriodosWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paramCadastro':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                              'paramTblPlanosPeriodos':
                                                                  serializeParam(
                                                                columnPlanosPeriodosTblPlanosPeriodosRow,
                                                                ParamType
                                                                    .SupabaseRow,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .bottomToTop,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        500),
                                                              ),
                                                            },
                                                          );

                                                          await showDialog(
                                                            barrierColor: Colors
                                                                .transparent,
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
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
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    WebViewAware(
                                                                  child:
                                                                      CaAguardeWidget(
                                                                    paramMostrarAnimacao:
                                                                        false,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );

                                                          safeSetState(() =>
                                                              _model.requestCompleter4 =
                                                                  null);
                                                          await _model
                                                              .waitForRequestCompleted4();
                                                        } else {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            useSafeArea: true,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      CpCadPlanosPeriodosWidget(
                                                                    paramCadastro:
                                                                        false,
                                                                    paramRowTblPlanoPeriodos:
                                                                        columnPlanosPeriodosTblPlanosPeriodosRow,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          safeSetState(() =>
                                                              _model.requestCompleter4 =
                                                                  null);
                                                          await _model
                                                              .waitForRequestCompleted4();
                                                        }
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            columnPlanosPeriodosTblPlanosPeriodosRow.nome,
                                                                            '...',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .calendar_month,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '${columnPlanosPeriodosTblPlanosPeriodosRow.periodoMesDia == 'M' ? 'Quant. Meses: ' : 'Quant. Dias: '}${columnPlanosPeriodosTblPlanosPeriodosRow.tempo?.toString()}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        4.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                if (columnPlanosPeriodosTblPlanosPeriodosRow
                                                                        .situacao ??
                                                                    true)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Atenção!'),
                                                                                    content: Text('Deseja INATIVAR o período ${columnPlanosPeriodosTblPlanosPeriodosRow.nome}? (Todos os planos que usam esse período serão inativados)'),
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
                                                                          await TblPlanosPeriodosTable()
                                                                              .update(
                                                                            data: {
                                                                              'situacao': false,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              columnPlanosPeriodosTblPlanosPeriodosRow.id,
                                                                            ),
                                                                          );
                                                                          await TblPlanosPrecosTable()
                                                                              .update(
                                                                            data: {
                                                                              'situacao': false,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id_plano_periodo',
                                                                              columnPlanosPeriodosTblPlanosPeriodosRow.id,
                                                                            ),
                                                                          );
                                                                          safeSetState(() =>
                                                                              _model.requestCompleter4 = null);
                                                                          await _model
                                                                              .waitForRequestCompleted4();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .lock_outline,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (!columnPlanosPeriodosTblPlanosPeriodosRow
                                                                    .situacao!)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: Text('Atenção!'),
                                                                                    content: Text('Deseja ATIVAR o período ${columnPlanosPeriodosTblPlanosPeriodosRow.nome}? (Todos os planos que usam esse período serão ativados)'),
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
                                                                          await TblPlanosPeriodosTable()
                                                                              .update(
                                                                            data: {
                                                                              'situacao': true,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              columnPlanosPeriodosTblPlanosPeriodosRow.id,
                                                                            ),
                                                                          );
                                                                          await TblPlanosPrecosTable()
                                                                              .update(
                                                                            data: {
                                                                              'situacao': true,
                                                                            },
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id_plano_periodo',
                                                                              columnPlanosPeriodosTblPlanosPeriodosRow.id,
                                                                            ),
                                                                          );
                                                                          safeSetState(() =>
                                                                              _model.requestCompleter4 = null);
                                                                          await _model
                                                                              .waitForRequestCompleted4();
                                                                        }
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .lock_open,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons.edit,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      12.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation4']!),
                                            );
                                          }).divide(SizedBox(height: 8.0)),
                                        );
                                      },
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
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (FFAppState().VarAbrirJanelasWebAndroid) {
                          if ((_model.tabBarCurrentIndex == 0) ||
                              (_model.tabBarCurrentIndex == 1)) {
                            context.pushNamed(
                              PgCadPlanosPrecosWidget.routeName,
                              queryParameters: {
                                'paramCadastro': serializeParam(
                                  true,
                                  ParamType.bool,
                                ),
                                'paramIDAfiliadoApp': serializeParam(
                                  valueOrDefault<int>(
                                    _model.dropDownAplicativo1Value,
                                    0,
                                  ),
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );

                            await showDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: CaAguardeWidget(
                                      paramMostrarAnimacao: false,
                                    ),
                                  ),
                                );
                              },
                            );

                            safeSetState(() => _model.requestCompleter3 = null);
                            await _model.waitForRequestCompleted3();
                            safeSetState(() => _model.requestCompleter2 = null);
                            await _model.waitForRequestCompleted2();
                          } else if (_model.tabBarCurrentIndex == 2) {
                            context.pushNamed(
                              PgCadPlanosNomesWidget.routeName,
                              queryParameters: {
                                'paramCadastro': serializeParam(
                                  true,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );

                            await showDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: CaAguardeWidget(
                                      paramMostrarAnimacao: false,
                                    ),
                                  ),
                                );
                              },
                            );

                            safeSetState(() => _model.requestCompleter1 = null);
                            await _model.waitForRequestCompleted1();
                          } else if (_model.tabBarCurrentIndex == 3) {
                            context.pushNamed(
                              PgCadPlanosPeriodosWidget.routeName,
                              queryParameters: {
                                'paramCadastro': serializeParam(
                                  true,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );

                            await showDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: WebViewAware(
                                    child: CaAguardeWidget(
                                      paramMostrarAnimacao: false,
                                    ),
                                  ),
                                );
                              },
                            );

                            safeSetState(() => _model.requestCompleter4 = null);
                            await _model.waitForRequestCompleted4();
                          }
                        } else {
                          if ((_model.tabBarCurrentIndex == 0) ||
                              (_model.tabBarCurrentIndex == 1)) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: CpCadPlanosPrecosWidget(
                                      paramCadastro: true,
                                      paramIDAfiliadoApp: valueOrDefault<int>(
                                        _model.dropDownAplicativo1Value,
                                        0,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            safeSetState(() => _model.requestCompleter3 = null);
                            await _model.waitForRequestCompleted3();
                            safeSetState(() => _model.requestCompleter2 = null);
                            await _model.waitForRequestCompleted2();
                          } else if (_model.tabBarCurrentIndex == 2) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: CpCadPlanosNomesWidget(
                                      paramCadastro: true,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            safeSetState(() => _model.requestCompleter1 = null);
                            await _model.waitForRequestCompleted1();
                          } else if (_model.tabBarCurrentIndex == 3) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: CpCadPlanosPeriodosWidget(
                                      paramCadastro: true,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            safeSetState(() => _model.requestCompleter4 = null);
                            await _model.waitForRequestCompleted4();
                          }
                        }
                      },
                      text: 'Novo',
                      icon: Icon(
                        Icons.add,
                        size: 24.0,
                      ),
                      options: FFButtonOptions(
                        height: 50.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 20.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
