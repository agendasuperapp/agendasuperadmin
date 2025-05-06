import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_menu_lateral_model.dart';
export 'cp_menu_lateral_model.dart';

class CpMenuLateralWidget extends StatefulWidget {
  const CpMenuLateralWidget({
    super.key,
    required this.paramBotaoSelecionado,
    required this.paramGrupoBotao,
    bool? paramElpacamentoTop,
  }) : this.paramElpacamentoTop = paramElpacamentoTop ?? false;

  final String? paramBotaoSelecionado;
  final String? paramGrupoBotao;
  final bool paramElpacamentoTop;

  @override
  State<CpMenuLateralWidget> createState() => _CpMenuLateralWidgetState();
}

class _CpMenuLateralWidgetState extends State<CpMenuLateralWidget> {
  late CpMenuLateralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpMenuLateralModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.paramGrupoBotao != FFAppState().varGrupoBotaoSelecionado) {
        FFAppState().varGrupoBotaoSelecionado = widget.paramGrupoBotao!;
        safeSetState(() {});
      }
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
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width <
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
            ? 225.0
            : 185.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        constraints: BoxConstraints(
          maxWidth: 225.0,
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
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.paramElpacamentoTop)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 32.0,
                            decoration: BoxDecoration(),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 12.0, 0.0, 4.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: widget.paramGrupoBotao == 'DASHBOARD'
                                  ? FlutterFlowTheme.of(context).alternate
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.pop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.auto_graph_sharp,
                                            color: widget.paramGrupoBotao ==
                                                    'DASHBOARD'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Dashboard',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: widget
                                                            .paramGrupoBotao ==
                                                        'DASHBOARD'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: widget.paramBotaoSelecionado ==
                                                'DASHBOARD'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FFAppState().varGrupoBotaoSelecionado ==
                                      'AGENDAMENTOS'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varGrupoBotaoSelecionado !=
                                      'AGENDAMENTOS') {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'AGENDAMENTOS';
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'xxx';
                                    safeSetState(() {});
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.calendar_month_outlined,
                                            color: FFAppState()
                                                        .varGrupoBotaoSelecionado ==
                                                    'AGENDAMENTOS'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Agendamentos',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: FFAppState()
                                                            .varGrupoBotaoSelecionado ==
                                                        'AGENDAMENTOS'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
                                                fontSize: 14.0,
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
                                      ],
                                    ),
                                    if (FFAppState().varGrupoBotaoSelecionado !=
                                        'AGENDAMENTOS')
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .customMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                    if (FFAppState().varGrupoBotaoSelecionado ==
                                        'AGENDAMENTOS')
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().varGrupoBotaoSelecionado ==
                            'AGENDAMENTOS')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .customMenuLateralSelecionado,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'AGENDAMENTOSDIARIOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAgendamentosDiariosWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'AGENDAMENTOSDIARIOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.today_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'AGENDAMENTOSDIARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Agend. Diários',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'AGENDAMENTOSDIARIOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'AGENDAMENTOSCARRINHOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAgendamentosCarrinhosWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'AGENDAMENTOSCARRINHOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'AGENDAMENTOSCARRINHOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Carrinhos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'AGENDAMENTOSCARRINHOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FFAppState().varGrupoBotaoSelecionado ==
                                      'CADASTROS'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varGrupoBotaoSelecionado !=
                                      'CADASTROS') {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'CADASTROS';
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'xxx';
                                    safeSetState(() {});
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.cottage_outlined,
                                            color: FFAppState()
                                                        .varGrupoBotaoSelecionado ==
                                                    'CADASTROS'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Estabelecimento',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: FFAppState()
                                                            .varGrupoBotaoSelecionado ==
                                                        'CADASTROS'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if (FFAppState().varGrupoBotaoSelecionado !=
                                        'CADASTROS')
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .customMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                    if (FFAppState().varGrupoBotaoSelecionado ==
                                        'CADASTROS')
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: FlutterFlowTheme.of(context)
                                            .customTextoMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().varGrupoBotaoSelecionado ==
                            'CADASTROS')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .customMenuLateralSelecionado,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'EMPRESA'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgEstabelecimentoCadWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'EMPRESA')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_business,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Empresa',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'EMPRESA'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'ESTABELECIMENTO_PLANO'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgEstabelecimentoPlanoWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'ESTABELECIMENTO_PLANO')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.attach_money,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'ESTABELECIMENTO_PLANO'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Renovar Plano',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'ESTABELECIMENTO_PLANO'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'SERVICOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaServicosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'SERVICOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_reaction_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Serviços',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'SERVICOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PROFISSIONAIS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProfissionaisWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PROFISSIONAIS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.person_add,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Profissionais',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'PROFISSIONAIS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PRODUTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProdutosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PRODUTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .add_shopping_cart_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'PRODUTOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Produtos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'PRODUTOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'USUARIOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaUsuariosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'USUARIOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.lock_person,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'USUARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Usuários',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'USUARIOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'USUARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FFAppState().varGrupoBotaoSelecionado ==
                                      'AFILIADO'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varGrupoBotaoSelecionado !=
                                      'AFILIADO') {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'AFILIADO';
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().varGrupoBotaoSelecionado =
                                        'xxx';
                                    safeSetState(() {});
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.safety_divider,
                                            color: FFAppState()
                                                        .varGrupoBotaoSelecionado ==
                                                    'AFILIADO'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Afiliado',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: FFAppState()
                                                            .varGrupoBotaoSelecionado ==
                                                        'AFILIADO'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if (FFAppState().varGrupoBotaoSelecionado !=
                                        'AFILIADO')
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .customMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                    if (FFAppState().varGrupoBotaoSelecionado ==
                                        'AFILIADO')
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: FlutterFlowTheme.of(context)
                                            .customTextoMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().varGrupoBotaoSelecionado == 'AFILIADO')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .customMenuLateralSelecionado,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if ((FFAppState().varIDAfiliadoLogado !=
                                          null) &&
                                      (FFAppState().varIDAfiliadoLogado > 0) &&
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao ==
                                          'ATIVA'))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: widget.paramBotaoSelecionado ==
                                                'AFILIADO_DASHBOARD'
                                            ? Color(0x324B39EF)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 2.0, 2.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .varCarregouPrimeiraPagina ==
                                                false) {
                                              context.pop();
                                            } else {
                                              FFAppState()
                                                      .varCarregouPrimeiraPagina =
                                                  false;
                                            }

                                            context.pushNamed(
                                              PgAfiliadoDashboardWidget
                                                  .routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_DASHBOARD')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons.auto_graph,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'AFILIADO_DASHBOARD'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Dashboard',
                                                    style:
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
                                                              color: widget
                                                                          .paramBotaoSelecionado ==
                                                                      'AFILIADO_DASHBOARD'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .customTextoMenuLateralSelecionado
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      FFAppState()
                                                                          .varTamanhoMinimoTelaMenuLateral
                                                                          .toDouble()
                                                                  ? 16.0
                                                                  : 12.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                                ],
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color:
                                                      widget.paramBotaoSelecionado ==
                                                              'EMPRESA'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                  size: 20.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((FFAppState().varIDAfiliadoLogado ==
                                          null) ||
                                      (FFAppState().varIDAfiliadoLogado == 0) ||
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao ==
                                          'ATIVACAO'))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: widget.paramBotaoSelecionado ==
                                                'AFILIADO_APRESENTACAO'
                                            ? Color(0x324B39EF)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 4.0, 2.0, 4.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .varCarregouPrimeiraPagina ==
                                                false) {
                                              context.pop();
                                            } else {
                                              FFAppState()
                                                      .varCarregouPrimeiraPagina =
                                                  false;
                                            }

                                            context.pushNamed(
                                              PgAfiliadoApresentacaoWidget
                                                  .routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (widget
                                                      .paramBotaoSelecionado ==
                                                  'AFILIADO_APRESENTACAO')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Container(
                                                    width: 3.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .customTextoMenuLateralSelecionado,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                  ),
                                                ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons.star_purple500,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'AFILIADO_APRESENTACAO'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Apresentação',
                                                    style:
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
                                                              color: widget
                                                                          .paramBotaoSelecionado ==
                                                                      'AFILIADO_APRESENTACAO'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .customTextoMenuLateralSelecionado
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      FFAppState()
                                                                          .varTamanhoMinimoTelaMenuLateral
                                                                          .toDouble()
                                                                  ? 16.0
                                                                  : 12.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                                ],
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color:
                                                      widget.paramBotaoSelecionado ==
                                                              'EMPRESA'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                  size: 20.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((FFAppState().varIDAfiliadoLogado !=
                                          null) &&
                                      (FFAppState().varIDAfiliadoLogado > 0) &&
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao !=
                                          'ATIVACAO'))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: widget.paramBotaoSelecionado ==
                                                'AFILIADO_CAD'
                                            ? Color(0x324B39EF)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 2.0, 2.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .varCarregouPrimeiraPagina ==
                                                false) {
                                              context.pop();
                                            } else {
                                              FFAppState()
                                                      .varCarregouPrimeiraPagina =
                                                  false;
                                            }

                                            context.pushNamed(
                                              PgAfiliadosCadWidget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (widget
                                                      .paramBotaoSelecionado ==
                                                  'AFILIADO_CAD')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Container(
                                                    width: 3.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .customTextoMenuLateralSelecionado,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                  ),
                                                ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons.person_3_outlined,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'AFILIADO_CAD'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cadastro',
                                                    style:
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
                                                              color: widget
                                                                          .paramBotaoSelecionado ==
                                                                      'AFILIADO_CAD'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .customTextoMenuLateralSelecionado
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      FFAppState()
                                                                          .varTamanhoMinimoTelaMenuLateral
                                                                          .toDouble()
                                                                  ? 16.0
                                                                  : 12.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                                ],
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color:
                                                      widget.paramBotaoSelecionado ==
                                                              'EMPRESA'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                  size: 20.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((FFAppState().varIDAfiliadoLogado !=
                                          null) &&
                                      (FFAppState().varIDAfiliadoLogado > 0) &&
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao ==
                                          'ATIVACAO'))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: widget.paramBotaoSelecionado ==
                                                'AFILIADO_PG_PLANO'
                                            ? Color(0x324B39EF)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 2.0, 2.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .varCarregouPrimeiraPagina ==
                                                false) {
                                              context.pop();
                                            } else {
                                              FFAppState()
                                                      .varCarregouPrimeiraPagina =
                                                  false;
                                            }

                                            context.pushNamed(
                                              PgAfiliadoAtivacaoWidget
                                                  .routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (widget
                                                      .paramBotaoSelecionado ==
                                                  'AFILIADO_PG_PLANO')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Container(
                                                    width: 3.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .customTextoMenuLateralSelecionado,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                  ),
                                                ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .check_circle_outlined,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'AFILIADO_PG_PLANO'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Ativção da Afiliação',
                                                    style:
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
                                                              color: widget
                                                                          .paramBotaoSelecionado ==
                                                                      'AFILIADO_PG_PLANO'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .customTextoMenuLateralSelecionado
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      FFAppState()
                                                                          .varTamanhoMinimoTelaMenuLateral
                                                                          .toDouble()
                                                                  ? 16.0
                                                                  : 12.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                                ],
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color:
                                                      widget.paramBotaoSelecionado ==
                                                              'EMPRESA'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                  size: 20.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((FFAppState().varIDAfiliadoLogado !=
                                          null) &&
                                      (FFAppState().varIDAfiliadoLogado > 0) &&
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao ==
                                          'TREINAMENTO'))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: widget.paramBotaoSelecionado ==
                                                'AFILIADO_TREINAMENTO'
                                            ? Color(0x324B39EF)
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 2.0, 2.0, 2.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .varCarregouPrimeiraPagina ==
                                                false) {
                                              context.pop();
                                            } else {
                                              FFAppState()
                                                      .varCarregouPrimeiraPagina =
                                                  false;
                                            }

                                            context.pushNamed(
                                              PgAfiliadoTreinamentoWidget
                                                  .routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (widget
                                                      .paramBotaoSelecionado ==
                                                  'AFILIADO_TREINAMENTO')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Container(
                                                    width: 3.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .customTextoMenuLateralSelecionado,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                    ),
                                                  ),
                                                ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons.model_training,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'AFILIADO_TREINAMENTO'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Treinamento',
                                                    style:
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
                                                              color: widget
                                                                          .paramBotaoSelecionado ==
                                                                      'AFILIADO_TREINAMENTO'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .customTextoMenuLateralSelecionado
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              fontSize: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      FFAppState()
                                                                          .varTamanhoMinimoTelaMenuLateral
                                                                          .toDouble()
                                                                  ? 16.0
                                                                  : 12.0,
                                                              letterSpacing:
                                                                  0.0,
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
                                                ],
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  color:
                                                      widget.paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                  size: 20.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((FFAppState().varIDAfiliadoLogado !=
                                          null) &&
                                      (FFAppState().varIDAfiliadoLogado > 0) &&
                                      (FFAppState()
                                              .varTblAfiliado
                                              .statusAfiliacao ==
                                          'ATIVA'))
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_INDICACOES'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoIndicacoesWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_INDICACOES')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Flexible(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
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
                                                                .reduce_capacity,
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'AFILIADO_INDICACOES'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            'Indicações',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_INDICACOES'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                      ],
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_SUB'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoSubAfiliadosWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_SUB')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .supervised_user_circle_outlined,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_SUB'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Sub Afiliados',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_SUB'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_COMISSOES'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoComissoesWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_COMISSOES')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .monetization_on_outlined,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_COMISSOES'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Comissões Diárias',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_COMISSOES'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PROFISSIONAIS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: widget
                                                        .paramBotaoSelecionado ==
                                                    'AFILIADO_COMISSOES_MENSAIS'
                                                ? Color(0x324B39EF)
                                                : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoComissoesMensaisWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_COMISSOES_MENSAIS')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                          Icons.calendar_month,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_COMISSOES_MENSAIS'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Comissões Mensais',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_COMISSOES_MENSAIS'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PROFISSIONAIS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_ATIVIDADES'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoAtividadesWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_ATIVIDADES')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .article_outlined,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_ATIVIDADES'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Atividades',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_ATIVIDADES'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PROFISSIONAIS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_CUPONS'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoCuponsWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_CUPONS')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .local_offer_outlined,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_CUPONS'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Cupons e Links',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_CUPONS'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_SAQUES'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoSaquesWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_SAQUES')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                          Icons.save_alt,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_SAQUES'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Saques',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_SAQUES'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PROFISSIONAIS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_PLANO'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoPlanoWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_PLANO')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .attach_money_sharp,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_PLANO'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Renovar Plano',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_PLANO'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color:
                                                widget.paramBotaoSelecionado ==
                                                        'AFILIADO_GOOGLE'
                                                    ? Color(0x324B39EF)
                                                    : Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 2.0, 2.0, 8.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                        .varCarregouPrimeiraPagina ==
                                                    false) {
                                                  context.pop();
                                                } else {
                                                  FFAppState()
                                                          .varCarregouPrimeiraPagina =
                                                      false;
                                                }

                                                context.pushNamed(
                                                  PgAfiliadoGoogleMapsWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  if (widget
                                                          .paramBotaoSelecionado ==
                                                      'AFILIADO_GOOGLE')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 3.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customTextoMenuLateralSelecionado,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                      ),
                                                    ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                              .location_on_outlined,
                                                          color: widget
                                                                      .paramBotaoSelecionado ==
                                                                  'AFILIADO_GOOGLE'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .customTextoMenuLateralSelecionado
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Empresas Google',
                                                        style:
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
                                                                  color: widget
                                                                              .paramBotaoSelecionado ==
                                                                          'AFILIADO_GOOGLE'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .customTextoMenuLateralSelecionado
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          FFAppState()
                                                                              .varTamanhoMinimoTelaMenuLateral
                                                                              .toDouble()
                                                                      ? 16.0
                                                                      : 12.0,
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
                                                    ],
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'SERVICOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                ],
                                              ),
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 4.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: widget.paramGrupoBotao == 'FIDELIDADE'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.pop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  context.pushNamed(
                                    PgFidelidadeWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: widget.paramGrupoBotao ==
                                                    'FIDELIDADE'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Fidelidade',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: widget
                                                            .paramGrupoBotao ==
                                                        'FIDELIDADE'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: widget.paramBotaoSelecionado ==
                                                'AGENDAMENTOS'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 4.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: widget.paramGrupoBotao == 'CONFIG'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.pop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  context.pushNamed(
                                    PgConfiguracoesWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.settings_outlined,
                                            color: widget.paramGrupoBotao ==
                                                    'CONFIG'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Configurações',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: widget
                                                            .paramGrupoBotao ==
                                                        'CONFIG'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: widget.paramBotaoSelecionado ==
                                                'CONFIG'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FFAppState().varGrupoBotaoSelecionado ==
                                      'ASSISTENTE_CAD'
                                  ? FlutterFlowTheme.of(context)
                                      .customMenuLateralSelecionado
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 2.0, 4.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().varCarregouPrimeiraPagina ==
                                      false) {
                                    context.pop();
                                  } else {
                                    FFAppState().varCarregouPrimeiraPagina =
                                        false;
                                  }

                                  context.pushNamed(
                                    PgHomeAssistenteCadWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.help_outline,
                                            color: FFAppState()
                                                        .varGrupoBotaoSelecionado ==
                                                    'ASSISTENTE_CAD'
                                                ? FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateralSelecionado
                                                : FlutterFlowTheme.of(context)
                                                    .customTextoMenuLateral,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Assistente',
                                          style: FlutterFlowTheme.of(context)
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
                                                color: FFAppState()
                                                            .varGrupoBotaoSelecionado ==
                                                        'ASSISTENTE_CAD'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateral,
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
                                      ],
                                    ),
                                    if ((FFAppState()
                                                .varGrupoBotaoSelecionado !=
                                            'CADASTROS') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                      Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .customMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                    if ((FFAppState()
                                                .varGrupoBotaoSelecionado ==
                                            'CADASTROS') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: FlutterFlowTheme.of(context)
                                            .customTextoMenuLateralSelecionado,
                                        size: 20.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().varGrupoBotaoSelecionado ==
                            'ASSISTENTE_CADX')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .customMenuLateralSelecionado,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'EMPRESA'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgEstabelecimentoCadWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'EMPRESA')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_business,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Segmento',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'EMPRESA'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'ESTABELECIMENTO_PLANO'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgEstabelecimentoPlanoWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'ESTABELECIMENTO_PLANO')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.attach_money,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'ESTABELECIMENTO_PLANO'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Foto Perfil',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'ESTABELECIMENTO_PLANO'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'SERVICOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaServicosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'SERVICOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_reaction_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Tema',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'SERVICOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PROFISSIONAIS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProfissionaisWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PROFISSIONAIS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.person_add,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Informações Site',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'PROFISSIONAIS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PRODUTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProdutosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PRODUTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Flexible(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .add_shopping_cart_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PRODUTOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      'Formas Pag e Comodidades',
                                                      style:
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
                                                                color: widget
                                                                            .paramBotaoSelecionado ==
                                                                        'PRODUTOS'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .customTextoMenuLateralSelecionado
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        FFAppState()
                                                                            .varTamanhoMinimoTelaMenuLateral
                                                                            .toDouble()
                                                                    ? 16.0
                                                                    : 12.0,
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
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PRODUTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProdutosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PRODUTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Flexible(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .add_shopping_cart_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PRODUTOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      'Horários Atendimento',
                                                      style:
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
                                                                color: widget
                                                                            .paramBotaoSelecionado ==
                                                                        'PRODUTOS'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .customTextoMenuLateralSelecionado
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        FFAppState()
                                                                            .varTamanhoMinimoTelaMenuLateral
                                                                            .toDouble()
                                                                    ? 16.0
                                                                    : 12.0,
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
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PRODUTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaProdutosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PRODUTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Flexible(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .add_shopping_cart_sharp,
                                                      color: widget
                                                                  .paramBotaoSelecionado ==
                                                              'PRODUTOS'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .customTextoMenuLateralSelecionado
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      'Cadastro Serviços',
                                                      style:
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
                                                                color: widget
                                                                            .paramBotaoSelecionado ==
                                                                        'PRODUTOS'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .customTextoMenuLateralSelecionado
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        FFAppState()
                                                                            .varTamanhoMinimoTelaMenuLateral
                                                                            .toDouble()
                                                                    ? 16.0
                                                                    : 12.0,
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
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'USUARIOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgListaUsuariosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'USUARIOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.lock_person,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'USUARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Cadastro Profissionais',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'USUARIOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'USUARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (FFAppState().varTblUsuarios.adminSistema == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FFAppState().varGrupoBotaoSelecionado ==
                                        'ADMIN'
                                    ? FlutterFlowTheme.of(context)
                                        .customMenuLateralSelecionado
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 4.0, 2.0, 4.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (FFAppState().varGrupoBotaoSelecionado !=
                                        'ADMIN') {
                                      FFAppState().varGrupoBotaoSelecionado =
                                          'ADMIN';
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().varGrupoBotaoSelecionado =
                                          'xxx';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 0.0),
                                            child: Icon(
                                              Icons
                                                  .admin_panel_settings_outlined,
                                              color: FFAppState()
                                                          .varGrupoBotaoSelecionado ==
                                                      'ADMIN'
                                                  ? FlutterFlowTheme.of(context)
                                                      .customTextoMenuLateralSelecionado
                                                  : FlutterFlowTheme.of(context)
                                                      .customTextoMenuLateral,
                                              size: 24.0,
                                            ),
                                          ),
                                          Text(
                                            'Admin',
                                            style: FlutterFlowTheme.of(context)
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
                                                  color: FFAppState()
                                                              .varGrupoBotaoSelecionado ==
                                                          'ADMIN'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .customTextoMenuLateralSelecionado
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .customTextoMenuLateral,
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
                                        ],
                                      ),
                                      if (FFAppState()
                                              .varGrupoBotaoSelecionado !=
                                          'ADMIN')
                                        Icon(
                                          Icons.keyboard_arrow_right_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .customMenuLateralSelecionado,
                                          size: 20.0,
                                        ),
                                      if (FFAppState()
                                              .varGrupoBotaoSelecionado ==
                                          'ADMIN')
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: FlutterFlowTheme.of(context)
                                              .customTextoMenuLateralSelecionado,
                                          size: 20.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if ((FFAppState().varGrupoBotaoSelecionado ==
                                'ADMIN') &&
                            (FFAppState().varTblUsuarios.adminSistema == true))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .customMenuLateralSelecionado,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'EMPRESAS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgEstabelecimentosAdminWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'EMPRESAS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.cottage_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'EMPRESAS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Empresas',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'EMPRESAS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'AFILIADOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAfiliadosAdminWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'AFILIADOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.groups_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'AFILIADOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Afiliados',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'AFILIADOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PAG_SAQUES'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAdminPagSaquesWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PAG_SAQUES')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.download_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'PAG_SAQUES'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Pagamentos Saques',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'PAG_SAQUES'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'EMPRESA'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'FINANCEIRO'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgFinanceiroWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'FINANCEIRO')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.attach_money,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'FINANCEIRO'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Financeiro',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'FINANCEIRO'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'PLANOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgPlanosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'PLANOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .monetization_on_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'PLANOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Planos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'PLANOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'CUPONS_PADROES'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAdminCuponsPadroesWidget
                                                .routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'CUPONS_PADROES')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.sell_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'CUPONS_PADROES'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Cupons Padrões',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'CUPONS_PADROES'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'FORMASPAG'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgFormasPagWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'FORMASPAG')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.payments,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'FORMASPAG'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Formas Pagamento',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'FORMASPAG'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'RELATORIOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgRelatoriosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'RELATORIOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.reorder,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'RELATORIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Relatórios',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'RELATORIOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'LOGSERROS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgLogsErrosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'LOGSERROS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .report_gmailerrorred_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'LOGSERROS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Logs de Erros',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'LOGSERROS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'LOGSATIVIDADES'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgLogsAtividadesWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'LOGSATIVIDADES')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .format_list_bulleted_rounded,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'LOGSATIVIDADES'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Logs de atividades',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'LOGSATIVIDADES'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'PROFISSIONAIS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'ATENDIMENTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgAtendimentosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'ATENDIMENTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .headphones_battery_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'ATENDIMENTOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Atendimentos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'ATENDIMENTOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'TEMAS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgTemasBlackgroundWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'TEMAS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.picture_in_picture,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'TEMAS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Temas',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'TEMAS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'MODELOSBANNERS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgModelosBannersWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'MODELOSBANNERS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .picture_in_picture_alt_rounded,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'MODELOSBANNERS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Modelos Banners',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'MODELOSBANNERS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'MODELOSFOTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgModelosFotosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'MODELOSFOTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .picture_in_picture_alt_rounded,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'MODELOSFOTOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Modelos Fotos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'MODELOSFOTOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'SEGMENTOS'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgSegmentosWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'SEGMENTOS')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.group_work_sharp,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'SEGMENTOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Segmentos',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'SEGMENTOS'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'CONFIGADMIN'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 2.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgConfigAdminWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'CONFIGADMIN')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.settings_outlined,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'CONFIGADMIN'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Configurações',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'CONFIGADMIN'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'SERVICOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: widget.paramBotaoSelecionado ==
                                              'USUARIOSADMIN'
                                          ? Color(0x324B39EF)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 2.0, 2.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .varCarregouPrimeiraPagina ==
                                              false) {
                                            context.pop();
                                          } else {
                                            FFAppState()
                                                    .varCarregouPrimeiraPagina =
                                                false;
                                          }

                                          context.pushNamed(
                                            PgUserAdminWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (widget.paramBotaoSelecionado ==
                                                'USUARIOSADMIN')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Container(
                                                  width: 3.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customTextoMenuLateralSelecionado,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.lock_person,
                                                    color: widget
                                                                .paramBotaoSelecionado ==
                                                            'USUARIOSADMIN'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customTextoMenuLateralSelecionado
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Usuários',
                                                  style:
                                                      FlutterFlowTheme.of(
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
                                                            color: widget
                                                                        .paramBotaoSelecionado ==
                                                                    'USUARIOSADMIN'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .customTextoMenuLateralSelecionado
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    FFAppState()
                                                                        .varTamanhoMinimoTelaMenuLateral
                                                                        .toDouble()
                                                                ? 16.0
                                                                : 12.0,
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
                                              ],
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                color:
                                                    widget.paramBotaoSelecionado ==
                                                            'USUARIOS'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                size: 20.0,
                                              ),
                                          ],
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
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Color(0x26FFFFFF),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((Theme.of(context).brightness ==
                                    Brightness.dark) ==
                                true) {
                              setDarkModeSetting(context, ThemeMode.light);
                              FFAppState().VarDarkMode = 'claro';
                              safeSetState(() {});
                            } else {
                              setDarkModeSetting(context, ThemeMode.dark);
                              FFAppState().VarDarkMode = 'escuro';
                              safeSetState(() {});
                            }
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0x2EFFFFFF),
                                width: 1.0,
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if ((Theme.of(context).brightness ==
                                          Brightness.dark) ==
                                      false)
                                    Icon(
                                      Icons.dark_mode_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .customTextoMenuLateral,
                                      size: 20.0,
                                    ),
                                  if ((Theme.of(context).brightness ==
                                          Brightness.dark) ==
                                      true)
                                    Icon(
                                      Icons.sunny,
                                      color: FlutterFlowTheme.of(context)
                                          .customTextoMenuLateral,
                                      size: 20.0,
                                    ),
                                  Text(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? 'Modo Claro'
                                        : 'Modo Escuro',
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
                                          color: FlutterFlowTheme.of(context)
                                              .customTextoMenuLateral,
                                          fontSize: 12.0,
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(
                                text: FFAppState().VarVersaoSistema));

                            FFAppState().update(() {});
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Versão ${FFAppState().VarVersaoSistema} copiada para Área de transferência',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          },
                          child: Text(
                            'Versão: ${FFAppState().VarVersaoSistema}',
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
                                  color: FlutterFlowTheme.of(context)
                                      .customTextoMenuLateral,
                                  fontSize: 12.0,
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
                    ),
                    if (MediaQuery.sizeOf(context).width <
                        FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.acSairSistemaResult =
                                await action_blocks.acSairSistema(context);
                            if (_model.acSairSistemaResult!) {
                              GoRouter.of(context).prepareAuthEvent();
                              await authManager.signOut();
                              GoRouter.of(context).clearRedirectLocation();

                              context.goNamedAuth(
                                HomePageWidget.routeName,
                                context.mounted,
                                pathParameters: {
                                  'cupom': serializeParam(
                                    'Logout',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            }

                            safeSetState(() {});
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sair',
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
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 4.0, 0.0),
                                child: Icon(
                                  Icons.exit_to_app,
                                  color: FlutterFlowTheme.of(context).error,
                                  size: 24.0,
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
          ),
        ),
      ),
    );
  }
}
