import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_nota_fiscal_model.dart';
export 'cp_nota_fiscal_model.dart';

class CpNotaFiscalWidget extends StatefulWidget {
  const CpNotaFiscalWidget({super.key});

  @override
  State<CpNotaFiscalWidget> createState() => _CpNotaFiscalWidgetState();
}

class _CpNotaFiscalWidgetState extends State<CpNotaFiscalWidget> {
  late CpNotaFiscalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpNotaFiscalModel());

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
            maxWidth: 600.0,
            maxHeight: () {
              if (MediaQuery.sizeOf(context).width <
                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble()) {
                return (MediaQuery.sizeOf(context).height * 0.9);
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
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                      child: Text(
                        'NF Eletrónica',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
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
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      'https://blog.tecnospeed.com.br/wp-content/uploads/2019/07/DANFE-FISCAL.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'OK',
                  icon: Icon(
                    Icons.check,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).success,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
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
