import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/a_sistema/home/cp_foto/cp_foto_widget.dart';
import '/pages/admin/a_sistema/home/cp_notificacao/cp_notificacao_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_cabecalho_pagina_model.dart';
export 'cp_cabecalho_pagina_model.dart';

class CpCabecalhoPaginaWidget extends StatefulWidget {
  const CpCabecalhoPaginaWidget({super.key});

  @override
  State<CpCabecalhoPaginaWidget> createState() =>
      _CpCabecalhoPaginaWidgetState();
}

class _CpCabecalhoPaginaWidgetState extends State<CpCabecalhoPaginaWidget>
    with TickerProviderStateMixin {
  late CpCabecalhoPaginaModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCabecalhoPaginaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
      visible: MediaQuery.sizeOf(context).width <=
          FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble(),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).colorGradient1,
              FlutterFlowTheme.of(context).colorGradient2
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if ((isAndroid || FFAppState().VarEmDesenvolvimento) &&
                responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
              Container(
                width: 100.0,
                height: 30.0,
                decoration: BoxDecoration(),
              ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.varContadorDesenvolvimento =
                              _model.varContadorDesenvolvimento + 1;
                          safeSetState(() {});
                          if (_model.varContadorDesenvolvimento > 10) {
                            FFAppState().VarEmDesenvolvimento = true;
                            FFAppState().VarAbrirJanelasWebAndroid = true;
                            FFAppState().update(() {});
                            _model.varContadorDesenvolvimento = 0;
                            safeSetState(() {});
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Atenção!'),
                                  content:
                                      Text('Modo desenvolvedor ativado...'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            FFAppState().VarEmDesenvolvimento = false;
                            FFAppState().VarAbrirJanelasWebAndroid = false;
                            safeSetState(() {});
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            fadeInDuration: Duration(milliseconds: 500),
                            fadeOutDuration: Duration(milliseconds: 500),
                            imageUrl: valueOrDefault<String>(
                              () {
                                if (FFAppState().varIDAPPAfiliado == 1) {
                                  return (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/w0d6fzopxt5l/AgendaSuperBranco.png'
                                      : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/f8lu7rvvvl1k/AgendaSuperVerde2.png');
                                } else if (FFAppState().varIDAPPAfiliado == 3) {
                                  return (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/wmecbhn9vru6/AppAfiliado_(1).png'
                                      : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/6v1dxik8e3t6/AppAfiliado_(5).png');
                                } else {
                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/f8lu7rvvvl1k/AgendaSuperVerde2.png';
                                }
                              }(),
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/f8lu7rvvvl1k/AgendaSuperVerde2.png',
                            ),
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await launchURL(FFAppState().varUrlApk);
                        },
                        child: Text(
                          FFAppState().VarVersaoSistema,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).accent2,
                                    fontSize: 10.0,
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
                      if (FFAppState().VarEmDesenvolvimento)
                        Text(
                          FFAppState().varCarregouPrimeiraPagina.toString(),
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
                                color: FlutterFlowTheme.of(context).agendaSuper,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      FFAppState()
                                          .varTamanhoMinimoTelaMenuLateral
                                          .toDouble()
                                  ? 30.0
                                  : 0.0,
                              0.0,
                            ),
                            0.0,
                            0.0,
                            0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (MediaQuery.sizeOf(context).width > 355.0)
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xB139D2C0),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Color(0x5539D2C0),
                                    width: 2.0,
                                  ),
                                ),
                                child: Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState()
                                                  .VarTblEstabelecimentoLogado
                                                  .fotoPerfil !=
                                              '') {
                                        await showDialog(
                                          barrierColor:
                                              FlutterFlowTheme.of(context)
                                                  .customFundoShowComponentes,
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: CpFotoWidget(
                                                paramFoto: FFAppState()
                                                    .VarTblEstabelecimentoLogado
                                                    .fotoPerfil,
                                              ),
                                            );
                                          },
                                        );
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Atenção!'),
                                              content: Text('Sem Foto'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: CachedNetworkImage(
                                        fadeInDuration:
                                            Duration(milliseconds: 500),
                                        fadeOutDuration:
                                            Duration(milliseconds: 500),
                                        imageUrl: valueOrDefault<String>(
                                          FFAppState()
                                              .VarTblEstabelecimentoLogado
                                              .fotoPerfil,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                        ),
                                        width: 44.0,
                                        height: 44.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Flex(
                                direction: (MediaQuery.sizeOf(context).width >
                                        FFAppState()
                                            .varTamanhoMinimoTelaMenuLateral
                                            .toDouble())
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.arrow_right_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 12.0,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.varContadorDesenvolvimento =
                                              _model.varContadorDesenvolvimento +
                                                  1;
                                          safeSetState(() {});
                                          if (_model
                                                  .varContadorDesenvolvimento >
                                              10) {
                                            FFAppState().VarEmDesenvolvimento =
                                                true;
                                            FFAppState()
                                                    .VarAbrirJanelasWebAndroid =
                                                true;
                                            FFAppState().update(() {});
                                            _model.varContadorDesenvolvimento =
                                                0;
                                            safeSetState(() {});
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Atenção!'),
                                                  content: Text(
                                                      'Modo desenvolvedor ativado...'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          } else {
                                            FFAppState().VarEmDesenvolvimento =
                                                false;
                                            FFAppState()
                                                    .VarAbrirJanelasWebAndroid =
                                                false;
                                            safeSetState(() {});
                                          }
                                        },
                                        child: Text(
                                          FFAppState()
                                              .VarTblEstabelecimentoLogado
                                              .nomeEstabelecimento,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: FFAppState()
                                                        .VarEmDesenvolvimento
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                fontSize:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 12.0
                                                        : 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Visibility(
                                    visible: MediaQuery.sizeOf(context).width >
                                        1200.0,
                                    child: Container(
                                      width: 2.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.arrow_right_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 12.0,
                                      ),
                                      SelectionArea(
                                          child: Text(
                                        currentUserEmail,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize:
                                                  MediaQuery.sizeOf(context)
                                                              .width <
                                                          kBreakpointSmall
                                                      ? 12.0
                                                      : 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      )),
                                    ],
                                  ),
                                  Visibility(
                                    visible: (MediaQuery.sizeOf(context).width >
                                            1200.0) &&
                                        (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .assinatura ==
                                            false),
                                    child: Container(
                                      width: 2.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: FFAppState()
                                            .VarTblEstabelecimentoLogado
                                            .assinatura ==
                                        false,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.arrow_right_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 12.0,
                                        ),
                                        SelectionArea(
                                            child: Text(
                                          'Validade Plano: ${dateTimeFormat(
                                            "dd/MM/y",
                                            FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencimento,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: FFAppState()
                                                        .VarTblEstabelecimentoLogado
                                                        .planoVencido
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                fontSize:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 12.0
                                                        : 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ].divide((MediaQuery.sizeOf(context).width >
                                        FFAppState()
                                            .varTamanhoMinimoTelaMenuLateral
                                            .toDouble())
                                    ? SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width >
                                                    1200.0
                                                ? 12.0
                                                : 0.0)
                                    : SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).width >
                                                    1200.0
                                                ? 12.0
                                                : 0.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if ((MediaQuery.sizeOf(context).width > 335.0) &&
                          responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                        Builder(
                          builder: (context) =>
                              StreamBuilder<List<TblNotificacoesQuantRow>>(
                            stream: _model
                                    .containerNotificacaoSupabaseStream ??=
                                SupaFlow.client
                                    .from("tbl_notificacoes_quant")
                                    .stream(
                                        primaryKey: ['id', 'user_id', 'tipo'])
                                    .eqOrNull(
                                      'id_estabelecimento',
                                      FFAppState().VarIDEstabelecimentoLogado,
                                    )
                                    .map((list) => list
                                        .map((item) =>
                                            TblNotificacoesQuantRow(item))
                                        .toList()),
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
                              List<TblNotificacoesQuantRow>
                                  containerNotificacaoTblNotificacoesQuantRowList =
                                  snapshot.data!;

                              final containerNotificacaoTblNotificacoesQuantRow =
                                  containerNotificacaoTblNotificacoesQuantRowList
                                          .isNotEmpty
                                      ? containerNotificacaoTblNotificacoesQuantRowList
                                          .first
                                      : null;

                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (MediaQuery.sizeOf(context).width <
                                      FFAppState()
                                          .varTamanhoMinimoTelaMenuLateral
                                          .toDouble()) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: CpNotificacaoWidget(),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: CpNotificacaoWidget(),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 8.0, 4.0, 2.0),
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 0.0, 0.0, 16.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Visibility(
                                              visible:
                                                  (containerNotificacaoTblNotificacoesQuantRow
                                                              ?.quant !=
                                                          null) &&
                                                      (containerNotificacaoTblNotificacoesQuantRow!
                                                              .quant! >
                                                          0),
                                              child: Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    containerNotificacaoTblNotificacoesQuantRow
                                                        ?.quant
                                                        ?.toString(),
                                                    '00',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .readexPro(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if ((isWeb &&
                                                    (FFAppState()
                                                            .varWebOneSignalNotificacoesAtivas &&
                                                        (FFAppState()
                                                                .varWebOneSignalWebStatusNotificacao ==
                                                            'Notificações ativas'))) ||
                                                (!isWeb &&
                                                    FFAppState()
                                                        .varAPPNotificacoesAtivas)
                                            ? true
                                            : false)
                                          Icon(
                                            Icons.notifications_none,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                        if ((isWeb &&
                                                    (!FFAppState()
                                                            .varWebOneSignalNotificacoesAtivas ||
                                                        (FFAppState()
                                                                .varWebOneSignalWebStatusNotificacao !=
                                                            'Notificações ativas'))) ||
                                                (!isWeb &&
                                                    !FFAppState()
                                                        .varAPPNotificacoesAtivas)
                                            ? true
                                            : false)
                                          Icon(
                                            Icons.notifications_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 20.0,
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!);
                            },
                          ),
                        ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.acSairSistemaResultCab3 =
                              await action_blocks.acSairSistema(context);
                          if (_model.acSairSistemaResultCab3!) {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                PgLoginWidget.routeName, context.mounted);
                          }

                          safeSetState(() {});
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (MediaQuery.sizeOf(context).width > 600.0)
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
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            Icon(
                              Icons.exit_to_app,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
            ),
            if ((MediaQuery.sizeOf(context).width <
                    FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 8.0, 8.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'Agenda Super - Admin',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: Visibility(
                            visible: responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.cottage_outlined,
                                color: FlutterFlowTheme.of(context).info,
                                size: 16.0,
                              ),
                            ),
                          ),
                        ),
                        if (currentUserUid != '')
                          Flexible(
                            child: Text(
                              FFAppState()
                                              .VarTblEstabelecimentoLogado
                                              .emailEstabelecimento !=
                                          ''
                                  ? '${FFAppState().VarTblEstabelecimentoLogado.nomeCabecalho} - ${currentUserEmail}'
                                  : currentUserEmail,
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
                                        .txtMenuLateral,
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
                      ],
                    ),
                  ],
                ),
              ),
            if (((FFAppState().VarTblEstabelecimentoLogado.idEstabelecimento >
                        0) &&
                    FFAppState().varMostrarAvisoPgPlanoEstab &&
                    (FFAppState().VarTblEstabelecimentoLogado.planoDiasRest <=
                        (FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .planoRenovacao ==
                                true
                            ? 3
                            : 15))) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0x82FB3340),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Flex(
                      direction: (MediaQuery.sizeOf(context).width < 1250.0
                              ? false
                              : true)
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ),
                          child: Text(
                            'ATENÇÃO! Seu plano expira em 15 dias, para continuar usando faça o pagamento até dia 30/03/2025',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).warning,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Text(
                          () {
                            if (FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .planoVencido ==
                                true) {
                              return 'ATENÇÃO! SEU PLANO VENCEU DIA ${dateTimeFormat(
                                "dd/MM/y",
                                FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .planoVencimento,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )} , FAÇA O PAGAMENTO PARA RENOVAR E CONTINUAR USANDO';
                            } else if (FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .planoDiasRest ==
                                0) {
                              return 'ATENÇÃO! SEU PLANO ESTÁ VENCENDO HOJE, PARA CONTINUAR USANDO FAÇA O PAGAMENTO';
                            } else {
                              return 'ATENÇÃO! SEU PLANO EXPIRA EM ${FFAppState().VarTblEstabelecimentoLogado.planoDiasRest.toString()}${FFAppState().VarTblEstabelecimentoLogado.planoDiasRest == 1 ? ' DIA' : ' DIAS'}, PARA CONTINUAR USANDO FAÇA O PAGAMENTO ATÉ DIA ${dateTimeFormat(
                                "dd/MM/y",
                                FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .planoVencimento,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )}';
                            }
                          }(),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 12.0
                                        : 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.queryPlanosEstab =
                                    await ViewTblAppPlanosEstabelecimentosTable()
                                        .queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'id_estabelecimento',
                                        FFAppState().VarIDEstabelecimentoLogado,
                                      )
                                      .eqOrNull(
                                        'plano_ativo',
                                        true,
                                      ),
                                );

                                safeSetState(() {});
                              },
                              text: 'Pagar',
                              icon: Icon(
                                Icons.monetization_on_outlined,
                                size: 20.0,
                              ),
                              options: FFButtonOptions(
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
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().varMostrarAvisoPgPlanoEstab =
                                    false;
                                safeSetState(() {});
                              },
                              text: 'Fechar',
                              icon: Icon(
                                Icons.close_sharp,
                                size: 20.0,
                              ),
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
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
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Expanded(
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'ATENÇÃO! SEU PLANO VENCEU DIA ${dateTimeFormat(
                                    "dd/MM/y",
                                    FFAppState()
                                        .VarTblEstabelecimentoLogado
                                        .planoVencimento,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )} , FAÇA O PAGAMENTO PARA RENOVAR E CONTINUAR USANDO.',
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
                                            .warning,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                TextSpan(
                                  text: '  CLIQUE AQUI PARA  PAGAR',
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
                                            .secondary,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                )
                              ],
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
                      ].divide((MediaQuery.sizeOf(context).width < 1250.0
                              ? false
                              : true)
                          ? SizedBox(width: 8.0)
                          : SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
            if ((FFAppState().VarTblEstabelecimentoLogado.idEstabelecimento >
                    0) &&
                FFAppState().varMostrarAvisoPgPlanoEstab &&
                (FFAppState().VarTblEstabelecimentoLogado.planoDiasRest <=
                    (FFAppState().VarTblEstabelecimentoLogado.planoRenovacao ==
                            true
                        ? 3
                        : 15)) &&
                () {
                  if ((FFAppState().VarTblEstabelecimentoLogado.assinatura ==
                          true) &&
                      (FFAppState()
                              .VarTblEstabelecimentoLogado
                              .statusPagamento ==
                          'PAGO')) {
                    return false;
                  } else if ((FFAppState()
                              .VarTblEstabelecimentoLogado
                              .assinatura ==
                          true) &&
                      (FFAppState()
                              .VarTblEstabelecimentoLogado
                              .statusPagamento ==
                          'PERIODO TESTE')) {
                    return false;
                  } else if (FFAppState()
                          .VarTblEstabelecimentoLogado
                          .statusPagamento ==
                      'ALTEROU PLANO') {
                    return false;
                  } else if ((FFAppState()
                              .VarTblEstabelecimentoLogado
                              .assinatura ==
                          true) &&
                      (FFAppState()
                              .VarTblEstabelecimentoLogado
                              .statusPagamento !=
                          'PAGO')) {
                    return true;
                  } else if (FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assinatura ==
                      false) {
                    return true;
                  } else {
                    return false;
                  }
                }())
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width <
                              FFAppState()
                                  .varTamanhoMinimoTelaMenuLateral
                                  .toDouble()
                          ? 8.0
                          : 4.0,
                      0.0,
                    ),
                    4.0,
                    valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width <
                              FFAppState()
                                  .varTamanhoMinimoTelaMenuLateral
                                  .toDouble()
                          ? 8.0
                          : 4.0,
                      0.0,
                    ),
                    4.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      (FFAppState().VarTblEstabelecimentoLogado.planoVencido ==
                                  true) ||
                              (FFAppState()
                                      .VarTblEstabelecimentoLogado
                                      .planoDiasRest <=
                                  3)
                          ? FlutterFlowTheme.of(context).error
                          : Color(0x634B39EF),
                      Color(0x634B39EF),
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var _shouldSetState = false;
                                _model.queryPlanosEstab2 =
                                    await ViewTblAppPlanosEstabelecimentosTable()
                                        .queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'id_estabelecimento',
                                        FFAppState().VarIDEstabelecimentoLogado,
                                      )
                                      .eqOrNull(
                                        'plano_ativo',
                                        true,
                                      ),
                                );
                                _shouldSetState = true;
                                if (((_model.queryPlanosEstab2?.firstOrNull
                                                ?.stripeStatus ==
                                            'complete') ||
                                        (_model.queryPlanosEstab2
                                                    ?.firstOrNull?.stripeStatus ==
                                                null ||
                                            _model.queryPlanosEstab2
                                                    ?.firstOrNull?.stripeStatus ==
                                                '')) &&
                                    (_model.queryPlanosEstab2?.firstOrNull
                                            ?.stripeStatusPg ==
                                        'unpaid') &&
                                    (_model.queryPlanosEstab2?.firstOrNull
                                                ?.stripeUrl !=
                                            null &&
                                        _model.queryPlanosEstab2?.firstOrNull
                                                ?.stripeUrl !=
                                            '')) {
                                  if (isWeb) {
                                    await actions.caWebRedirectToUrl(
                                      _model.queryPlanosEstab2!.firstOrNull!
                                          .stripeUrl!,
                                    );
                                  } else {
                                    await launchURL(_model.queryPlanosEstab2!
                                        .firstOrNull!.stripeUrl!);
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  await action_blocks.acAtualizarPlanos(
                                    context,
                                    paramIDAfiliadoApp: 1,
                                  );
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: () {
                                        if (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencido ==
                                            true) {
                                          return 'ATENÇÃO! SEU PLANO VENCEU DIA ${dateTimeFormat(
                                            "dd/MM/y",
                                            FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencimento,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )} .  PARA RENOVAR E CONTINUAR USANDO ';
                                        } else if (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .statusPagamento ==
                                            'AG. PAGAMENTO') {
                                          return 'PERÍODO DE TESTE ATIVO, PARA CONTINUAR USANDO FAÇA O PAGAMENTO ATÉ DIA ${dateTimeFormat(
                                            "dd/MM/y",
                                            FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencimento,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}';
                                        } else if (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoDiasRest ==
                                            0) {
                                          return 'ATENÇÃO! SEU PLANO ESTÁ VENCENDO HOJE, PARA CONTINUAR USANDO ';
                                        } else {
                                          return 'ATENÇÃO! SEU PLANO EXPIRA EM ${FFAppState().VarTblEstabelecimentoLogado.planoDiasRest.toString()}${FFAppState().VarTblEstabelecimentoLogado.planoDiasRest == 1 ? ' DIA' : ' DIAS'}, PARA CONTINUAR USANDO FAÇA O PAGAMENTO ATÉ DIA ${dateTimeFormat(
                                            "dd/MM/y",
                                            FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencimento,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}. ';
                                        }
                                      }(),
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
                                                .warning,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .varTamanhoMinimoTelaMenuLateral
                                                        .toDouble()
                                                ? 14.0
                                                : 12.0,
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
                                    TextSpan(
                                      text: () {
                                        if (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoVencido ==
                                            true) {
                                          return 'CLIQUE AQUI E FAÇA O PAGAMENTO ';
                                        } else if (FFAppState()
                                                .VarTblEstabelecimentoLogado
                                                .planoDiasRest ==
                                            0) {
                                          return 'CLIQUE AQUI E FAÇA O PAGAMENTO ';
                                        } else {
                                          return 'CLIQUE AQUI PARA PAGAR';
                                        }
                                      }(),
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
                                                .secondary,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .varTamanhoMinimoTelaMenuLateral
                                                        .toDouble()
                                                ? 14.0
                                                : 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    )
                                  ],
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
                                        fontSize: MediaQuery.sizeOf(context)
                                                    .width >=
                                                FFAppState()
                                                    .varTamanhoMinimoTelaMenuLateral
                                                    .toDouble()
                                            ? 14.0
                                            : 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                textAlign: TextAlign.center,
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
                            FFAppState().varMostrarAvisoPgPlanoEstab = false;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
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
