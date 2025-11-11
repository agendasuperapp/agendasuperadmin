import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_agendamento_consultar_model.dart';
export 'cp_agendamento_consultar_model.dart';

class CpAgendamentoConsultarWidget extends StatefulWidget {
  const CpAgendamentoConsultarWidget({super.key});

  @override
  State<CpAgendamentoConsultarWidget> createState() =>
      _CpAgendamentoConsultarWidgetState();
}

class _CpAgendamentoConsultarWidgetState
    extends State<CpAgendamentoConsultarWidget> {
  late CpAgendamentoConsultarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAgendamentoConsultarModel());

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
      child: FutureBuilder<List<ViewTblAgendamentoCarrinhoRow>>(
        future: ViewTblAgendamentoCarrinhoTable().querySingleRow(
          queryFn: (q) => q.eqOrNull(
            'id',
            FFAppState().varTblCarrinhoAdd.idCarrinho,
          ),
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
          List<ViewTblAgendamentoCarrinhoRow>
              containerViewTblAgendamentoCarrinhoRowList = snapshot.data!;

          final containerViewTblAgendamentoCarrinhoRow =
              containerViewTblAgendamentoCarrinhoRowList.isNotEmpty
                  ? containerViewTblAgendamentoCarrinhoRowList.first
                  : null;

          return Container(
            height: MediaQuery.sizeOf(context).height * 1.0,
            constraints: BoxConstraints(
              maxWidth: 550.0,
              maxHeight: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 1000.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 800.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 800.0;
                } else {
                  return 800.0;
                }
              }(),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).colorGradPage1,
                  FlutterFlowTheme.of(context).colorGradient2
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 15.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 15.0;
                    } else {
                      return 15.0;
                    }
                  }(),
                  0.0,
                )),
                bottomRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 15.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 15.0;
                    } else {
                      return 15.0;
                    }
                  }(),
                  0.0,
                )),
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 15.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 15.0;
                    } else {
                      return 15.0;
                    }
                  }(),
                  0.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 15.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 15.0;
                    } else {
                      return 15.0;
                    }
                  }(),
                  0.0,
                )),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      'Consultar Agendamento',
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
                                            color: FlutterFlowTheme.of(context)
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
                                ],
                              ),
                              if (!FFAppState().VarAbrirJanelasWebAndroid &&
                                  responsiveVisibility(
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
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 36.0,
                                  ),
                                ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 18.0, 0.0, 0.0),
                              child: Text(
                                'Status: ${valueOrDefault<String>(
                                  containerViewTblAgendamentoCarrinhoRow
                                      ?.nomeSecundarioStatus,
                                  '...',
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: colorFromCssString(
                                        containerViewTblAgendamentoCarrinhoRow!
                                            .corStatus!,
                                        defaultColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Código: ${valueOrDefault<String>(
                                    containerViewTblAgendamentoCarrinhoRow.id
                                        ?.toString(),
                                    '...',
                                  )}',
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
                                            .secondaryText,
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
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Data Cadastro: ${dateTimeFormat(
                                    "dd/MM/y H:mm",
                                    containerViewTblAgendamentoCarrinhoRow
                                        .dataCadastro,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}',
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
                                            .secondaryText,
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
                            ].divide(SizedBox(width: 12.0)),
                          ),
                          Wrap(
                            spacing: 12.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Cliente: ${valueOrDefault<String>(
                                      containerViewTblAgendamentoCarrinhoRow
                                          .nomeCliente,
                                      '...',
                                    )}',
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
                                              .secondaryText,
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
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'WhatsApp: ${valueOrDefault<String>(
                                      containerViewTblAgendamentoCarrinhoRow
                                          .whatsapp,
                                      '...',
                                    )}',
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
                                              .secondaryText,
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
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Valor entrada: ${valueOrDefault<String>(
                                formatNumber(
                                  containerViewTblAgendamentoCarrinhoRow
                                      .valorEntrada,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'R\$',
                                ),
                                '...',
                              )}',
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
                                        .secondaryText,
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
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Entrada confirmada: ${containerViewTblAgendamentoCarrinhoRow.entradaConfirmada == true ? 'Sim' : 'Não'}',
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
                                        .secondaryText,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 18.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(),
                              child:
                                  FutureBuilder<List<ViewTblAgendamentosRow>>(
                                future: ViewTblAgendamentosTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'id_estabelecimento',
                                        FFAppState().VarIDEstabelecimentoLogado,
                                      )
                                      .eqOrNull(
                                        'id_carrinho',
                                        FFAppState()
                                            .varTblCarrinhoAdd
                                            .idCarrinho,
                                      )
                                      .order('id', ascending: true),
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
                                  List<ViewTblAgendamentosRow>
                                      staggeredViewViewTblAgendamentosRowList =
                                      snapshot.data!;

                                  return MasonryGridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                    ),
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    itemCount:
                                        staggeredViewViewTblAgendamentosRowList
                                            .length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, staggeredViewIndex) {
                                      final staggeredViewViewTblAgendamentosRow =
                                          staggeredViewViewTblAgendamentosRowList[
                                              staggeredViewIndex];
                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .cCFundoContainesDados,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25.0),
                                                              child:
                                                                  Image.network(
                                                                staggeredViewViewTblAgendamentosRow
                                                                    .fotoServico!,
                                                                width: 40.0,
                                                                height: 40.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Serviço: ${staggeredViewViewTblAgendamentosRow.nomeServico}',
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Profissional: ${staggeredViewViewTblAgendamentosRow.nomeProfissional}',
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
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Reservado para ${dateTimeFormat(
                                                              "MMMMEEEEd",
                                                              staggeredViewViewTblAgendamentosRow
                                                                  .dataAgendamento,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )} às ${staggeredViewViewTblAgendamentosRow.horaAgendamento}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      12.0,
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
                                                      if (staggeredViewViewTblAgendamentosRow
                                                                  .observacao !=
                                                              null &&
                                                          staggeredViewViewTblAgendamentosRow
                                                                  .observacao !=
                                                              '')
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              staggeredViewViewTblAgendamentosRow
                                                                  .observacao,
                                                              '...',
                                                            ),
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      12.0,
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              formatNumber(
                                                                staggeredViewViewTblAgendamentosRow
                                                                    .valor!,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency: 'R\$',
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
                                                                    color:
                                                                        colorFromCssString(
                                                                      containerViewTblAgendamentoCarrinhoRow
                                                                          .corStatus!,
                                                                      defaultColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                    fontSize:
                                                                        16.0,
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
                                                        ],
                                                      ),
                                                    ],
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 8.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'VALOR TOTAL: ${formatNumber(
                          containerViewTblAgendamentoCarrinhoRow.valorTotal,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.commaDecimal,
                          currency: 'R\$',
                        )}',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .fontStyle,
                              ),
                              color: colorFromCssString(
                                containerViewTblAgendamentoCarrinhoRow
                                    .corStatus!,
                                defaultColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .displayMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (containerViewTblAgendamentoCarrinhoRow
                              .idStatusAgendamento ==
                          1)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 25.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Atenção!'),
                                                content: Text(
                                                    'Deseja APROVAR o agendamento?'),
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
                                              ),
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  await TblAgendamentoCarrinhoTable().update(
                                    data: {
                                      'situacao': true,
                                      'id_status_agendamento': FFAppState()
                                              .VarTblEstabelecimentoLogado
                                              .cfUsarClConfirmarAgend
                                          ? 2
                                          : 4,
                                      'aprovado_estabelecimento': true,
                                      'data_hora_aprovacao':
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      FFAppState().varTblCarrinhoAdd.idCarrinho,
                                    ),
                                  );
                                  await TblAgendamentosAtzTable().insert({
                                    'id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCliente,
                                    'id_agendamento_carrinho':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCarrinho,
                                    'id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idEstabelecimento,
                                    'user_id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdCliente,
                                    'user_id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdEstabelecimento,
                                    'id_status': FFAppState()
                                            .VarTblEstabelecimentoLogado
                                            .cfUsarClConfirmarAgend
                                        ? 2
                                        : 4,
                                    'obs': 'EST APROVOU',
                                  });
                                  if (FFAppState()
                                          .VarTblEstabelecimentoLogado
                                          .cfUsarEstAprovarAgend &&
                                      FFAppState()
                                          .VarTblEstabelecimentoLogado
                                          .cfEnvMensWhatsAprovar) {
                                    _model.queryConsItensCarrinho =
                                        await ViewTblAgendamentosTable()
                                            .queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'id_estabelecimento',
                                            FFAppState()
                                                .VarIDEstabelecimentoLogado,
                                          )
                                          .eqOrNull(
                                            'id_carrinho',
                                            containerViewTblAgendamentoCarrinhoRow
                                                .id,
                                          )
                                          .eqOrNull(
                                            'situacao',
                                            true,
                                          ),
                                    );
                                    _model.varContador = 0;
                                    _model.varListaItensWhatsEmail = [];
                                    safeSetState(() {});
                                    while (_model.varContador <
                                        _model.queryConsItensCarrinho!.length) {
                                      _model.addToVarListaItensWhatsEmail(
                                          '\\n   🔹 *${_model.queryConsItensCarrinho?.elementAtOrNull(_model.varContador)?.nomeServico}*\\n   🔹 Profissional: ${_model.queryConsItensCarrinho?.elementAtOrNull(_model.varContador)?.nomeProfissional}\\n    📅 ${dateTimeFormat(
                                        "MMMMEEEEd",
                                        _model.queryConsItensCarrinho
                                            ?.elementAtOrNull(
                                                _model.varContador)
                                            ?.dataAgendamento,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}\\n    🕒 ${_model.queryConsItensCarrinho?.elementAtOrNull(_model.varContador)?.horaAgendamento}\\n');
                                      safeSetState(() {});
                                      _model.varContador =
                                          _model.varContador + 1;
                                      safeSetState(() {});
                                    }
                                    _model.acVerificarConexaoWhatsappResult =
                                        await action_blocks
                                            .acWhatsAppVerificarConexao(
                                      context,
                                      paramExibirMensagemConexao: false,
                                    );
                                    if (_model
                                        .acVerificarConexaoWhatsappResult!) {
                                      unawaited(
                                        () async {
                                          await action_blocks
                                              .acWhatsAppEnviarMensagem(
                                            context,
                                            paramNumeroWhatsApp:
                                                '+55${functions.fcRemoverCaracteresELetrasString(containerViewTblAgendamentoCarrinhoRow.whatsapp!)}',
                                            paramMensagem:
                                                'Olá! ${functions.fcRetornarPrimeiroNomePessoa(containerViewTblAgendamentoCarrinhoRow.nomeCliente!)}${FFAppState().VarTblEstabelecimentoLogado.cfUsarClConfirmarAgend ? '\\n\\nSeu agendamento foi ✅ *CONFIRMADO*\\n\\nDepois acesse o sistema para *✔️ CONFIRMAR SUA PRESENÇA!*\\n\\n' : '\\n\\nSeu agendamento foi ✅ *CONFIRMADO*\\n\\n'}${functions.fcConverterListaPString(_model.varListaItensWhatsEmail.toList())}\\n\\n\\n\\nAtencisamente ${FFAppState().VarTblEstabelecimentoLogado.nomeEstabelecimento}\\nSite: www.agendasuper.com/${FFAppState().VarTblEstabelecimentoLogado.username}\\nE-mail: ${FFAppState().VarTblEstabelecimentoLogado.emailEstabelecimento}',
                                            paramEnviarDoEstabelecimento: true,
                                          );
                                        }(),
                                      );
                                    }
                                  }
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'AGENDAMENTO APROVADO! ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (FFAppState().VarAbrirJanelasWebAndroid) {
                                    context.safePop();
                                    Navigator.pop(context);
                                  } else {
                                    Navigator.pop(context);
                                  }
                                }

                                safeSetState(() {});
                              },
                              text: 'APROVAR AGENDAMENTO',
                              icon: Icon(
                                Icons.check,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).success,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      if (containerViewTblAgendamentoCarrinhoRow
                              .idStatusAgendamento ==
                          4)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 25.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Atenção!'),
                                                content: Text(
                                                    'Deseja FINALIZAR o agendamento, o serviço foi concluído?'),
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
                                              ),
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  await TblAgendamentoCarrinhoTable().update(
                                    data: {
                                      'situacao': true,
                                      'id_status_agendamento': 5,
                                      'finalizado_estab': true,
                                      'data_hora_finalizacao':
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                      'finalizado_cliente': false,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      FFAppState().varTblCarrinhoAdd.idCarrinho,
                                    ),
                                  );
                                  await TblAgendamentosAtzTable().insert({
                                    'id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCliente,
                                    'id_agendamento_carrinho':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCarrinho,
                                    'id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idEstabelecimento,
                                    'user_id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdCliente,
                                    'user_id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdEstabelecimento,
                                    'id_status': 5,
                                    'obs': 'EST FINALIZOU',
                                  });
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'AGENDAMENTO FINALIZADO! ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (FFAppState().VarAbrirJanelasWebAndroid) {
                                    context.safePop();
                                    Navigator.pop(context);
                                  } else {
                                    Navigator.pop(context);
                                  }
                                }
                              },
                              text: 'FINALIZAR/CONCLUIR',
                              icon: Icon(
                                Icons.check,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).success,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      if (containerViewTblAgendamentoCarrinhoRow
                              .aceitarCancelamento ==
                          true)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 25.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Atenção!'),
                                                content: Text(
                                                    'Deseja CANCELAR o agendamento?'),
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
                                              ),
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  _model.varContador = 0;
                                  safeSetState(() {});
                                  _model.queryConsAgendamentos =
                                      await TblAgendamentosTable().queryRows(
                                    queryFn: (q) => q
                                        .eqOrNull(
                                          'id_estabelecimento',
                                          FFAppState()
                                              .VarIDEstabelecimentoLogado,
                                        )
                                        .eqOrNull(
                                          'id_carrinho',
                                          FFAppState()
                                              .varTblCarrinhoAdd
                                              .idCarrinho,
                                        ),
                                  );
                                  await TblAgendamentosTable().update(
                                    data: {
                                      'situacao': false,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id_carrinho',
                                      FFAppState().varTblCarrinhoAdd.idCarrinho,
                                    ),
                                  );
                                  await TblAgendamentoCarrinhoTable().update(
                                    data: {
                                      'situacao': false,
                                      'id_status_agendamento': 3,
                                      'cancelado_estabelecimento': true,
                                      'data_hora_cancelamento':
                                          supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      FFAppState().varTblCarrinhoAdd.idCarrinho,
                                    ),
                                  );
                                  await TblAgendamentosAtzTable().insert({
                                    'id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCliente,
                                    'id_agendamento_carrinho':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idCarrinho,
                                    'id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .idEstabelecimento,
                                    'user_id_cliente':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdCliente,
                                    'user_id_estabelecimento':
                                        containerViewTblAgendamentoCarrinhoRow
                                            .userIdEstabelecimento,
                                    'id_status': 3,
                                    'obs': 'EST CANCELOU',
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'AGENDAMENTO CANCELADO! ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).error,
                                    ),
                                  );
                                  if (FFAppState().VarAbrirJanelasWebAndroid) {
                                    context.safePop();
                                    Navigator.pop(context);
                                  } else {
                                    Navigator.pop(context);
                                  }
                                }

                                safeSetState(() {});
                              },
                              text: 'CANCELAR AGENDAMENTO',
                              icon: Icon(
                                Icons.cancel_outlined,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
