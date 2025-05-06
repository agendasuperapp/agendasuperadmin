import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_cpf/cp_afiliado_cpf_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_afiliado_apesentacao_model.dart';
export 'cp_afiliado_apesentacao_model.dart';

class CpAfiliadoApesentacaoWidget extends StatefulWidget {
  const CpAfiliadoApesentacaoWidget({super.key});

  @override
  State<CpAfiliadoApesentacaoWidget> createState() =>
      _CpAfiliadoApesentacaoWidgetState();
}

class _CpAfiliadoApesentacaoWidgetState
    extends State<CpAfiliadoApesentacaoWidget> {
  late CpAfiliadoApesentacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAfiliadoApesentacaoModel());

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

    return Stack(
      alignment: AlignmentDirectional(1.0, 1.0),
      children: [
        Align(
          alignment: AlignmentDirectional(
              0.0,
              valueOrDefault<double>(
                () {
                  if ((isWeb == true) &&
                      (FFAppState().VarTblDispositivoInformacoes.osName ==
                          'Android')) {
                    return -1.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointSmall) {
                    return 1.0;
                  } else {
                    return 0.0;
                  }
                }(),
                0.0,
              )),
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
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/qgwe4s1vqhgi/1.jpg',
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  fit: BoxFit.cover,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 8.0
                                            : 50.0,
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 8.0
                                            : 50.0,
                                        0.0,
                                      )),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('ButtonInscrever pressed ...');
                                    },
                                    text: 'Inscrever-se',
                                    icon: Icon(
                                      Icons.add_task,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 40.0
                                          : 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall
                                                ? 16.0
                                                : 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/g5c96atlg7oh/2.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/vsd4u2zk3lt7/3.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/i6mkybm7rkxi/4.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/9fdjeqgmb42s/5.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/okn2b1j39ehv/6.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/6eivqddbevsp/7.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/hpcmn18xzdsl/8.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/julng2u6sm1x/9.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Stack(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/68bg38718ju6/10.jpg',
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  fit: BoxFit.cover,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 8.0
                                            : 50.0,
                                        0.0,
                                      ),
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 8.0
                                            : 50.0,
                                        0.0,
                                      )),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('ButtonInscrever pressed ...');
                                    },
                                    text: 'Inscrever-se',
                                    icon: Icon(
                                      Icons.add_task,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 40.0
                                          : 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall
                                                ? 16.0
                                                : 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/gi80xmtqyso3/1-Celular.png',
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/p6g744kjexy5/2-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/tzvl8u1yoegs/3-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/qs6ahfi44grf/4-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/l6j87gsgonnd/5-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/fo3w2lhe3sxi/6-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/d3beyknhomeo/7-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/bbwnyqb75au0/8-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/r6epzdjtmx44/9-Celular.png',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Stack(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/hpxj3rjed88g/10-Celular.png',
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  fit: BoxFit.cover,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 150.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('ButtonInscrever pressed ...');
                                    },
                                    text: 'Inscrever-se',
                                    icon: Icon(
                                      Icons.add_task,
                                      size: 30.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 40.0
                                          : 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall
                                                ? 16.0
                                                : 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
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
          ),
        ),
        if ((FFAppState().varTblAfiliado.id == null) ||
            (FFAppState().varTblAfiliado.id == 0))
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await showDialog(
                    barrierColor: Color(0x7F000000),
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        child: WebViewAware(
                          child: CpAfiliadoCpfWidget(),
                        ),
                      );
                    },
                  );
                },
                text: 'Inscrever-se',
                icon: Icon(
                  Icons.add_task,
                  size: 24.0,
                ),
                options: FFButtonOptions(
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xDD4B39EF),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.readexPro(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
