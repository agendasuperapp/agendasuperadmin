import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/page_mensagens_personalizadas/cp_dialog_snack_bar/cp_dialog_snack_bar_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_calendario_pers_dias_model.dart';
export 'cp_calendario_pers_dias_model.dart';

class CpCalendarioPersDiasWidget extends StatefulWidget {
  const CpCalendarioPersDiasWidget({
    super.key,
    bool? paramMostrarDiasDisponiveis,
    required this.paramSeleAntePost,
    required this.paramMes,
    required this.paramAno,
    int? paramIndexCarrocel,
    required this.paramIDProfissional,
    bool? paramAtualizarEstabelecimento,
    required this.paramAceitarSelDiaPassado,
  })  : this.paramMostrarDiasDisponiveis = paramMostrarDiasDisponiveis ?? true,
        this.paramIndexCarrocel = paramIndexCarrocel ?? 1,
        this.paramAtualizarEstabelecimento =
            paramAtualizarEstabelecimento ?? false;

  final bool paramMostrarDiasDisponiveis;
  final String? paramSeleAntePost;
  final int? paramMes;
  final int? paramAno;
  final int paramIndexCarrocel;
  final int? paramIDProfissional;
  final bool paramAtualizarEstabelecimento;
  final bool? paramAceitarSelDiaPassado;

  @override
  State<CpCalendarioPersDiasWidget> createState() =>
      _CpCalendarioPersDiasWidgetState();
}

class _CpCalendarioPersDiasWidgetState
    extends State<CpCalendarioPersDiasWidget> {
  late CpCalendarioPersDiasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCalendarioPersDiasModel());

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        decoration: BoxDecoration(),
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Dom.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Seg',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Ter.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Qua.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Qui',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Sex',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Text(
                      'Sáb',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
            Flexible(
              child: Builder(
                builder: (context) {
                  final varTblCalendarioPersonalizadoDados = FFAppState()
                      .VarTblCalendarioPersonalizadoSelecionado
                      .toList();

                  return MasonryGridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                    ),
                    crossAxisSpacing: 3.0,
                    mainAxisSpacing: 3.0,
                    itemCount: varTblCalendarioPersonalizadoDados.length,
                    shrinkWrap: true,
                    itemBuilder:
                        (context, varTblCalendarioPersonalizadoDadosIndex) {
                      final varTblCalendarioPersonalizadoDadosItem =
                          varTblCalendarioPersonalizadoDados[
                              varTblCalendarioPersonalizadoDadosIndex];
                      return Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((varTblCalendarioPersonalizadoDadosItem.data! <
                                    functions.fcConverterStringPData(
                                        '${dateTimeFormat(
                                      "y",
                                      getCurrentTimestamp,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}-${dateTimeFormat(
                                      "MM",
                                      getCurrentTimestamp,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}-${dateTimeFormat(
                                      "dd",
                                      getCurrentTimestamp,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )}')) &&
                                (widget.paramAceitarSelDiaPassado == false)) {
                              unawaited(
                                () async {}(),
                              );
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: Colors.transparent,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CpDialogSnackBarWidget(
                                        paramMensagem:
                                            'Selecione uma data maior ou igual a hoje',
                                        paramCorTexto:
                                            FlutterFlowTheme.of(context).info,
                                        paramCorFundo:
                                            FlutterFlowTheme.of(context).error,
                                        paramTempoMsFechar: 1000,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));

                              return;
                            }
                            FFAppState().VarCalendarioDiaSelecionado =
                                functions.fcConverterStringPInteiro(
                                    varTblCalendarioPersonalizadoDadosItem.dia);
                            FFAppState().varCalendarioDataSelecionada =
                                varTblCalendarioPersonalizadoDadosItem.data;
                            FFAppState().VarHoraSelecionada = '0';
                            FFAppState().varIDHoraSelecionada = 0;
                            FFAppState().update(() {});
                            if (widget.paramIDProfissional! > 0) {
                              await action_blocks
                                  .acBlockAtualizarHorasDispProfissional(
                                context,
                                paramIDProfissionalAtzHrDipspProf:
                                    widget.paramIDProfissional,
                              );
                            }
                            if (widget.paramAtualizarEstabelecimento == true) {
                              await action_blocks
                                  .acBlockAtualizarHorasDispEstabelecimento(
                                      context);
                            }
                          },
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (widget.paramIndexCarrocel !=
                                    FFAppState()
                                        .VarCalendarioIndexCarrocelAtual) {
                                  return Colors.transparent;
                                } else if (dateTimeFormat(
                                      "y-MM-dd",
                                      FFAppState().varCalendarioDataSelecionada,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ) ==
                                    dateTimeFormat(
                                      "y-MM-dd",
                                      varTblCalendarioPersonalizadoDadosItem
                                          .data,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )) {
                                  return FlutterFlowTheme.of(context).primary;
                                } else if ((functions.fcConverterStringPInteiro(
                                            dateTimeFormat(
                                          "d",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )) ==
                                        functions.fcConverterStringPInteiro(
                                            varTblCalendarioPersonalizadoDadosItem
                                                .dia)) &&
                                    (functions.fcConverterStringPInteiro(
                                            dateTimeFormat(
                                          "M",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )) ==
                                        widget.paramMes) &&
                                    (functions.fcConverterStringPInteiro(
                                            dateTimeFormat(
                                          "y",
                                          getCurrentTimestamp,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )) ==
                                        widget.paramAno)) {
                                  return Color(0x584B39EF);
                                } else {
                                  return Colors.transparent;
                                }
                              }(),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: () {
                                  if ((widget.paramMostrarDiasDisponiveis ==
                                          false) &&
                                      (varTblCalendarioPersonalizadoDadosItem
                                              .dia !=
                                          '0')) {
                                    return Color(0x1914181B);
                                  } else if ((FFAppState()
                                              .VarCalendarioListaDiasDisponiveis
                                              .contains(dateTimeFormat(
                                                "y-MM-dd",
                                                varTblCalendarioPersonalizadoDadosItem
                                                    .data,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )) ==
                                          true) &&
                                      (varTblCalendarioPersonalizadoDadosItem
                                              .data! >=
                                          getCurrentTimestamp)) {
                                    return FlutterFlowTheme.of(context).success;
                                  } else {
                                    return (varTblCalendarioPersonalizadoDadosItem
                                                .dia !=
                                            '0'
                                        ? FlutterFlowTheme.of(context).tertiary
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
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        varTblCalendarioPersonalizadoDadosItem
                                            .dia
                                            .maybeHandleOverflow(
                                          maxChars: 3,
                                        ),
                                        maxLines: 1,
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
                                              color: dateTimeFormat(
                                                        "y-MM-dd",
                                                        FFAppState()
                                                            .varCalendarioDataSelecionada,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ) ==
                                                      dateTimeFormat(
                                                        "y-MM-dd",
                                                        varTblCalendarioPersonalizadoDadosItem
                                                            .data,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )
                                                  ? FlutterFlowTheme.of(context)
                                                      .info
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                  if (((FFAppState()
                                                  .VarCalendarioListaDiasDisponiveis
                                                  .contains(dateTimeFormat(
                                                    "y-MM-dd",
                                                    varTblCalendarioPersonalizadoDadosItem
                                                        .data,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  )) ==
                                              false) &&
                                          widget.paramMostrarDiasDisponiveis &&
                                          (varTblCalendarioPersonalizadoDadosItem
                                                  .dia !=
                                              '0')) ||
                                      ((varTblCalendarioPersonalizadoDadosItem
                                                  .data! <
                                              functions.fcConverterStringPData(
                                                  '${dateTimeFormat(
                                                "y",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}-${dateTimeFormat(
                                                "MM",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}-${dateTimeFormat(
                                                "dd",
                                                getCurrentTimestamp,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}')) &&
                                          (varTblCalendarioPersonalizadoDadosItem
                                                  .dia !=
                                              '0') &&
                                          widget.paramMostrarDiasDisponiveis &&
                                          (widget.paramAceitarSelDiaPassado ==
                                              false)))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 20.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
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
        ),
      ),
    );
  }
}
