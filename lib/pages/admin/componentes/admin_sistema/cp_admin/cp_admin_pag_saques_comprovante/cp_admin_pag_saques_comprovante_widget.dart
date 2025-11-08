import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/admin/a_sistema/home/cp_foto/cp_foto_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_admin_pag_saques_comprovante_model.dart';
export 'cp_admin_pag_saques_comprovante_model.dart';

class CpAdminPagSaquesComprovanteWidget extends StatefulWidget {
  const CpAdminPagSaquesComprovanteWidget({
    super.key,
    required this.paramRowViewTblAfiliadoSaque,
  });

  final ViewTblAfiliadoPgSaquesRow? paramRowViewTblAfiliadoSaque;

  @override
  State<CpAdminPagSaquesComprovanteWidget> createState() =>
      _CpAdminPagSaquesComprovanteWidgetState();
}

class _CpAdminPagSaquesComprovanteWidgetState
    extends State<CpAdminPagSaquesComprovanteWidget> {
  late CpAdminPagSaquesComprovanteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAdminPagSaquesComprovanteModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.varComprovante = widget.paramRowViewTblAfiliadoSaque?.comprovante;
      safeSetState(() {});
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
                  FlutterFlowTheme.of(context).colorGradPage2
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
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
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pagamento de comissão afiliado',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.numbers_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.paramRowViewTblAfiliadoSaque?.id
                                          ?.toString(),
                                      '...',
                                    ),
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
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                dateTimeFormat(
                                  "dd/M/y H:mm",
                                  widget.paramRowViewTblAfiliadoSaque!
                                      .dataCadastro!,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
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
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.paramRowViewTblAfiliadoSaque?.nome,
                                  '...',
                                ),
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
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                '${valueOrDefault<String>(
                                  widget.paramRowViewTblAfiliadoSaque?.tipoDoc,
                                  '...',
                                )}: ${valueOrDefault<String>(
                                  widget
                                      .paramRowViewTblAfiliadoSaque?.docCpfCnpj,
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                formatNumber(
                                  widget.paramRowViewTblAfiliadoSaque!.valor!,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'R\$',
                                ),
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
                                          FlutterFlowTheme.of(context).success,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_model.varComprovante == null ||
                          _model.varComprovante == '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              safeSetState(() {
                                _model.isDataUploading_uploadDataComprovantePG =
                                    false;
                                _model.uploadedLocalFile_uploadDataComprovantePG =
                                    FFUploadedFile(
                                        bytes: Uint8List.fromList([]),
                                        originalFilename: '');
                                _model.uploadedFileUrl_uploadDataComprovantePG =
                                    '';
                              });

                              final selectedMedia = await selectMedia(
                                storageFolderPath: 'comprovantes_pag_saques',
                                maxWidth: 400.00,
                                maxHeight: 800.00,
                                imageQuality: 90,
                                mediaSource: MediaSource.photoGallery,
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                safeSetState(() => _model
                                        .isDataUploading_uploadDataComprovantePG =
                                    true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                            originalFilename:
                                                m.originalFilename,
                                          ))
                                      .toList();

                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'fotos',
                                    selectedFiles: selectedMedia,
                                  );
                                } finally {
                                  _model.isDataUploading_uploadDataComprovantePG =
                                      false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  safeSetState(() {
                                    _model.uploadedLocalFile_uploadDataComprovantePG =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl_uploadDataComprovantePG =
                                        downloadUrls.first;
                                  });
                                } else {
                                  safeSetState(() {});
                                  return;
                                }
                              }

                              if (_model.uploadedFileUrl_uploadDataComprovantePG !=
                                      '') {
                                await TblAfiliadosSaquesTable().update(
                                  data: {
                                    'comprovante': _model
                                        .uploadedFileUrl_uploadDataComprovantePG,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id',
                                    widget.paramRowViewTblAfiliadoSaque?.id,
                                  ),
                                );
                                _model.varComprovante = _model
                                    .uploadedFileUrl_uploadDataComprovantePG;
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Comprovante anexado com sucesso',
                                      style: TextStyle(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            text: 'Adicionar comprovante',
                            icon: Icon(
                              Icons.post_add,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
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
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      if (_model.varComprovante != null &&
                          _model.varComprovante != '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
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
                                                  'Deseja excluir o comprovante de pagamento?'),
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
                                await TblAfiliadosSaquesTable().update(
                                  data: {
                                    'comprovante': null,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id',
                                    widget.paramRowViewTblAfiliadoSaque?.id,
                                  ),
                                );
                                _model.varComprovante = null;
                                safeSetState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Comprovante excluído...',
                                      style: TextStyle(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            text: 'Deletear comprovante',
                            icon: Icon(
                              Icons.delete_forever_sharp,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
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
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Flexible(
                    child: Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.varComprovante != null &&
                                _model.varComprovante != '') {
                              await showDialog(
                                barrierColor: FlutterFlowTheme.of(context)
                                    .customFundoShowComponentes,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: CpFotoWidget(
                                        paramFoto: _model.varComprovante!,
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text('Sem comprovante...'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                _model.varComprovante,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (widget.paramRowViewTblAfiliadoSaque?.statusPagamento ==
                      'SOLICITADO')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.varComprovante == null ||
                              _model.varComprovante == '') {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Atenção!'),
                                    content: Text('Anexe um comprovante!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                            return;
                          }
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text(
                                          'Confirma o pagamento da comissão de ${formatNumber(
                                        widget.paramRowViewTblAfiliadoSaque
                                            ?.valor,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.commaDecimal,
                                        currency: 'R\$',
                                      )} do afiliado ${widget.paramRowViewTblAfiliadoSaque?.nome}?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Não'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Sim'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            await TblAfiliadosSaquesTable().update(
                              data: {
                                'status_pagamento': 'PAGO',
                                'data_pagamento': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                widget.paramRowViewTblAfiliadoSaque?.id,
                              ),
                            );
                            await TblAfiliadosComissoesTable().update(
                              data: {
                                'status_pg_comissao': 'PAGO',
                              },
                              matchingRows: (rows) => rows
                                  .eqOrNull(
                                    'id_afiliado_indicador',
                                    widget.paramRowViewTblAfiliadoSaque
                                        ?.idAfiliado,
                                  )
                                  .eqOrNull(
                                    'id_saque',
                                    widget.paramRowViewTblAfiliadoSaque?.id,
                                  ),
                            );
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Pagamento realizado com sucesso...',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).info,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                duration: Duration(milliseconds: 2000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        },
                        text: 'Confirmar Pagamento',
                        icon: Icon(
                          Icons.check,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).success,
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
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
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
