import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/admin/a_sistema/home/cp_foto/cp_foto_widget.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cp_cad_temas_blackgroundx_model.dart';
export 'cp_cad_temas_blackgroundx_model.dart';

class CpCadTemasBlackgroundxWidget extends StatefulWidget {
  const CpCadTemasBlackgroundxWidget({
    super.key,
    required this.paramCadastro,
    this.paramRowTblTemasBlackground,
  });

  final bool? paramCadastro;
  final TblAppTemasBlackgroundRow? paramRowTblTemasBlackground;

  @override
  State<CpCadTemasBlackgroundxWidget> createState() =>
      _CpCadTemasBlackgroundxWidgetState();
}

class _CpCadTemasBlackgroundxWidgetState
    extends State<CpCadTemasBlackgroundxWidget> {
  late CpCadTemasBlackgroundxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCadTemasBlackgroundxModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.varSituacao = widget.paramRowTblTemasBlackground!.situacao!;
      _model.varIDSegmentosLiberados =
          widget.paramRowTblTemasBlackground!.idSegmentos.toList().cast<int>();
      safeSetState(() {});
    });

    _model.textController ??=
        TextEditingController(text: widget.paramRowTblTemasBlackground?.nome);
    _model.textFieldFocusNode ??= FocusNode();

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
        height: MediaQuery.sizeOf(context).height * 1.0,
        constraints: BoxConstraints(
          maxWidth: 550.0,
          maxHeight: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 1000.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 800.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 800.0;
            } else {
              return 800.0;
            }
          }(),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).colorGradient1,
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
                            if (FFAppState().VarAbrirJanelasWebAndroid ==
                                true) {
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 0.0, 8.0),
                          child: Text(
                            'Cadastro de Temas (Blackground)',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Nome do tema',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
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
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 400.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final selectedMedia = await selectMedia(
                                      storageFolderPath: 'temas',
                                      imageQuality: 100,
                                      mediaSource: MediaSource.photoGallery,
                                      multiImage: false,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      safeSetState(() => _model
                                              .isDataUploading_uploadDataLigth =
                                          true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls =
                                            await uploadSupabaseStorageFiles(
                                          bucketName: 'fotos',
                                          selectedFiles: selectedMedia,
                                        );
                                      } finally {
                                        _model.isDataUploading_uploadDataLigth =
                                            false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile_uploadDataLigth =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl_uploadDataLigth =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        safeSetState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        () {
                                          if (_model.uploadedFileUrl_uploadDataLigth !=
                                                  '') {
                                            return _model
                                                .uploadedFileUrl_uploadDataLigth;
                                          } else if ((widget.paramCadastro ==
                                                  false) &&
                                              (widget.paramRowTblTemasBlackground
                                                          ?.fotoLightMode !=
                                                      null &&
                                                  widget.paramRowTblTemasBlackground
                                                          ?.fotoLightMode !=
                                                      '')) {
                                            return widget
                                                .paramRowTblTemasBlackground
                                                ?.fotoLightMode;
                                          } else {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/0re14cv09a0l/sem-foto.gif';
                                          }
                                        }(),
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/0re14cv09a0l/sem-foto.gif',
                                      ),
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      fit: BoxFit.cover,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      'Foto Modo Claro',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.uploadedFileUrl_uploadDataLigth !=
                                                '') {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: CpFotoWidget(
                                                  paramFoto: _model
                                                      .uploadedFileUrl_uploadDataLigth,
                                                ),
                                              );
                                            },
                                          );

                                          return;
                                        }
                                        if (widget.paramRowTblTemasBlackground
                                                    ?.fotoLightMode !=
                                                null &&
                                            widget.paramRowTblTemasBlackground
                                                    ?.fotoLightMode !=
                                                '') {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: CpFotoWidget(
                                                  paramFoto: widget
                                                      .paramRowTblTemasBlackground!
                                                      .fotoLightMode!,
                                                ),
                                              );
                                            },
                                          );

                                          return;
                                        } else {
                                          await action_blocks.acMensagemDialog(
                                            context,
                                            paramTitulo: 'Atenção!',
                                            paramMensagem: 'Insira uma foto',
                                            paramVerCarrinho: false,
                                            paramTipo: 'erro',
                                            paramPadrao: false,
                                          );
                                        }
                                      },
                                      text: '',
                                      icon: Icon(
                                        Icons.zoom_in_map,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x004B39EF),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Segmentos',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                    FutureBuilder<List<TblAppSegmentosRow>>(
                                      future: TblAppSegmentosTable().queryRows(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'situacao',
                                              true,
                                            )
                                            .order('ordem', ascending: true),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<TblAppSegmentosRow>
                                            staggeredViewServLibTblAppSegmentosRowList =
                                            snapshot.data!;

                                        if (staggeredViewServLibTblAppSegmentosRowList
                                            .isEmpty) {
                                          return CpSemCadastroWidget(
                                            paramTexto:
                                                'Nenhum serviço cadastrado...',
                                          );
                                        }

                                        return MasonryGridView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                          ),
                                          crossAxisSpacing: 8.0,
                                          itemCount:
                                              staggeredViewServLibTblAppSegmentosRowList
                                                  .length,
                                          shrinkWrap: true,
                                          itemBuilder: (context,
                                              staggeredViewServLibIndex) {
                                            final staggeredViewServLibTblAppSegmentosRow =
                                                staggeredViewServLibTblAppSegmentosRowList[
                                                    staggeredViewServLibIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (_model
                                                        .varIDSegmentosLiberados
                                                        .contains(
                                                            staggeredViewServLibTblAppSegmentosRow
                                                                .id) ==
                                                    false) {
                                                  _model.addToVarIDSegmentosLiberados(
                                                      staggeredViewServLibTblAppSegmentosRow
                                                          .id);
                                                  safeSetState(() {});
                                                } else {
                                                  _model.removeFromVarIDSegmentosLiberados(
                                                      staggeredViewServLibTblAppSegmentosRow
                                                          .id);
                                                  safeSetState(() {});
                                                }
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (_model
                                                          .varIDSegmentosLiberados
                                                          .contains(
                                                              staggeredViewServLibTblAppSegmentosRow
                                                                  .id) ==
                                                      true)
                                                    Icon(
                                                      Icons.check_box_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      size: 24.0,
                                                    ),
                                                  if (_model
                                                          .varIDSegmentosLiberados
                                                          .contains(
                                                              staggeredViewServLibTblAppSegmentosRow
                                                                  .id) ==
                                                      false)
                                                    Icon(
                                                      Icons
                                                          .check_box_outline_blank_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      size: 24.0,
                                                    ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          staggeredViewServLibTblAppSegmentosRow
                                                              .nome,
                                                          '...',
                                                        ),
                                                        maxLines: 1,
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
                                                                  color: _model.varIDSegmentosLiberados.contains(staggeredViewServLibTblAppSegmentosRow
                                                                              .id) ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .success
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
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
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
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
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 220.0,
                                maxHeight: 300.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        storageFolderPath: 'temas',
                                        imageQuality: 80,
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        safeSetState(() => _model
                                                .isDataUploading_uploadDataDark =
                                            true);
                                        var selectedUploadedFiles =
                                            <FFUploadedFile>[];

                                        var downloadUrls = <String>[];
                                        try {
                                          selectedUploadedFiles = selectedMedia
                                              .map((m) => FFUploadedFile(
                                                    name: m.storagePath
                                                        .split('/')
                                                        .last,
                                                    bytes: m.bytes,
                                                    height:
                                                        m.dimensions?.height,
                                                    width: m.dimensions?.width,
                                                    blurHash: m.blurHash,
                                                  ))
                                              .toList();

                                          downloadUrls =
                                              await uploadSupabaseStorageFiles(
                                            bucketName: 'fotos',
                                            selectedFiles: selectedMedia,
                                          );
                                        } finally {
                                          _model.isDataUploading_uploadDataDark =
                                              false;
                                        }
                                        if (selectedUploadedFiles.length ==
                                                selectedMedia.length &&
                                            downloadUrls.length ==
                                                selectedMedia.length) {
                                          safeSetState(() {
                                            _model.uploadedLocalFile_uploadDataDark =
                                                selectedUploadedFiles.first;
                                            _model.uploadedFileUrl_uploadDataDark =
                                                downloadUrls.first;
                                          });
                                        } else {
                                          safeSetState(() {});
                                          return;
                                        }
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          () {
                                            if (_model.uploadedFileUrl_uploadDataDark !=
                                                    '') {
                                              return _model
                                                  .uploadedFileUrl_uploadDataDark;
                                            } else if ((widget.paramCadastro ==
                                                    false) &&
                                                (widget.paramRowTblTemasBlackground
                                                            ?.fotoDarkMod !=
                                                        null &&
                                                    widget.paramRowTblTemasBlackground
                                                            ?.fotoDarkMod !=
                                                        '')) {
                                              return widget
                                                  .paramRowTblTemasBlackground
                                                  ?.fotoDarkMod;
                                            } else {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/j8m1iuzdas98/sem-foto.jpg';
                                            }
                                          }(),
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agenda-super-admin-0zp7nv/assets/j8m1iuzdas98/sem-foto.jpg',
                                        ),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.45,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      'Foto Modo Escuro',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) => Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 210.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.uploadedFileUrl_uploadDataDark !=
                                                  '') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: CpFotoWidget(
                                                    paramFoto: _model
                                                        .uploadedFileUrl_uploadDataDark,
                                                  ),
                                                );
                                              },
                                            );

                                            return;
                                          }
                                          if (widget.paramRowTblTemasBlackground
                                                      ?.fotoDarkMod !=
                                                  null &&
                                              widget.paramRowTblTemasBlackground
                                                      ?.fotoDarkMod !=
                                                  '') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: CpFotoWidget(
                                                    paramFoto: widget
                                                        .paramRowTblTemasBlackground!
                                                        .fotoDarkMod!,
                                                  ),
                                                );
                                              },
                                            );

                                            return;
                                          } else {
                                            await action_blocks
                                                .acMensagemDialog(
                                              context,
                                              paramTitulo: 'Atenção!',
                                              paramMensagem: 'Insira uma foto',
                                              paramVerCarrinho: false,
                                              paramTipo: 'erro',
                                              paramPadrao: false,
                                            );
                                          }
                                        },
                                        text: '',
                                        icon: Icon(
                                          Icons.zoom_in_map,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0x004B39EF),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'Situação',
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
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.varSituacao = !_model.varSituacao;
                          safeSetState(() {});
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.varSituacao)
                              Icon(
                                Icons.check_box_outlined,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              ),
                            if (!_model.varSituacao)
                              Icon(
                                Icons.check_box_outline_blank_rounded,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Ativo',
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
                                      color: _model.varSituacao
                                          ? FlutterFlowTheme.of(context).success
                                          : FlutterFlowTheme.of(context).error,
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
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.textController.text == '') {
                              await action_blocks.acMensagemDialog(
                                context,
                                paramTitulo: 'Atenção!',
                                paramMensagem: 'Informe o nome',
                                paramVerCarrinho: false,
                                paramTipo: 'erro',
                                paramPadrao: false,
                              );
                              return;
                            }
                            if (widget.paramCadastro! &&
                                (_model.uploadedFileUrl_uploadDataLigth ==
                                        '')) {
                              await action_blocks.acMensagemDialog(
                                context,
                                paramTitulo: 'Atenção!',
                                paramMensagem:
                                    'Insira uma foto para o Modo Claro',
                                paramVerCarrinho: false,
                                paramTipo: 'erro',
                                paramPadrao: false,
                              );
                              return;
                            }
                            if (_model.varIDSegmentosLiberados.length == 0) {
                              await action_blocks.acMensagemDialog(
                                context,
                                paramTitulo: 'Atenção!',
                                paramMensagem:
                                    'Selecione pelo menos um segmento',
                                paramVerCarrinho: false,
                                paramTipo: 'erro',
                                paramPadrao: false,
                              );
                              return;
                            }
                            if (widget.paramCadastro!) {
                              await TblAppTemasBlackgroundTable().insert({
                                'nome': _model.textController.text,
                                'foto_light_mode':
                                    _model.uploadedFileUrl_uploadDataLigth,
                                'situacao': _model.varSituacao,
                                'foto_dark_mod':
                                    'https://hzmixuvrnzpypriagecv.supabase.co/storage/v1/object/public/fotos/temas/1728593485779000.jpg',
                                'id_segmentos': _model.varIDSegmentosLiberados,
                              });
                              safeSetState(() {
                                _model.isDataUploading_uploadDataDark = false;
                                _model.uploadedLocalFile_uploadDataDark =
                                    FFUploadedFile(
                                        bytes: Uint8List.fromList([]));
                                _model.uploadedFileUrl_uploadDataDark = '';
                              });

                              safeSetState(() {
                                _model.isDataUploading_uploadDataLigth = false;
                                _model.uploadedLocalFile_uploadDataLigth =
                                    FFUploadedFile(
                                        bytes: Uint8List.fromList([]));
                                _model.uploadedFileUrl_uploadDataLigth = '';
                              });

                              safeSetState(() {
                                _model.textController?.clear();
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Tema adicionado com sucesso...',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 2000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              await TblAppTemasBlackgroundTable().update(
                                data: {
                                  'nome': _model.textController.text,
                                  'foto_light_mode':
                                      _model.uploadedFileUrl_uploadDataLigth !=
                                                  ''
                                          ? _model
                                              .uploadedFileUrl_uploadDataLigth
                                          : widget.paramRowTblTemasBlackground
                                              ?.fotoLightMode,
                                  'situacao': _model.varSituacao,
                                  'id_segmentos':
                                      _model.varIDSegmentosLiberados,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.paramRowTblTemasBlackground?.id,
                                ),
                              );
                              if (FFAppState().VarAbrirJanelasWebAndroid ==
                                  true) {
                                context.safePop();
                                Navigator.pop(context);
                              } else {
                                Navigator.pop(context);
                              }

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Salvo com sucesso...',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 2000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          },
                          text: 'Salvar',
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
                    ],
                  ),
                ),
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall)
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 30.0,
                    decoration: BoxDecoration(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
