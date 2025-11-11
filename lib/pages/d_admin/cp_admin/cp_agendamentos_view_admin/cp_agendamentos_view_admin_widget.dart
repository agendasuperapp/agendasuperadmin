import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_agendamentos_carrinhos/cp_agendamentos_carrinhos_widget.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_agendamentos_diarios/cp_agendamentos_diarios_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_agendamentos_view_admin_model.dart';
export 'cp_agendamentos_view_admin_model.dart';

class CpAgendamentosViewAdminWidget extends StatefulWidget {
  const CpAgendamentosViewAdminWidget({
    super.key,
    bool? paramAdmin,
  }) : this.paramAdmin = paramAdmin ?? false;

  final bool paramAdmin;

  @override
  State<CpAgendamentosViewAdminWidget> createState() =>
      _CpAgendamentosViewAdminWidgetState();
}

class _CpAgendamentosViewAdminWidgetState
    extends State<CpAgendamentosViewAdminWidget> with TickerProviderStateMixin {
  late CpAgendamentosViewAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAgendamentosViewAdminModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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
        width: MediaQuery.sizeOf(context).width <
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
            ? MediaQuery.sizeOf(context).width
            : (MediaQuery.sizeOf(context).width * 0.8),
        height: MediaQuery.sizeOf(context).width <
                FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()
            ? MediaQuery.sizeOf(context).height
            : (MediaQuery.sizeOf(context).height * 0.9),
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
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 0.0 : 15.0,
              0.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 0.0 : 15.0,
              0.0,
            )),
            topLeft: Radius.circular(valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 0.0 : 15.0,
              0.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 0.0 : 15.0,
              0.0,
            )),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (FFAppState().VarAbrirJanelasWebAndroid == true) {
                            context.safePop();
                            Navigator.pop(context);
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Agendamentos',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.readexPro(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: false,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 12.0
                                      : 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 12.0
                                      : 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        labelColor: FlutterFlowTheme.of(context).primary,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        backgroundColor: FlutterFlowTheme.of(context).accent1,
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        elevation: 0.0,
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        tabs: [
                          Tab(
                            text: 'Agendamentos Diários',
                            icon: Icon(
                              Icons.today_sharp,
                              size: 20.0,
                            ),
                          ),
                          Tab(
                            text: 'Carrinhos',
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 20.0,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: wrapWithModel(
                                  model: _model.cpAgendamentosDiariosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpAgendamentosDiariosWidget(
                                    paramAdmin: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: wrapWithModel(
                                  model: _model.cpAgendamentosCarrinhosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CpAgendamentosCarrinhosWidget(
                                    paramAdmin: true,
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
