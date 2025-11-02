import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/pages/admin/a_sistema/home/cp_foto/cp_foto_widget.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_modelos_fotos/cp_cad_modelos_fotos_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_lista_modelos_fotos_model.dart';
export 'cp_lista_modelos_fotos_model.dart';

class CpListaModelosFotosWidget extends StatefulWidget {
  const CpListaModelosFotosWidget({super.key});

  @override
  State<CpListaModelosFotosWidget> createState() =>
      _CpListaModelosFotosWidgetState();
}

class _CpListaModelosFotosWidgetState extends State<CpListaModelosFotosWidget>
    with TickerProviderStateMixin {
  late CpListaModelosFotosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpListaModelosFotosModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
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
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    controller: _model.columnController,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'Modelos de fotos Estabelecimentos',
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
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
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
                                _model.varSituacaoCadastro =
                                    !_model.varSituacaoCadastro;
                                safeSetState(() {});
                                safeSetState(
                                    () => _model.requestCompleter = null);
                                await _model.waitForRequestCompleted();
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
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: FutureBuilder<List<TblModelosFotosRow>>(
                              future: (_model.requestCompleter ??= Completer<
                                      List<TblModelosFotosRow>>()
                                    ..complete(TblModelosFotosTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'situacao',
                                            _model.varSituacaoCadastro,
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TblModelosFotosRow>
                                    staggeredViewTblModelosFotosRowList =
                                    snapshot.data!;

                                if (staggeredViewTblModelosFotosRowList
                                    .isEmpty) {
                                  return CpSemCadastroWidget();
                                }

                                return MasonryGridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 2;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 3;
                                      } else {
                                        return 5;
                                      }
                                    }(),
                                  ),
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  itemCount: staggeredViewTblModelosFotosRowList
                                      .length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, staggeredViewIndex) {
                                    final staggeredViewTblModelosFotosRow =
                                        staggeredViewTblModelosFotosRowList[
                                            staggeredViewIndex];
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .cCFundoContainesDados,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: staggeredViewTblModelosFotosRow
                                                  .situacao!
                                              ? FlutterFlowTheme.of(context)
                                                  .alternate
                                              : FlutterFlowTheme.of(context)
                                                  .error,
                                          width: staggeredViewTblModelosFotosRow
                                                  .situacao!
                                              ? 1.0
                                              : 2.0,
                                        ),
                                      ),
                                      child: Builder(
                                        builder: (context) => Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                  .VarAbrirJanelasWebAndroid) {
                                                context.pushNamed(
                                                  PgCadModelosFotosWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'paramCadastro':
                                                        serializeParam(
                                                      false,
                                                      ParamType.bool,
                                                    ),
                                                    'paramRowTblModelosFotos':
                                                        serializeParam(
                                                      staggeredViewTblModelosFotosRow,
                                                      ParamType.SupabaseRow,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .bottomToTop,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                    ),
                                                  },
                                                );

                                                await showDialog(
                                                  barrierColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: CaAguardeWidget(
                                                        paramMostrarAnimacao:
                                                            false,
                                                        paramFecharAoClicar:
                                                            false,
                                                      ),
                                                    );
                                                  },
                                                );

                                                safeSetState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CpCadModelosFotosWidget(
                                                        paramCadastro: false,
                                                        paramRowTbmodelosFotos:
                                                            staggeredViewTblModelosFotosRow,
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                safeSetState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                              }
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (staggeredViewTblModelosFotosRow
                                                                  .foto !=
                                                              null &&
                                                          staggeredViewTblModelosFotosRow
                                                                  .foto !=
                                                              '') {
                                                        await showDialog(
                                                          barrierColor:
                                                              Color(0xD714181B),
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
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  CpFotoWidget(
                                                                paramFoto:
                                                                    staggeredViewTblModelosFotosRow
                                                                        .foto!,
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Atenção!'),
                                                              content: Text(
                                                                  'Sem foto'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          staggeredViewTblModelosFotosRow
                                                              .foto,
                                                          'https://hzmixuvrnzpypriagecv.supabase.co/storage/v1/object/public/fotos/modelos_fotos/tbl_estabelecimentos/teste.png',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  constraints: BoxConstraints(
                                                    minHeight: 80.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final varSegmentos =
                                                          staggeredViewTblModelosFotosRow
                                                              .idSegmento
                                                              .toList();

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            varSegmentos.length,
                                                        itemBuilder: (context,
                                                            varSegmentosIndex) {
                                                          final varSegmentosItem =
                                                              varSegmentos[
                                                                  varSegmentosIndex];
                                                          return Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .arrow_right,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 18.0,
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    FFAppState()
                                                                        .varTblSegmentos
                                                                        .where((e) =>
                                                                            e.id ==
                                                                            varSegmentosItem)
                                                                        .toList()
                                                                        .firstOrNull
                                                                        ?.nome,
                                                                    '...',
                                                                  ),
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
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
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
                                                          );
                                                        },
                                                        controller: _model
                                                            .listViewController,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    Icons.edit,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!);
                                  },
                                  controller: _model.staggeredViewController,
                                );
                              },
                            ),
                          ),
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
                          context.pushNamed(
                            PgCadModelosFotosWidget.routeName,
                            queryParameters: {
                              'paramCadastro': serializeParam(
                                true,
                                ParamType.bool,
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
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: CaAguardeWidget(
                                  paramMostrarAnimacao: false,
                                ),
                              );
                            },
                          );

                          safeSetState(() => _model.requestCompleter = null);
                          await _model.waitForRequestCompleted();
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: CpCadModelosFotosWidget(
                                  paramCadastro: true,
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          safeSetState(() => _model.requestCompleter = null);
                          await _model.waitForRequestCompleted();
                        }

                        await _model.columnController?.animateTo(
                          0,
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.ease,
                        );
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
