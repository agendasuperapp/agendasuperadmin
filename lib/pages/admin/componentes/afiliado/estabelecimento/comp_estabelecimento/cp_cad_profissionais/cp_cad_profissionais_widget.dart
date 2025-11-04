import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_configurar_hr_padrao/cp_configurar_hr_padrao_widget.dart';
import '/pages/calendario/cp_calendario_personalizado/cp_calendario_personalizado_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'cp_cad_profissionais_model.dart';
export 'cp_cad_profissionais_model.dart';

class CpCadProfissionaisWidget extends StatefulWidget {
  const CpCadProfissionaisWidget({
    super.key,
    bool? paramCadastro,
    this.paramIDProfissional,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final int? paramIDProfissional;

  @override
  State<CpCadProfissionaisWidget> createState() =>
      _CpCadProfissionaisWidgetState();
}

class _CpCadProfissionaisWidgetState extends State<CpCadProfissionaisWidget>
    with TickerProviderStateMixin {
  late CpCadProfissionaisModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCadProfissionaisModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.paramCadastro == false) {
        _model.queryConsServLib =
            await TblProfissionaisServLibTable().queryRows(
          queryFn: (q) => q
              .eqOrNull(
                'id_estabelecimento',
                FFAppState().VarIDEstabelecimentoLogado,
              )
              .eqOrNull(
                'id_profissional',
                widget.paramIDProfissional,
              ),
        );
        _model.varContadorCdProfissionais = 0;
        _model.varTblProfissionalServLib = [];
        safeSetState(() {});
        while (_model.varContadorCdProfissionais <
            _model.queryConsServLib!.length) {
          _model.addToVarTblProfissionalServLib(TblProfissionalServLibStruct(
            idProfissional: widget.paramIDProfissional,
            idServico: _model.queryConsServLib
                ?.elementAtOrNull(_model.varContadorCdProfissionais)
                ?.idServico,
            usuarioLiberou: _model.queryConsServLib
                ?.elementAtOrNull(_model.varContadorCdProfissionais)
                ?.usuarioLiberou,
            dataCadastro: _model.queryConsServLib
                ?.elementAtOrNull(_model.varContadorCdProfissionais)
                ?.dataCadastro,
          ));
          safeSetState(() {});
          _model.varContadorCdProfissionais =
              _model.varContadorCdProfissionais + 1;
          safeSetState(() {});
        }
        _model.queryTbProfissionais = await TblProfissionaisTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.paramIDProfissional,
          ),
        );
        _model.varIDProfissional = _model.queryTbProfissionais!.firstOrNull!.id;
        _model.varSituacaoCadastro =
            _model.queryTbProfissionais!.firstOrNull!.situacao!;
        safeSetState(() {});
        safeSetState(() {
          _model.textFieldNomeTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.nome;
        });
        safeSetState(() {
          _model.textFieldIDTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.id.toString();
        });
        safeSetState(() {
          _model.textFieldDescricaoTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.descricao!;
        });
        safeSetState(() {
          _model.textFieldInstagramTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.instagram!;
        });
        safeSetState(() {
          _model.textFieldWhatsappTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.whatsapp!;
          _model.textFieldWhatsappMask.updateMask(
            newValue: TextEditingValue(
              text: _model.textFieldWhatsappTextController!.text,
            ),
          );
        });
        safeSetState(() {
          _model.textFieldTikTokTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.tiktok!;
        });
        safeSetState(() {
          _model.textFieldFacebookTextController?.text =
              _model.queryTbProfissionais!.firstOrNull!.facebook!;
        });
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.textFieldNomeTextController ??= TextEditingController();
    _model.textFieldNomeFocusNode ??= FocusNode();

    _model.textFieldIDTextController ??= TextEditingController();
    _model.textFieldIDFocusNode ??= FocusNode();

    _model.textFieldDescricaoTextController ??= TextEditingController();
    _model.textFieldDescricaoFocusNode ??= FocusNode();

    _model.textFieldWhatsappTextController ??= TextEditingController();
    _model.textFieldWhatsappFocusNode ??= FocusNode();

    _model.textFieldWhatsappMask =
        MaskTextInputFormatter(mask: '(##) #####-####');
    _model.textFieldInstagramTextController ??= TextEditingController();
    _model.textFieldInstagramFocusNode ??= FocusNode();

    _model.textFieldFacebookTextController ??= TextEditingController();
    _model.textFieldFacebookFocusNode ??= FocusNode();

    _model.textFieldTikTokTextController ??= TextEditingController();
    _model.textFieldTikTokFocusNode ??= FocusNode();

    _model.textFieldHoraPadraoOp1TextController ??= TextEditingController();
    _model.textFieldHoraPadraoOp1FocusNode ??= FocusNode();
    _model.textFieldHoraPadraoOp1FocusNode!.addListener(
      () async {
        _model.varHoraSelecionadaPadrao = '0';
        _model.varDiaSelecionadoPadrao = '0';
        safeSetState(() {});
      },
    );
    _model.textFieldHoraPadraoOp1Mask = MaskTextInputFormatter(mask: '##:##');
    _model.textFieldHoraPadraoOp2TextController ??= TextEditingController();
    _model.textFieldHoraPadraoOp2FocusNode ??= FocusNode();
    _model.textFieldHoraPadraoOp2FocusNode!.addListener(
      () async {
        _model.varHoraSelecionadaPadrao = '0';
        _model.varDiaSelecionadoPadrao = '0';
        safeSetState(() {});
      },
    );
    _model.textFieldHoraPadraoOp2Mask = MaskTextInputFormatter(mask: '##:##');
    _model.textFieldHoraDispTextController ??= TextEditingController();
    _model.textFieldHoraDispFocusNode ??= FocusNode();
    _model.textFieldHoraDispFocusNode!.addListener(
      () async {
        _model.varHoraSelecionadaPadrao = '0';
        _model.varDiaSelecionadoPadrao = '0';
        _model.varHoraSelecionadaDisponivel = '0';
        _model.varDiaSelecionadoDisponivel = '0';
        safeSetState(() {});
      },
    );
    _model.textFieldHoraDispMask = MaskTextInputFormatter(mask: '##:##');
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
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(115.0, 0.0),
          ),
        ],
      ),
      'staggeredViewOnPageLoadAnimation': AnimationInfo(
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
      'columnOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation1': AnimationInfo(
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
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(-12.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(-12.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 1.0 : 0.0,
            0.0,
          )),
      child: Container(
        width: 550.0,
        constraints: BoxConstraints(
          maxHeight: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return (FFAppState()
                          .VarTblEstabelecimentoLogado
                          .assistenteCadConcluido ==
                      true
                  ? 1000.0
                  : 650.0);
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
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                  child: Text(
                    'Cadastro de Profissionais',
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
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: SingleChildScrollView(
                controller: _model.columnPaginaScrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: false,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                labelColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent1,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                elevation: 0.0,
                                buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                padding: EdgeInsets.all(4.0),
                                tabs: [
                                  Tab(
                                    text: 'Cadastro',
                                    icon: Icon(
                                      Icons.person_3_outlined,
                                    ),
                                  ),
                                  Tab(
                                    text: 'Horários  \n Padrões',
                                    icon: Icon(
                                      Icons.access_time_outlined,
                                    ),
                                  ),
                                  Tab(
                                    text: ' Liberar \nHorários',
                                    icon: Icon(
                                      Icons.more_time,
                                    ),
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [
                                    () async {},
                                    () async {
                                      _model.varHoraSelecionadaDisponivel = '0';
                                      _model.varDiaSelecionadoDisponivel = '0';
                                      safeSetState(() {});
                                      if (widget.paramCadastro &&
                                          !_model.varCadastroConcluido) {
                                        safeSetState(() {
                                          _model.tabBarController!.animateTo(
                                            0,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                        });

                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Atenção!'),
                                              content: Text(
                                                  'Conclua e salve o cadastro!'),
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
                                        return;
                                      }
                                      if (kDebugMode) {
                                        await action_blocks
                                            .acCadastrarHrFuncionamento(
                                                context);
                                      }
                                      _model.varContadorCadProf = 0;
                                      safeSetState(() {});
                                      while (_model.varContadorCadProf < 7) {
                                        await TblHorariosPadraoTable().insert({
                                          'id_estabelecimento': FFAppState()
                                              .VarIDEstabelecimentoLogado,
                                          'id_profissional':
                                              _model.varIDProfissional,
                                          'dia_semana': () {
                                            if (_model.varContadorCadProf ==
                                                0) {
                                              return 'DOM';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                1) {
                                              return 'SEG';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                2) {
                                              return 'TER';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                3) {
                                              return 'QUA';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                4) {
                                              return 'QUI';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                5) {
                                              return 'SEX';
                                            } else if (_model
                                                    .varContadorCadProf ==
                                                6) {
                                              return 'SÁB';
                                            } else {
                                              return '0';
                                            }
                                          }(),
                                          'hora': 'xxx',
                                          'situacao': false,
                                          'ordem': functions.fcSomarNumeros(
                                              _model.varContadorCadProf, 1),
                                          'user_id': FFAppState()
                                              .VarTblEstabelecimentoLogado
                                              .userId,
                                        });
                                        _model.varContadorCadProf =
                                            _model.varContadorCadProf + 1;
                                        safeSetState(() {});
                                      }
                                      _model.varContadorCadProf = 0;
                                      safeSetState(() {});
                                      FFAppState().varTblHorarioFuncionamento =
                                          [];
                                      safeSetState(() {});
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 250,
                                        ),
                                      );
                                      safeSetState(() =>
                                          _model.requestCompleter1 = null);
                                      await _model.waitForRequestCompleted1();
                                      safeSetState(() =>
                                          _model.requestCompleter2 = null);
                                      await _model.waitForRequestCompleted2();
                                    },
                                    () async {
                                      _model.varHoraSelecionadaDisponivel = '0';
                                      _model.varDiaSelecionadoDisponivel = '0';
                                      safeSetState(() {});
                                      if (widget.paramCadastro &&
                                          !_model.varCadastroConcluido) {
                                        safeSetState(() {
                                          _model.tabBarController!.animateTo(
                                            0,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                        });

                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Atenção!'),
                                              content: Text(
                                                  'Conclua e salve o cadastro!!!'),
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
                                      if (_model.tabBarCurrentIndex == 2) {
                                        safeSetState(() =>
                                            _model.requestCompleter3 = null);
                                        await _model.waitForRequestCompleted3();
                                      }
                                    }
                                  ][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 200.0,
                                                    maxHeight: 200.0,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        final selectedMedia =
                                                            await selectMedia(
                                                          storageFolderPath:
                                                              'profissionais',
                                                          maxWidth: 500.00,
                                                          maxHeight: 500.00,
                                                          imageQuality: 80,
                                                          mediaSource:
                                                              MediaSource
                                                                  .photoGallery,
                                                          multiImage: false,
                                                        );
                                                        if (selectedMedia !=
                                                                null &&
                                                            selectedMedia.every((m) =>
                                                                validateFileFormat(
                                                                    m.storagePath,
                                                                    context))) {
                                                          safeSetState(() =>
                                                              _model.isDataUploading_uploadDataProfissionais =
                                                                  true);
                                                          var selectedUploadedFiles =
                                                              <FFUploadedFile>[];

                                                          var downloadUrls =
                                                              <String>[];
                                                          try {
                                                            selectedUploadedFiles =
                                                                selectedMedia
                                                                    .map((m) =>
                                                                        FFUploadedFile(
                                                                          name: m
                                                                              .storagePath
                                                                              .split('/')
                                                                              .last,
                                                                          bytes:
                                                                              m.bytes,
                                                                          height: m
                                                                              .dimensions
                                                                              ?.height,
                                                                          width: m
                                                                              .dimensions
                                                                              ?.width,
                                                                          blurHash:
                                                                              m.blurHash,
                                                                          originalFilename:
                                                                              m.originalFilename,
                                                                        ))
                                                                    .toList();

                                                            downloadUrls =
                                                                await uploadSupabaseStorageFiles(
                                                              bucketName:
                                                                  'fotos',
                                                              selectedFiles:
                                                                  selectedMedia,
                                                            );
                                                          } finally {
                                                            _model.isDataUploading_uploadDataProfissionais =
                                                                false;
                                                          }
                                                          if (selectedUploadedFiles
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length &&
                                                              downloadUrls
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length) {
                                                            safeSetState(() {
                                                              _model.uploadedLocalFile_uploadDataProfissionais =
                                                                  selectedUploadedFiles
                                                                      .first;
                                                              _model.uploadedFileUrl_uploadDataProfissionais =
                                                                  downloadUrls
                                                                      .first;
                                                            });
                                                          } else {
                                                            safeSetState(() {});
                                                            return;
                                                          }
                                                        }
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (_model.uploadedFileUrl_uploadDataProfissionais !=
                                                                      '') {
                                                                return _model
                                                                    .uploadedFileUrl_uploadDataProfissionais;
                                                              } else if ((widget
                                                                          .paramCadastro ==
                                                                      false) &&
                                                                  (_model.queryTbProfissionais?.firstOrNull
                                                                              ?.foto !=
                                                                          null &&
                                                                      _model.queryTbProfissionais?.firstOrNull
                                                                              ?.foto !=
                                                                          '')) {
                                                                return _model
                                                                    .queryTbProfissionais
                                                                    ?.firstOrNull
                                                                    ?.foto;
                                                              } else {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/0re14cv09a0l/sem-foto.gif';
                                                              }
                                                            }(),
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/0re14cv09a0l/sem-foto.gif',
                                                          ),
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.3,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textFieldNomeTextController,
                                                        focusNode: _model
                                                            .textFieldNomeFocusNode,
                                                        autofocus: true,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Nome*',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
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
                                                                  fontSize:
                                                                      14.0,
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
                                                        maxLength: 50,
                                                        buildCounter: (context,
                                                                {required currentLength,
                                                                required isFocused,
                                                                maxLength}) =>
                                                            null,
                                                        validator: _model
                                                            .textFieldNomeTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          if (!isAndroid &&
                                                              !isiOS)
                                                            TextInputFormatter
                                                                .withFunction(
                                                                    (oldValue,
                                                                        newValue) {
                                                              return TextEditingValue(
                                                                selection: newValue
                                                                    .selection,
                                                                text: newValue
                                                                    .text
                                                                    .toCapitalization(
                                                                        TextCapitalization
                                                                            .words),
                                                              );
                                                            }),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  if ((kDebugMode == true) ||
                                                      FFAppState()
                                                          .VarEmDesenvolvimento)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 90.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textFieldIDTextController,
                                                          focusNode: _model
                                                              .textFieldIDFocusNode,
                                                          autofocus: true,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .words,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          readOnly: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                '#Código',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
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
                                                                fontSize: 14.0,
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
                                                          maxLength: 50,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          validator: _model
                                                              .textFieldIDTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            if (!isAndroid &&
                                                                !isiOS)
                                                              TextInputFormatter
                                                                  .withFunction(
                                                                      (oldValue,
                                                                          newValue) {
                                                                return TextEditingValue(
                                                                  selection:
                                                                      newValue
                                                                          .selection,
                                                                  text: newValue
                                                                      .text
                                                                      .toCapitalization(
                                                                          TextCapitalization
                                                                              .words),
                                                                );
                                                              }),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              if (FFAppState()
                                                      .VarTblEstabelecimentoLogado
                                                      .assistenteCadConcluido ==
                                                  true)
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldDescricaoTextController,
                                                      focusNode: _model
                                                          .textFieldDescricaoFocusNode,
                                                      autofocus: true,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .sentences,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Descrição (Opcional)',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
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
                                                                fontSize: 14.0,
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
                                                      maxLines: null,
                                                      minLines: 2,
                                                      maxLength: 1000,
                                                      buildCounter: (context,
                                                              {required currentLength,
                                                              required isFocused,
                                                              maxLength}) =>
                                                          null,
                                                      validator: _model
                                                          .textFieldDescricaoTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .sentences),
                                                            );
                                                          }),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              if (FFAppState()
                                                      .VarTblEstabelecimentoLogado
                                                      .assistenteCadConcluido ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldWhatsappTextController,
                                                            focusNode: _model
                                                                .textFieldWhatsappFocusNode,
                                                            autofocus: true,
                                                            autofillHints: [
                                                              AutofillHints
                                                                  .telephoneNumberNational
                                                            ],
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'WhatsApp (Opcional)',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                                  fontSize:
                                                                      14.0,
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
                                                            keyboardType:
                                                                TextInputType
                                                                    .phone,
                                                            validator: _model
                                                                .textFieldWhatsappTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              _model
                                                                  .textFieldWhatsappMask
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldInstagramTextController,
                                                            focusNode: _model
                                                                .textFieldInstagramFocusNode,
                                                            autofocus: true,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  '@Instagram (Opcional)',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                                  fontSize:
                                                                      14.0,
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
                                                            validator: _model
                                                                .textFieldInstagramTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              if (FFAppState()
                                                      .VarTblEstabelecimentoLogado
                                                      .assistenteCadConcluido ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldFacebookTextController,
                                                            focusNode: _model
                                                                .textFieldFacebookFocusNode,
                                                            autofocus: true,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  '@Facebook (Opcional)',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                                  fontSize:
                                                                      14.0,
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
                                                            validator: _model
                                                                .textFieldFacebookTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldTikTokTextController,
                                                            focusNode: _model
                                                                .textFieldTikTokFocusNode,
                                                            autofocus: true,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  '@TikTok (Opcional)',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
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
                                                                  fontSize:
                                                                      14.0,
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
                                                            validator: _model
                                                                .textFieldTikTokTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Text(
                                                            'Serviços liberados',
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
                                                        FutureBuilder<
                                                            List<
                                                                TblCadServicosRow>>(
                                                          future: (_model
                                                                      .requestCompleter3 ??=
                                                                  Completer<
                                                                      List<
                                                                          TblCadServicosRow>>()
                                                                    ..complete(
                                                                        TblCadServicosTable()
                                                                            .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'id_estabelecimento',
                                                                            FFAppState().VarIDEstabelecimentoLogado,
                                                                          )
                                                                          .eqOrNull(
                                                                            'situacao',
                                                                            true,
                                                                          )
                                                                          .order('nome', ascending: true),
                                                                    )))
                                                              .future,
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<TblCadServicosRow>
                                                                staggeredViewServLibTblCadServicosRowList =
                                                                snapshot.data!;

                                                            if (staggeredViewServLibTblCadServicosRowList
                                                                .isEmpty) {
                                                              return CpSemCadastroWidget(
                                                                paramTexto:
                                                                    'Nenhum serviço cadastrado...',
                                                              );
                                                            }

                                                            return MasonryGridView
                                                                .builder(
                                                              physics:
                                                                  const NeverScrollableScrollPhysics(),
                                                              gridDelegate:
                                                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    2,
                                                              ),
                                                              crossAxisSpacing:
                                                                  8.0,
                                                              itemCount:
                                                                  staggeredViewServLibTblCadServicosRowList
                                                                      .length,
                                                              shrinkWrap: true,
                                                              itemBuilder: (context,
                                                                  staggeredViewServLibIndex) {
                                                                final staggeredViewServLibTblCadServicosRow =
                                                                    staggeredViewServLibTblCadServicosRowList[
                                                                        staggeredViewServLibIndex];
                                                                return InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    if (_model
                                                                            .varTblProfissionalServLib
                                                                            .where((e) =>
                                                                                e.idServico ==
                                                                                staggeredViewServLibTblCadServicosRow.id)
                                                                            .toList()
                                                                            .length ==
                                                                        0) {
                                                                      _model.addToVarTblProfissionalServLib(
                                                                          TblProfissionalServLibStruct(
                                                                        idProfissional:
                                                                            0,
                                                                        idServico:
                                                                            staggeredViewServLibTblCadServicosRow.id,
                                                                        usuarioLiberou:
                                                                            0,
                                                                        dataCadastro:
                                                                            getCurrentTimestamp,
                                                                      ));
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      _model.removeFromVarTblProfissionalServLib(_model
                                                                          .varTblProfissionalServLib
                                                                          .where((e) =>
                                                                              e.idServico ==
                                                                              staggeredViewServLibTblCadServicosRow.id)
                                                                          .toList()
                                                                          .firstOrNull!);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (_model
                                                                              .varTblProfissionalServLib
                                                                              .where((e) => e.idServico == staggeredViewServLibTblCadServicosRow.id)
                                                                              .toList()
                                                                              .length >
                                                                          0)
                                                                        Icon(
                                                                          Icons
                                                                              .check_box_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (_model
                                                                              .varTblProfissionalServLib
                                                                              .where((e) => e.idServico == staggeredViewServLibTblCadServicosRow.id)
                                                                              .toList()
                                                                              .length ==
                                                                          0)
                                                                        Icon(
                                                                          Icons
                                                                              .check_box_outline_blank_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      Flexible(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              2.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              staggeredViewServLibTblCadServicosRow.nome,
                                                                              '...',
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: (_model.varTblProfissionalServLib.where((e) => e.idServico == staggeredViewServLibTblCadServicosRow.id).toList().length > 0) == true ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).error,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                              controller: _model
                                                                  .staggeredViewServLibScrollController,
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
                                                Flexible(
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: FutureBuilder<
                                                          List<
                                                              TblCadServicosRow>>(
                                                        future:
                                                            TblCadServicosTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eqOrNull(
                                                                'id_estabelecimento',
                                                                FFAppState()
                                                                    .VarIDEstabelecimentoLogado,
                                                              )
                                                              .eqOrNull(
                                                                'situacao',
                                                                true,
                                                              )
                                                              .order('nome',
                                                                  ascending:
                                                                      true),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<TblCadServicosRow>
                                                              listViewTblCadServicosRowList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewTblCadServicosRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewTblCadServicosRow =
                                                                  listViewTblCadServicosRowList[
                                                                      listViewIndex];
                                                              return Container(
                                                                width: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    if (_model
                                                                            .varTblProfissionalServLib
                                                                            .where((e) =>
                                                                                e.idServico ==
                                                                                listViewTblCadServicosRow.id)
                                                                            .toList()
                                                                            .length ==
                                                                        0) {
                                                                      _model.addToVarTblProfissionalServLib(
                                                                          TblProfissionalServLibStruct(
                                                                        idProfissional:
                                                                            0,
                                                                        idServico:
                                                                            listViewTblCadServicosRow.id,
                                                                        usuarioLiberou:
                                                                            0,
                                                                        dataCadastro:
                                                                            getCurrentTimestamp,
                                                                      ));
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      _model.removeFromVarTblProfissionalServLib(_model
                                                                          .varTblProfissionalServLib
                                                                          .where((e) =>
                                                                              e.idServico ==
                                                                              listViewTblCadServicosRow.id)
                                                                          .toList()
                                                                          .firstOrNull!);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (_model
                                                                              .varTblProfissionalServLib
                                                                              .where((e) => e.idServico == listViewTblCadServicosRow.id)
                                                                              .toList()
                                                                              .length >
                                                                          0)
                                                                        Icon(
                                                                          Icons
                                                                              .check_box_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (_model
                                                                              .varTblProfissionalServLib
                                                                              .where((e) => e.idServico == listViewTblCadServicosRow.id)
                                                                              .toList()
                                                                              .length ==
                                                                          0)
                                                                        Icon(
                                                                          Icons
                                                                              .check_box_outline_blank_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewTblCadServicosRow.nome,
                                                                            '...',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: (_model.varTblProfissionalServLib.where((e) => e.idServico == listViewTblCadServicosRow.id).toList().length > 0) == true ? FlutterFlowTheme.of(context).success : FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            controller: _model
                                                                .listViewController1,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if (!widget.paramCadastro &&
                                                  (FFAppState()
                                                          .VarTblEstabelecimentoLogado
                                                          .assistenteCadConcluido ==
                                                      true))
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Situação',
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                              if (!widget.paramCadastro &&
                                                  (FFAppState()
                                                          .VarTblEstabelecimentoLogado
                                                          .assistenteCadConcluido ==
                                                      true))
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.varSituacaoCadastro =
                                                        !_model
                                                            .varSituacaoCadastro;
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (_model
                                                          .varSituacaoCadastro)
                                                        Icon(
                                                          Icons
                                                              .check_box_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          size: 24.0,
                                                        ),
                                                      if (!_model
                                                          .varSituacaoCadastro)
                                                        Icon(
                                                          Icons
                                                              .check_box_outline_blank_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Ativo',
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
                                                                color: _model
                                                                        .varSituacaoCadastro
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
                                                    ],
                                                  ),
                                                ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 25.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          var _shouldSetState =
                                                              false;
                                                          if (_model.textFieldNomeTextController
                                                                      .text ==
                                                                  '') {
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Informe o nome',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo: 'erro',
                                                              paramPadrao:
                                                                  false,
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                          _model.queryConsNome =
                                                              await ViewTblProfissionaisTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q
                                                                .eqOrNull(
                                                                  'id_estabelecimento',
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                                )
                                                                .eqOrNull(
                                                                  'nome_upper',
                                                                  functions.fcConverterStringMaiusculo(
                                                                      _model
                                                                          .textFieldNomeTextController
                                                                          .text),
                                                                ),
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if ((_model.queryConsNome!
                                                                      .length >
                                                                  0) &&
                                                              (_model
                                                                      .queryConsNome
                                                                      ?.firstOrNull
                                                                      ?.id !=
                                                                  _model
                                                                      .varIDProfissional)) {
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Já tem um profissional cadastrado com esse nome, verifique se está inativo',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo: 'erro',
                                                              paramPadrao:
                                                                  false,
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                          if ((widget.paramCadastro ==
                                                                  true) &&
                                                              (_model.uploadedFileUrl_uploadDataProfissionais ==
                                                                      '')) {
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Insira uma foto do profissional',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo: 'erro',
                                                              paramPadrao:
                                                                  false,
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                          _model.queryQtProfissionaisCad2 =
                                                              await ViewQuantTblProfissionaisTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q
                                                                .eqOrNull(
                                                                  'id_estabelecimento',
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                                )
                                                                .eqOrNull(
                                                                  'situacao',
                                                                  true,
                                                                ),
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if ((_model.queryQtProfissionaisCad2!
                                                                      .length >
                                                                  0) &&
                                                              (_model
                                                                      .queryQtProfissionaisCad2!
                                                                      .firstOrNull!
                                                                      .quant! >=
                                                                  FFAppState()
                                                                      .VarTblEstabelecimentoLogado
                                                                      .quantProfissionaisMax) &&
                                                              (((widget.paramCadastro ==
                                                                          true) &&
                                                                      !_model
                                                                          .varCadastroConcluido) ||
                                                                  ((widget.paramCadastro ==
                                                                          false) &&
                                                                      (_model
                                                                              .queryTbProfissionais
                                                                              ?.firstOrNull
                                                                              ?.situacao ==
                                                                          false) &&
                                                                      (_model.varSituacaoCadastro ==
                                                                          true)))) {
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Você já tem ${_model.queryQtProfissionaisCad2?.firstOrNull?.quant?.toString()}${_model.queryQtProfissionaisCad2?.firstOrNull?.quant == 1 ? ' profissional cadastrado' : ' profissionais cadastrados'}  no sistema e seu plano  permite cadastrar ${FFAppState().VarTblEstabelecimentoLogado.quantProfissionaisMax.toString()}${FFAppState().VarTblEstabelecimentoLogado.quantProfissionaisMax == 1 ? ' profissional.' : ' profissionais.'}${'\n\n'}Escolha outro plano ou desative algum profissional.',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo: 'erro',
                                                              paramPadrao:
                                                                  false,
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                          if (_model
                                                                  .varTblProfissionalServLib
                                                                  .length ==
                                                              0) {
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Nenhum serviço foi liberado para o funcionário, você pode liberar depois.',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo: 'erro',
                                                              paramPadrao:
                                                                  false,
                                                            );
                                                          }
                                                          if ((widget.paramCadastro ==
                                                                  true) &&
                                                              !_model
                                                                  .varCadastroConcluido) {
                                                            _model.supainsertProfissional =
                                                                await TblProfissionaisTable()
                                                                    .insert({
                                                              'nome': _model
                                                                  .textFieldNomeTextController
                                                                  .text,
                                                              'descricao': _model
                                                                  .textFieldDescricaoTextController
                                                                  .text,
                                                              'situacao': _model
                                                                  .varSituacaoCadastro,
                                                              'foto': _model
                                                                  .uploadedFileUrl_uploadDataProfissionais,
                                                              'id_estabelecimento':
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                              'whatsapp': _model
                                                                  .textFieldWhatsappTextController
                                                                  .text,
                                                              'instagram': _model
                                                                  .textFieldInstagramTextController
                                                                  .text,
                                                              'facebook': _model
                                                                  .textFieldFacebookTextController
                                                                  .text,
                                                              'tiktok': _model
                                                                  .textFieldTikTokTextController
                                                                  .text,
                                                              'user_id':
                                                                  FFAppState()
                                                                      .VarTblEstabelecimentoLogado
                                                                      .userId,
                                                            });
                                                            _shouldSetState =
                                                                true;
                                                            await TblEstabelecimentoTable()
                                                                .update(
                                                              data: {
                                                                'data_ultima_atualizacao_profissionais':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        getCurrentTimestamp),
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .VarIDEstabelecimentoLogado,
                                                              ),
                                                            );
                                                            _model.varContadorCdProfissionais =
                                                                0;
                                                            safeSetState(() {});
                                                            while (_model
                                                                    .varContadorCdProfissionais <
                                                                _model
                                                                    .varTblProfissionalServLib
                                                                    .length) {
                                                              await TblProfissionaisServLibTable()
                                                                  .insert({
                                                                'id_estabelecimento':
                                                                    FFAppState()
                                                                        .VarIDEstabelecimentoLogado,
                                                                'id_profissional':
                                                                    _model
                                                                        .supainsertProfissional
                                                                        ?.id,
                                                                'id_servico': _model
                                                                    .varTblProfissionalServLib
                                                                    .elementAtOrNull(
                                                                        _model
                                                                            .varContadorCdProfissionais)
                                                                    ?.idServico,
                                                                'situacao':
                                                                    true,
                                                                'usuario_liberou':
                                                                    FFAppState()
                                                                        .VarIDUsuarioLogado,
                                                                'user_id':
                                                                    FFAppState()
                                                                        .VarTblEstabelecimentoLogado
                                                                        .userId,
                                                              });
                                                              _model.varContadorCdProfissionais =
                                                                  _model.varContadorCdProfissionais +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model.varCadastroConcluido =
                                                                true;
                                                            _model.varIDProfissional =
                                                                _model
                                                                    .supainsertProfissional!
                                                                    .id;
                                                            _model.varSituacaoCadastro =
                                                                true;
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model.textFieldIDTextController
                                                                      ?.text =
                                                                  _model
                                                                      .supainsertProfissional!
                                                                      .id
                                                                      .toString();
                                                            });
                                                            await action_blocks
                                                                .acMensagemDialog(
                                                              context,
                                                              paramTitulo:
                                                                  'Atenção!',
                                                              paramMensagem:
                                                                  'Salvo com Sucesso!',
                                                              paramVerCarrinho:
                                                                  false,
                                                              paramTipo:
                                                                  'sucesso',
                                                              paramPadrao:
                                                                  false,
                                                              paramObservacao:
                                                                  'Cadastre os horários padrões e libere horários!',
                                                            );
                                                          } else {
                                                            await TblProfissionaisTable()
                                                                .update(
                                                              data: {
                                                                'nome': _model
                                                                    .textFieldNomeTextController
                                                                    .text,
                                                                'descricao': _model
                                                                    .textFieldDescricaoTextController
                                                                    .text,
                                                                'foto': _model.uploadedFileUrl_uploadDataProfissionais !=
                                                                            ''
                                                                    ? _model
                                                                        .uploadedFileUrl_uploadDataProfissionais
                                                                    : _model
                                                                        .queryTbProfissionais
                                                                        ?.firstOrNull
                                                                        ?.foto,
                                                                'situacao': _model
                                                                    .varSituacaoCadastro,
                                                                'whatsapp': _model
                                                                    .textFieldWhatsappTextController
                                                                    .text,
                                                                'instagram': _model
                                                                    .textFieldInstagramTextController
                                                                    .text,
                                                                'facebook': _model
                                                                    .textFieldFacebookTextController
                                                                    .text,
                                                                'tiktok': _model
                                                                    .textFieldTikTokTextController
                                                                    .text,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                _model
                                                                    .varIDProfissional,
                                                              ),
                                                            );
                                                            await TblEstabelecimentoTable()
                                                                .update(
                                                              data: {
                                                                'data_ultima_atualizacao_profissionais':
                                                                    supaSerialize<
                                                                            DateTime>(
                                                                        getCurrentTimestamp),
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                FFAppState()
                                                                    .VarIDEstabelecimentoLogado,
                                                              ),
                                                            );
                                                            await TblProfissionaisServLibTable()
                                                                .delete(
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                        'id_estabelecimento',
                                                                        FFAppState()
                                                                            .VarIDEstabelecimentoLogado,
                                                                      )
                                                                      .eqOrNull(
                                                                        'id_profissional',
                                                                        _model
                                                                            .varIDProfissional,
                                                                      ),
                                                            );
                                                            _model.varContadorCdProfissionais =
                                                                0;
                                                            safeSetState(() {});
                                                            while (_model
                                                                    .varContadorCdProfissionais <
                                                                _model
                                                                    .varTblProfissionalServLib
                                                                    .length) {
                                                              await TblProfissionaisServLibTable()
                                                                  .insert({
                                                                'id_estabelecimento':
                                                                    FFAppState()
                                                                        .VarIDEstabelecimentoLogado,
                                                                'id_profissional':
                                                                    _model
                                                                        .varIDProfissional,
                                                                'id_servico': _model
                                                                    .varTblProfissionalServLib
                                                                    .elementAtOrNull(
                                                                        _model
                                                                            .varContadorCdProfissionais)
                                                                    ?.idServico,
                                                                'situacao':
                                                                    true,
                                                                'usuario_liberou': _model
                                                                    .varTblProfissionalServLib
                                                                    .elementAtOrNull(
                                                                        _model
                                                                            .varContadorCdProfissionais)
                                                                    ?.usuarioLiberou,
                                                                'user_id':
                                                                    FFAppState()
                                                                        .VarTblEstabelecimentoLogado
                                                                        .userId,
                                                              });
                                                              _model.varContadorCdProfissionais =
                                                                  _model.varContadorCdProfissionais +
                                                                      1;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Alterações salvas com sucesso!',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                              ),
                                                            );
                                                            if (!widget
                                                                .paramCadastro) {
                                                              if (FFAppState()
                                                                      .VarAbrirJanelasWebAndroid ==
                                                                  true) {
                                                                context
                                                                    .safePop();
                                                                Navigator.pop(
                                                                    context);
                                                              } else {
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            }
                                                          }

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                        },
                                                        text: 'Salvar',
                                                        icon: Icon(
                                                          Icons.save,
                                                          size: 15.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .readexPro(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      if (widget
                                                              .paramCadastro &&
                                                          _model
                                                              .varCadastroConcluido)
                                                        FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.varCadastroConcluido =
                                                                false;
                                                            _model.varTblProfissionalServLib =
                                                                [];
                                                            _model.varIDProfissional =
                                                                0;
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model.isDataUploading_uploadDataProfissionais =
                                                                  false;
                                                              _model.uploadedLocalFile_uploadDataProfissionais =
                                                                  FFUploadedFile(
                                                                      bytes: Uint8List
                                                                          .fromList(
                                                                              []),
                                                                      originalFilename:
                                                                          '');
                                                              _model.uploadedFileUrl_uploadDataProfissionais =
                                                                  '';
                                                            });

                                                            safeSetState(() {
                                                              _model
                                                                  .textFieldDescricaoTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldInstagramTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldWhatsappTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldTikTokTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldFacebookTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldNomeTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldHoraPadraoOp1TextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldHoraDispTextController
                                                                  ?.clear();
                                                            });
                                                          },
                                                          text: 'Novo',
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 15.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: FutureBuilder<
                                        List<ViewTblHorariosPadraoCount2Row>>(
                                      future: ViewTblHorariosPadraoCount2Table()
                                          .querySingleRow(
                                        queryFn: (q) => q
                                            .eqOrNull(
                                              'id_estabelecimento',
                                              FFAppState()
                                                  .VarIDEstabelecimentoLogado,
                                            )
                                            .eqOrNull(
                                              'id_profissional',
                                              _model.varIDProfissional,
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
                                        List<ViewTblHorariosPadraoCount2Row>
                                            containerViewTblHorariosPadraoCount2RowList =
                                            snapshot.data!;

                                        final containerViewTblHorariosPadraoCount2Row =
                                            containerViewTblHorariosPadraoCount2RowList
                                                    .isNotEmpty
                                                ? containerViewTblHorariosPadraoCount2RowList
                                                    .first
                                                : null;

                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: SingleChildScrollView(
                                            controller: _model
                                                .columnHorariosPadroesScrollController,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  8.0,
                                                                  16.0,
                                                                  8.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0x7F57636C),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                width: 115.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_circle_outline,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .radio_button_off,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Adicionar dia',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                width: 115.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_circle_outline,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .radio_button_off,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          16.0,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Adicionar Dias',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'containerOnActionTriggerAnimation']!,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation']!),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownDiaSemanaValueController ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model.dropDownDiaSemanaValue ??=
                                                                'SEG',
                                                          ),
                                                          options: List<
                                                              String>.from([
                                                            'DOM',
                                                            'SEG',
                                                            'TER',
                                                            'QUA',
                                                            'QUI',
                                                            'SEX',
                                                            'SÁB'
                                                          ]),
                                                          optionLabels: [
                                                            'Domingo',
                                                            'Segunda-Feira',
                                                            'Terça-Feira',
                                                            'Quarta-Feira',
                                                            'Quinta-Feira',
                                                            'Sexta-Feira',
                                                            'Sábado'
                                                          ],
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.dropDownDiaSemanaValue =
                                                                    val);
                                                            _model.varHoraSelecionadaPadrao =
                                                                '0';
                                                            _model.varDiaSelecionadoPadrao =
                                                                '0';
                                                            safeSetState(() {});
                                                          },
                                                          width: 160.0,
                                                          height: 56.0,
                                                          textStyle:
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
                                                          hintText:
                                                              'Selecione o dia...',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          elevation: 2.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isOverButton: true,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      4.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Hora:',
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
                                                        Expanded(
                                                          child: Container(
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: _model
                                                                        .varAdicionandoHr
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary
                                                                    : Colors
                                                                        .transparent,
                                                              ),
                                                            ),
                                                            child: Visibility(
                                                              visible: !_model
                                                                  .varAdicionandoHr,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textFieldHoraPadraoOp1TextController,
                                                                focusNode: _model
                                                                    .textFieldHoraPadraoOp1FocusNode,
                                                                onFieldSubmitted:
                                                                    (_) async {
                                                                  _model.varAdicionandoHr =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  await _model
                                                                      .acBlockAddHrPadraoOp1(
                                                                          context);
                                                                  safeSetState(() =>
                                                                      _model.requestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted2();
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textFieldHoraPadraoOp1TextController
                                                                        ?.clear();
                                                                  });
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textFieldHoraPadraoOp1TextController
                                                                        ?.text = '';
                                                                    _model
                                                                        .textFieldHoraPadraoOp1Mask
                                                                        .updateMask(
                                                                      newValue:
                                                                          TextEditingValue(
                                                                        text: _model
                                                                            .textFieldHoraPadraoOp1TextController!
                                                                            .text,
                                                                      ),
                                                                    );
                                                                  });
                                                                  _model.varAdicionandoHr =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                autofocus: true,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .send,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
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
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLength: 5,
                                                                buildCounter: (context,
                                                                        {required currentLength,
                                                                        required isFocused,
                                                                        maxLength}) =>
                                                                    null,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .textFieldHoraPadraoOp1TextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model
                                                                      .textFieldHoraPadraoOp1Mask
                                                                ],
                                                              ),
                                                            ),
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
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.varAdicionandoHr =
                                                                  true;
                                                              _model.updatePage(
                                                                  () {});
                                                              await _model
                                                                  .acBlockAddHrPadraoOp1(
                                                                      context);
                                                              safeSetState(() =>
                                                                  _model.requestCompleter2 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted2();
                                                              safeSetState(() {
                                                                _model
                                                                    .textFieldHoraPadraoOp1TextController
                                                                    ?.clear();
                                                              });
                                                              safeSetState(() {
                                                                _model
                                                                    .textFieldHoraPadraoOp1TextController
                                                                    ?.text = '';
                                                                _model
                                                                    .textFieldHoraPadraoOp1Mask
                                                                    .updateMask(
                                                                  newValue:
                                                                      TextEditingValue(
                                                                    text: _model
                                                                        .textFieldHoraPadraoOp1TextController!
                                                                        .text,
                                                                  ),
                                                                );
                                                              });
                                                              _model.varAdicionandoHr =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: '',
                                                            icon: Icon(
                                                              Icons.add,
                                                              size: 15.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 50.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 0.0
                                                                      : 8.0,
                                                                  0.0,
                                                                ),
                                                                8.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 0.0
                                                                      : 8.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                        child: FutureBuilder<
                                                            List<
                                                                ViewTblHorariosFuncionamentoRow>>(
                                                          future: (_model
                                                                      .requestCompleter1 ??=
                                                                  Completer<
                                                                      List<
                                                                          ViewTblHorariosFuncionamentoRow>>()
                                                                    ..complete(
                                                                        ViewTblHorariosFuncionamentoTable()
                                                                            .queryRows(
                                                                      queryFn: (q) => q
                                                                          .eqOrNull(
                                                                            'id_estabelecimento',
                                                                            FFAppState().VarIDEstabelecimentoLogado,
                                                                          )
                                                                          .order('ordem', ascending: true),
                                                                    )))
                                                              .future,
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<ViewTblHorariosFuncionamentoRow>
                                                                rowDiasSemSelectViewTblHorariosFuncionamentoRowList =
                                                                snapshot.data!;

                                                            return Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: List.generate(
                                                                  rowDiasSemSelectViewTblHorariosFuncionamentoRowList
                                                                      .length,
                                                                  (rowDiasSemSelectIndex) {
                                                                final rowDiasSemSelectViewTblHorariosFuncionamentoRow =
                                                                    rowDiasSemSelectViewTblHorariosFuncionamentoRowList[
                                                                        rowDiasSemSelectIndex];
                                                                return InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    if (rowDiasSemSelectViewTblHorariosFuncionamentoRow
                                                                        .fechado!) {
                                                                      await action_blocks
                                                                          .acMensagemDialog(
                                                                        context,
                                                                        paramTitulo:
                                                                            'Atenção!',
                                                                        paramMensagem:
                                                                            'O estabelecimento está fechado nesse dia',
                                                                        paramVerCarrinho:
                                                                            false,
                                                                        paramTipo:
                                                                            'erro',
                                                                        paramPadrao:
                                                                            false,
                                                                      );
                                                                      return;
                                                                    }
                                                                    if (_model
                                                                            .varDiasSemSelecionados
                                                                            .contains('${rowDiasSemSelectViewTblHorariosFuncionamentoRow.siglaDia}') ==
                                                                        true) {
                                                                      _model.removeFromVarDiasSemSelecionados(
                                                                          rowDiasSemSelectViewTblHorariosFuncionamentoRow
                                                                              .siglaDia!);
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      _model.addToVarDiasSemSelecionados(
                                                                          rowDiasSemSelectViewTblHorariosFuncionamentoRow
                                                                              .siglaDia!);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: rowDiasSemSelectViewTblHorariosFuncionamentoRow
                                                                              .fechado!
                                                                          ? Color(
                                                                              0x1AFF5963)
                                                                          : Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if (_model.varDiasSemSelecionados.contains('${rowDiasSemSelectViewTblHorariosFuncionamentoRow.siglaDia}') ==
                                                                              false)
                                                                            Icon(
                                                                              Icons.check_box_outline_blank,
                                                                              color: rowDiasSemSelectViewTblHorariosFuncionamentoRow.fechado! ? FlutterFlowTheme.of(context).error : FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 16.0,
                                                                            ),
                                                                          if (_model.varDiasSemSelecionados.contains('${rowDiasSemSelectViewTblHorariosFuncionamentoRow.siglaDia}') ==
                                                                              true)
                                                                            Icon(
                                                                              Icons.check_box_outlined,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              size: 16.0,
                                                                            ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                1.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                rowDiasSemSelectViewTblHorariosFuncionamentoRow.siglaDia,
                                                                                '...',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.readexPro(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: () {
                                                                                      if (_model.varDiasSemSelecionados.contains('${rowDiasSemSelectViewTblHorariosFuncionamentoRow.siglaDia}') == true) {
                                                                                        return FlutterFlowTheme.of(context).success;
                                                                                      } else if (rowDiasSemSelectViewTblHorariosFuncionamentoRow.fechado!) {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).secondaryText;
                                                                                      }
                                                                                    }(),
                                                                                    fontSize: MediaQuery.sizeOf(context).width < kBreakpointSmall ? 12.0 : 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }).divide(SizedBox(
                                                                  width: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 2.0
                                                                      : 8.0)),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Hora:',
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
                                                            Flexible(
                                                              child: Container(
                                                                width: 150.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: _model.varAdicionandoHr
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Colors
                                                                            .transparent,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible: !_model
                                                                      .varAdicionandoHr,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        150.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textFieldHoraPadraoOp2TextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldHoraPadraoOp2FocusNode,
                                                                      onFieldSubmitted:
                                                                          (_) async {
                                                                        _model.varAdicionandoHr =
                                                                            true;
                                                                        safeSetState(
                                                                            () {});
                                                                        _model.acAddHorPadraoResult2 =
                                                                            await _model.acBlockAddHrPadraoOp2(context);
                                                                        if (_model
                                                                            .acAddHorPadraoResult2!) {
                                                                          safeSetState(() =>
                                                                              _model.requestCompleter2 = null);
                                                                          await _model
                                                                              .waitForRequestCompleted2();
                                                                          if (FFAppState().VarPreencherHrPadraoAutoMinutos >
                                                                              0) {
                                                                            safeSetState(() {
                                                                              _model.textFieldHoraPadraoOp2TextController?.text = functions.fcAdicionarMinutosAHora(_model.textFieldHoraPadraoOp2TextController.text, FFAppState().VarPreencherHrPadraoAutoMinutos);
                                                                              _model.textFieldHoraPadraoOp2Mask.updateMask(
                                                                                newValue: TextEditingValue(
                                                                                  text: _model.textFieldHoraPadraoOp2TextController!.text,
                                                                                ),
                                                                              );
                                                                            });
                                                                          } else {
                                                                            safeSetState(() {
                                                                              _model.textFieldHoraPadraoOp2TextController?.clear();
                                                                            });
                                                                          }
                                                                        }
                                                                        _model.varAdicionandoHr =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      autofocus:
                                                                          true,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .send,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLength:
                                                                          5,
                                                                      buildCounter: (context,
                                                                              {required currentLength,
                                                                              required isFocused,
                                                                              maxLength}) =>
                                                                          null,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .textFieldHoraPadraoOp2TextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .textFieldHoraPadraoOp2Mask
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
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
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  _model.varAdicionandoHr =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.acAddHorPadraoResult =
                                                                      await _model
                                                                          .acBlockAddHrPadraoOp2(
                                                                              context);
                                                                  if (_model
                                                                      .acAddHorPadraoResult!) {
                                                                    safeSetState(() =>
                                                                        _model.requestCompleter2 =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted2();
                                                                    if (FFAppState()
                                                                            .VarPreencherHrPadraoAutoMinutos >
                                                                        0) {
                                                                      safeSetState(
                                                                          () {
                                                                        _model.textFieldHoraPadraoOp2TextController?.text = functions.fcAdicionarMinutosAHora(
                                                                            _model.textFieldHoraPadraoOp2TextController.text,
                                                                            FFAppState().VarPreencherHrPadraoAutoMinutos);
                                                                        _model
                                                                            .textFieldHoraPadraoOp2Mask
                                                                            .updateMask(
                                                                          newValue:
                                                                              TextEditingValue(
                                                                            text:
                                                                                _model.textFieldHoraPadraoOp2TextController!.text,
                                                                          ),
                                                                        );
                                                                      });
                                                                    } else {
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textFieldHoraPadraoOp2TextController
                                                                            ?.clear();
                                                                      });
                                                                    }
                                                                  }
                                                                  _model.varAdicionandoHr =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                text: '',
                                                                icon: Icon(
                                                                  Icons.add,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 50.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .readexPro(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              CpConfigurarHrPadraoWidget(),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Configurar',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .settings_outlined,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              16.0,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: FutureBuilder<
                                                        List<
                                                            TblHorariosFuncionamentoRow>>(
                                                      future:
                                                          TblHorariosFuncionamentoTable()
                                                              .querySingleRow(
                                                        queryFn: (q) => q
                                                            .eqOrNull(
                                                              'id_estabelecimento',
                                                              FFAppState()
                                                                  .VarIDEstabelecimentoLogado,
                                                            )
                                                            .eqOrNull(
                                                              'sigla_dia',
                                                              _model
                                                                  .dropDownDiaSemanaValue,
                                                            ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TblHorariosFuncionamentoRow>
                                                            rowHrFuncionamentoTblHorariosFuncionamentoRowList =
                                                            snapshot.data!;

                                                        final rowHrFuncionamentoTblHorariosFuncionamentoRow =
                                                            rowHrFuncionamentoTblHorariosFuncionamentoRowList
                                                                    .isNotEmpty
                                                                ? rowHrFuncionamentoTblHorariosFuncionamentoRowList
                                                                    .first
                                                                : null;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Funcionamento: ',
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
                                                                    color: rowHrFuncionamentoTblHorariosFuncionamentoRow!.fechado!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .error
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    fontSize:
                                                                        14.0,
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
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  () {
                                                                    if (rowHrFuncionamentoTblHorariosFuncionamentoRow
                                                                        .fechado!) {
                                                                      return 'FECHADO';
                                                                    } else if (rowHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim !=
                                                                            null &&
                                                                        rowHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim !=
                                                                            '') {
                                                                      return valueOrDefault<
                                                                          String>(
                                                                        '${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario1Inicio} às ${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario1Fim} - ${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario2Inicio} às ${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario2Fim}',
                                                                        '...',
                                                                      );
                                                                    } else {
                                                                      return valueOrDefault<
                                                                          String>(
                                                                        '${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario1Inicio} às ${rowHrFuncionamentoTblHorariosFuncionamentoRow.horario2Fim}',
                                                                        '..',
                                                                      );
                                                                    }
                                                                  }(),
                                                                  '.',
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
                                                                      color: rowHrFuncionamentoTblHorariosFuncionamentoRow.fechado!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .error
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      fontSize:
                                                                          14.0,
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
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  ViewTblHorariosPadraoRow>>(
                                                            future: (_model
                                                                        .requestCompleter2 ??=
                                                                    Completer<
                                                                        List<
                                                                            ViewTblHorariosPadraoRow>>()
                                                                      ..complete(
                                                                          ViewTblHorariosPadraoTable()
                                                                              .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eqOrNull(
                                                                              'id_estabelecimento',
                                                                              FFAppState().VarIDEstabelecimentoLogado,
                                                                            )
                                                                            .eqOrNull(
                                                                              'id_profissional',
                                                                              _model.varIDProfissional,
                                                                            ),
                                                                      )))
                                                                .future,
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
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
                                                              List<ViewTblHorariosPadraoRow>
                                                                  staggeredViewHrPadraoViewTblHorariosPadraoRowList =
                                                                  snapshot
                                                                      .data!;

                                                              if (staggeredViewHrPadraoViewTblHorariosPadraoRowList
                                                                  .isEmpty) {
                                                                return Center(
                                                                  child:
                                                                      CpSemCadastroWidget(),
                                                                );
                                                              }

                                                              return MasonryGridView
                                                                  .builder(
                                                                physics:
                                                                    const NeverScrollableScrollPhysics(),
                                                                gridDelegate:
                                                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                  crossAxisCount:
                                                                      7,
                                                                ),
                                                                crossAxisSpacing:
                                                                    8.0,
                                                                mainAxisSpacing:
                                                                    10.0,
                                                                itemCount:
                                                                    staggeredViewHrPadraoViewTblHorariosPadraoRowList
                                                                        .length,
                                                                shrinkWrap:
                                                                    true,
                                                                itemBuilder:
                                                                    (context,
                                                                        staggeredViewHrPadraoIndex) {
                                                                  final staggeredViewHrPadraoViewTblHorariosPadraoRow =
                                                                      staggeredViewHrPadraoViewTblHorariosPadraoRowList[
                                                                          staggeredViewHrPadraoIndex];
                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            staggeredViewHrPadraoViewTblHorariosPadraoRow.diaSemana,
                                                                            '...',
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.readexPro(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: staggeredViewHrPadraoViewTblHorariosPadraoRow.fechado! ? FlutterFlowTheme.of(context).error : FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
                                                                      ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final varHorasPadrao = staggeredViewHrPadraoViewTblHorariosPadraoRow
                                                                              .horasDisponiveis
                                                                              .toList();

                                                                          return ListView
                                                                              .separated(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            primary:
                                                                                false,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                varHorasPadrao.length,
                                                                            separatorBuilder: (_, __) =>
                                                                                SizedBox(height: 4.0),
                                                                            itemBuilder:
                                                                                (context, varHorasPadraoIndex) {
                                                                              final varHorasPadraoItem = varHorasPadrao[varHorasPadraoIndex];
                                                                              return Visibility(
                                                                                visible: varHorasPadraoItem != 'xxx',
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: (_model.varHoraSelecionadaPadrao == varHorasPadraoItem) && (_model.varDiaSelecionadoPadrao == staggeredViewHrPadraoViewTblHorariosPadraoRow.diaSemana) ? Color(0xCBEE8B60) : Color(0xCB4B39EF),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      _model.varHoraSelecionadaPadrao = varHorasPadraoItem;
                                                                                      _model.varDiaSelecionadoPadrao = staggeredViewHrPadraoViewTblHorariosPadraoRow.diaSemana!;
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if ((_model.varHoraSelecionadaPadrao == varHorasPadraoItem) && (_model.varDiaSelecionadoPadrao == staggeredViewHrPadraoViewTblHorariosPadraoRow.diaSemana))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 0.0, 0.0),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                                      context: context,
                                                                                                      builder: (alertDialogContext) {
                                                                                                        return AlertDialog(
                                                                                                          title: Text('Atenção!'),
                                                                                                          content: Text('Deseja excluir esse horário dos seus horários padrões?  (Obs: Os horários disponíveis também serão excluídos)'),
                                                                                                          actions: [
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                              child: Text('Não'),
                                                                                                            ),
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                              child: Text('Sim'),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    ) ??
                                                                                                    false;
                                                                                                if (confirmDialogResponse) {
                                                                                                  await TblHorariosPadraoTable().delete(
                                                                                                    matchingRows: (rows) => rows
                                                                                                        .eqOrNull(
                                                                                                          'id_estabelecimento',
                                                                                                          FFAppState().VarIDEstabelecimentoLogado,
                                                                                                        )
                                                                                                        .eqOrNull(
                                                                                                          'id_profissional',
                                                                                                          staggeredViewHrPadraoViewTblHorariosPadraoRow.idProfissional,
                                                                                                        )
                                                                                                        .eqOrNull(
                                                                                                          'dia_semana',
                                                                                                          staggeredViewHrPadraoViewTblHorariosPadraoRow.diaSemana,
                                                                                                        )
                                                                                                        .eqOrNull(
                                                                                                          'hora',
                                                                                                          varHorasPadraoItem,
                                                                                                        ),
                                                                                                  );
                                                                                                  safeSetState(() => _model.requestCompleter2 = null);
                                                                                                  await _model.waitForRequestCompleted2();
                                                                                                }
                                                                                                _model.varHoraSelecionadaPadrao = '0';
                                                                                                _model.varDiaSelecionadoPadrao = '0';
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.delete_forever,
                                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                                size: 28.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                          child: Text(
                                                                                            varHorasPadraoItem,
                                                                                            textAlign: TextAlign.center,
                                                                                            maxLines: 1,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.readexPro(
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            controller:
                                                                                _model.listViewController2,
                                                                          );
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'columnOnPageLoadAnimation']!);
                                                                },
                                                                controller: _model
                                                                    .staggeredViewHrPadraoScrollController,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'staggeredViewOnPageLoadAnimation']!);
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (containerViewTblHorariosPadraoCount2Row!
                                                        .quantHorarios! >
                                                    7)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Clique em cima da hora para excluí-la',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Atenção!'),
                                                                          content:
                                                                              Text('Deseja excluir todos os horários padrões?'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                              child: Text('Não'),
                                                                            ),
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                              child: Text('Sim'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ) ??
                                                                    false;
                                                            if (confirmDialogResponse) {
                                                              await TblHorariosPadraoTable()
                                                                  .delete(
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                          'id_estabelecimento',
                                                                          FFAppState()
                                                                              .VarIDEstabelecimentoLogado,
                                                                        )
                                                                        .neqOrNull(
                                                                          'hora',
                                                                          'xxx',
                                                                        )
                                                                        .eqOrNull(
                                                                          'id_profissional',
                                                                          _model
                                                                              .varIDProfissional,
                                                                        ),
                                                              );
                                                              safeSetState(() =>
                                                                  _model.requestCompleter2 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted2();
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Horários padrões excluídos...',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                            }
                                                          },
                                                          text:
                                                              'Excluir todos os horários padrões',
                                                          icon: Icon(
                                                            Icons
                                                                .delete_forever_outlined,
                                                            size: 16.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    '*Horários fora do do horário de funcionamento não serão adicionados',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        controller: _model
                                                            .columnHorariosFuncScrollController,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.varMostrarHrFuncionamento =
                                                                    !_model
                                                                        .varMostrarHrFuncionamento;
                                                                safeSetState(
                                                                    () {});
                                                                if (_model
                                                                    .varMostrarHrFuncionamento) {
                                                                  await Future
                                                                      .delayed(
                                                                    Duration(
                                                                      milliseconds:
                                                                          500,
                                                                    ),
                                                                  );
                                                                  await _model
                                                                      .columnPaginaScrollController
                                                                      ?.animateTo(
                                                                    _model
                                                                        .columnPaginaScrollController!
                                                                        .position
                                                                        .maxScrollExtent,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            1000),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                }
                                                              },
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .access_time,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Horários de funcionamento',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (!_model
                                                                          .varMostrarHrFuncionamento)
                                                                        Icon(
                                                                          Icons
                                                                              .keyboard_arrow_right_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (_model
                                                                          .varMostrarHrFuncionamento)
                                                                        Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (_model
                                                                .varMostrarHrFuncionamento)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: FutureBuilder<
                                                                    List<
                                                                        ViewTblHorariosFuncionamentoRow>>(
                                                                  future: ViewTblHorariosFuncionamentoTable()
                                                                      .queryRows(
                                                                    queryFn: (q) => q
                                                                        .eqOrNull(
                                                                          'id_estabelecimento',
                                                                          FFAppState()
                                                                              .VarIDEstabelecimentoLogado,
                                                                        )
                                                                        .order('ordem', ascending: true),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          child:
                                                                              CircularProgressIndicator(
                                                                            valueColor:
                                                                                AlwaysStoppedAnimation<Color>(
                                                                              FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<ViewTblHorariosFuncionamentoRow>
                                                                        listViewHrFuncionamentoViewTblHorariosFuncionamentoRowList =
                                                                        snapshot
                                                                            .data!;

                                                                    if (listViewHrFuncionamentoViewTblHorariosFuncionamentoRowList
                                                                        .isEmpty) {
                                                                      return CpSemCadastroWidget();
                                                                    }

                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewHrFuncionamentoViewTblHorariosFuncionamentoRowList
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 4.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewHrFuncionamentoIndex) {
                                                                        final listViewHrFuncionamentoViewTblHorariosFuncionamentoRow =
                                                                            listViewHrFuncionamentoViewTblHorariosFuncionamentoRowList[listViewHrFuncionamentoIndex];
                                                                        return Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color: FFAppState().VarTblEstabelecimentoLogado.idTema == 1
                                                                                ? FlutterFlowTheme.of(context).secondaryBackground
                                                                                : Color(0x00000000),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                2.0,
                                                                                8.0,
                                                                                2.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.dia,
                                                                                          '...',
                                                                                        ),
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                                                                                      Text(
                                                                                        () {
                                                                                          if (listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.fechado!) {
                                                                                            return 'FECHADO';
                                                                                          } else if (listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario1Fim != null && listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario1Fim != '') {
                                                                                            return '${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario1Inicio} às ${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario1Fim} - ${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario2Inicio} às ${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario2Fim}';
                                                                                          } else {
                                                                                            return '${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario1Inicio} às ${listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.horario2Fim}';
                                                                                          }
                                                                                        }(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.readexPro(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: listViewHrFuncionamentoViewTblHorariosFuncionamentoRow.fechado! ? FlutterFlowTheme.of(context).error : FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                                                                          ),
                                                                        );
                                                                      },
                                                                      controller:
                                                                          _model
                                                                              .listViewHrFuncionamentoScrollController,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: SingleChildScrollView(
                                      controller: _model.columnController,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.varHoraSelecionadaDisponivel =
                                                    '0';
                                                _model.varDiaSelecionadoDisponivel =
                                                    '0';
                                                safeSetState(() {});
                                              },
                                              child: wrapWithModel(
                                                model: _model
                                                    .cpCalendarioPersonalizadoModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    CpCalendarioPersonalizadoWidget(
                                                  paramMostrarDiasDisponiveis:
                                                      true,
                                                  paramIDProfissional:
                                                      _model.varIDProfissional,
                                                  paramAtualizarEstabelecimento:
                                                      false,
                                                  paramAceitarSelDiaPassado:
                                                      true,
                                                  paramIniciarComDtHoje: true,
                                                  paramIDServico: 0,
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: FlutterFlowCalendar(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                weekFormat: false,
                                                weekStartsMonday: false,
                                                rowHeight: 40.0,
                                                onChange: (DateTimeRange?
                                                    newSelectedDate) async {
                                                  if (_model
                                                          .calendarSelectedDay ==
                                                      newSelectedDate) {
                                                    return;
                                                  }
                                                  _model.calendarSelectedDay =
                                                      newSelectedDate;
                                                  _model.varHoraSelecionadaDisponivel =
                                                      '0';
                                                  _model.varDiaSelecionadoDisponivel =
                                                      '0';
                                                  safeSetState(() {});
                                                  safeSetState(() {});
                                                },
                                                titleStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineSmall
                                                    .override(
                                                      font: GoogleFonts.outfit(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .fontStyle,
                                                    ),
                                                dayOfWeekStyle: FlutterFlowTheme
                                                        .of(context)
                                                    .labelLarge
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                    ),
                                                dateStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
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
                                                selectedDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
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
                                                          letterSpacing: 0.0,
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
                                                inactiveDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FlutterFlowDropDown<String>(
                                                      controller: _model
                                                              .dropDownTipoAtzHrPadraoValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropDownTipoAtzHrPadraoValue ??=
                                                            '1',
                                                      ),
                                                      options:
                                                          List<String>.from(
                                                              ['1', '2', '3']),
                                                      optionLabels: [
                                                        'Atualizar somente o dia selecionado (Horários Padrões )',
                                                        'Atualizar o dia selecionado + 6 dias seguintes (Horários Padrões )',
                                                        'Adicionarhorários manualmente'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropDownTipoAtzHrPadraoValue =
                                                                  val),
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 25.0,
                                                      textStyle:
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
                                                                fontSize: 14.0,
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
                                                      hintText:
                                                          'Selecione uma opção',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      borderWidth: 1.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
                                                    if ((_model.dropDownTipoAtzHrPadraoValue ==
                                                            '1') ||
                                                        (_model.dropDownTipoAtzHrPadraoValue ==
                                                            '2'))
                                                      Builder(
                                                        builder: (context) =>
                                                            Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var _shouldSetState =
                                                                  false;
                                                              if ((FFAppState()
                                                                          .varCalendarioDataSelecionada! <
                                                                      functions
                                                                          .fcConverterStringPData(
                                                                              '${dateTimeFormat(
                                                                        "y",
                                                                        getCurrentTimestamp,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}-${dateTimeFormat(
                                                                        "MM",
                                                                        getCurrentTimestamp,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}-${dateTimeFormat(
                                                                        "dd",
                                                                        getCurrentTimestamp,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      )}')) &&
                                                                  (_model.dropDownTipoAtzHrPadraoValue ==
                                                                      '1')) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Atenção!'),
                                                                      content: Text(
                                                                          'Selecione uma data maior ou igual a hoje'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('Atenção!'),
                                                                            content: Text(_model.dropDownTipoAtzHrPadraoValue == '1'
                                                                                ? 'Deseja incluir os horários padrões no dia ${dateTimeFormat(
                                                                                    "d MMMM, EEEE",
                                                                                    FFAppState().varCalendarioDataSelecionada,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  )}?'
                                                                                : 'Deseja incluir os horários padrões no dia ${dateTimeFormat(
                                                                                    "d MMMM, EEEE",
                                                                                    FFAppState().varCalendarioDataSelecionada,
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  )} e nos 6 dias seguintes?'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: Text('Não'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: Text('Sim'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (!confirmDialogResponse) {
                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        CaAguardeWidget(
                                                                      paramMostrarAnimacao:
                                                                          true,
                                                                      paramFecharAoClicar:
                                                                          false,
                                                                    ),
                                                                  );
                                                                },
                                                              );

                                                              _model.varContadorCdProfissionais =
                                                                  0;
                                                              _model.varContadorAddDias =
                                                                  0;
                                                              safeSetState(
                                                                  () {});
                                                              while (_model
                                                                          .dropDownTipoAtzHrPadraoValue ==
                                                                      '1'
                                                                  ? (_model
                                                                          .varContadorAddDias <
                                                                      1)
                                                                  : (_model
                                                                          .varContadorAddDias <=
                                                                      6)) {
                                                                _model.varContadorCdProfissionais =
                                                                    0;
                                                                safeSetState(
                                                                    () {});
                                                                if (functions.fcAdicionarDiasEmData(
                                                                        FFAppState()
                                                                            .varCalendarioDataSelecionada!,
                                                                        _model
                                                                            .varContadorAddDias) >=
                                                                    functions
                                                                        .fcConverterStringPData(
                                                                            '${dateTimeFormat(
                                                                      "y",
                                                                      getCurrentTimestamp,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )}-${dateTimeFormat(
                                                                      "MM",
                                                                      getCurrentTimestamp,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )}-${dateTimeFormat(
                                                                      "dd",
                                                                      getCurrentTimestamp,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    )}')) {
                                                                  _model.queryHrsPadroes =
                                                                      await ViewTblHorariosPadrao2Table()
                                                                          .queryRows(
                                                                    queryFn: (q) => q
                                                                        .eqOrNull(
                                                                          'id_estabelecimento',
                                                                          FFAppState()
                                                                              .VarIDEstabelecimentoLogado,
                                                                        )
                                                                        .eqOrNull(
                                                                          'id_profissional',
                                                                          _model
                                                                              .varIDProfissional,
                                                                        )
                                                                        .eqOrNull(
                                                                      'dia_semana',
                                                                      () {
                                                                        if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'dom.') {
                                                                          return 'DOM';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'seg.') {
                                                                          return 'SEG';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'ter.') {
                                                                          return 'TER';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'qua.') {
                                                                          return 'QUA';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'qui.') {
                                                                          return 'QUI';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'sex.') {
                                                                          return 'SEX';
                                                                        } else if (dateTimeFormat(
                                                                              "E",
                                                                              functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ) ==
                                                                            'sáb.') {
                                                                          return 'SÁB';
                                                                        } else {
                                                                          return '...';
                                                                        }
                                                                      }(),
                                                                    ).order('hora', ascending: true),
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  while (_model
                                                                          .varContadorCdProfissionais <
                                                                      _model
                                                                          .queryHrsPadroes!
                                                                          .length) {
                                                                    unawaited(
                                                                      () async {
                                                                        await TblHorariosDisponiveisTable()
                                                                            .insert({
                                                                          'id_estabelecimento':
                                                                              FFAppState().VarIDEstabelecimentoLogado,
                                                                          'id_profissional':
                                                                              _model.varIDProfissional,
                                                                          'dia_semana':
                                                                              () {
                                                                            if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'dom.') {
                                                                              return 'DOM';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'seg.') {
                                                                              return 'SEG';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'ter.') {
                                                                              return 'TER';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'qua.') {
                                                                              return 'QUA';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'qui.') {
                                                                              return 'QUI';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'sex.') {
                                                                              return 'SEX';
                                                                            } else if (dateTimeFormat(
                                                                                  "E",
                                                                                  functions.fcAdicionarDiasEmData(FFAppState().varCalendarioDataSelecionada!, _model.varContadorAddDias),
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                ) ==
                                                                                'sáb.') {
                                                                              return 'SÁB';
                                                                            } else {
                                                                              return '...';
                                                                            }
                                                                          }(),
                                                                          'hora': _model
                                                                              .queryHrsPadroes
                                                                              ?.elementAtOrNull(_model.varContadorCdProfissionais)
                                                                              ?.hora,
                                                                          'situacao':
                                                                              true,
                                                                          'dia_mes_data': supaSerialize<DateTime>(functions.fcAdicionarDiasEmData(
                                                                              FFAppState().varCalendarioDataSelecionada!,
                                                                              _model.varContadorAddDias)),
                                                                          'user_id': FFAppState()
                                                                              .VarTblEstabelecimentoLogado
                                                                              .userId,
                                                                        });
                                                                      }(),
                                                                    );
                                                                    _model.varContadorCdProfissionais =
                                                                        _model.varContadorCdProfissionais +
                                                                            1;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                }
                                                                _model.varContadorAddDias =
                                                                    _model.varContadorAddDias +
                                                                        1;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              await Future
                                                                  .delayed(
                                                                Duration(
                                                                  milliseconds:
                                                                      500,
                                                                ),
                                                              );
                                                              Navigator.pop(
                                                                  context);
                                                              await action_blocks
                                                                  .acBlockAtualizarHorasDispProfissional(
                                                                context,
                                                                paramIDProfissionalAtzHrDipspProf:
                                                                    _model
                                                                        .varIDProfissional,
                                                              );
                                                              await action_blocks
                                                                  .acBlockAtualizarDiasDispProfissional(
                                                                context,
                                                                paramIDProfissionalAtzDiasDipspProf:
                                                                    _model
                                                                        .varIDProfissional,
                                                                paramIDServico:
                                                                    0,
                                                              );
                                                              safeSetState(() =>
                                                                  _model.requestCompleter3 =
                                                                      null);
                                                              await _model
                                                                  .waitForRequestCompleted3();
                                                              unawaited(
                                                                () async {}(),
                                                              );
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .clearSnackBars();
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Horários padrões adicionados...',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: (_model.dropDownTipoAtzHrPadraoValue ==
                                                                            '1') &&
                                                                        (FFAppState().varCalendarioDataSelecionada !=
                                                                            null) &&
                                                                        (FFAppState()
                                                                                .varCalendarioDataSelecionada! <
                                                                            functions.fcConverterStringPData(
                                                                                '${dateTimeFormat(
                                                                              "y",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}-${dateTimeFormat(
                                                                              "MM",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}-${dateTimeFormat(
                                                                              "dd",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}'))
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .done_all_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Atualizar/Liberar HORÁRIOS PADRÕES',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model
                                                            .dropDownTipoAtzHrPadraoValue ==
                                                        '3')
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 400.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Liberar hora manualmente:',
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
                                                              if (!_model
                                                                  .varAdicionandoHr)
                                                                Flexible(
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textFieldHoraDispTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldHoraDispFocusNode,
                                                                    onFieldSubmitted:
                                                                        (_) async {
                                                                      await _model
                                                                          .acAddHorarioLiberar(
                                                                              context);
                                                                      safeSetState(
                                                                          () {
                                                                        _model
                                                                            .textFieldHoraDispTextController
                                                                            ?.clear();
                                                                      });
                                                                      _model.varAdicionandoHr =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    autofocus:
                                                                        true,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .go,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                            ),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              0.5,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLength:
                                                                        5,
                                                                    buildCounter: (context,
                                                                            {required currentLength,
                                                                            required isFocused,
                                                                            maxLength}) =>
                                                                        null,
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    validator: _model
                                                                        .textFieldHoraDispTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                    inputFormatters: [
                                                                      _model
                                                                          .textFieldHoraDispMask
                                                                    ],
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
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await _model
                                                                        .acAddHorarioLiberar(
                                                                            context);
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .textFieldHoraDispTextController
                                                                          ?.clear();
                                                                    });
                                                                    _model.varAdicionandoHr =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  text: '',
                                                                  icon: Icon(
                                                                    Icons.add,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        50.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
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
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                "d MMMM, EEEE",
                                                FFAppState()
                                                    .varCalendarioDataSelecionada,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final varDiasDisponiveisProfissional =
                                                      FFAppState()
                                                          .VarTblHorariosDisponiveisProfissional
                                                          .toList();

                                                  return MasonryGridView
                                                      .builder(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    gridDelegate:
                                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                    ),
                                                    crossAxisSpacing: 8.0,
                                                    mainAxisSpacing: 4.0,
                                                    itemCount:
                                                        varDiasDisponiveisProfissional
                                                            .length,
                                                    shrinkWrap: true,
                                                    itemBuilder: (context,
                                                        varDiasDisponiveisProfissionalIndex) {
                                                      final varDiasDisponiveisProfissionalItem =
                                                          varDiasDisponiveisProfissional[
                                                              varDiasDisponiveisProfissionalIndex];
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.varHoraSelecionadaDisponivel =
                                                                varDiasDisponiveisProfissionalItem
                                                                    .hora;
                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: () {
                                                                if (_model
                                                                        .varHoraSelecionadaDisponivel ==
                                                                    varDiasDisponiveisProfissionalItem
                                                                        .hora) {
                                                                  return Color(
                                                                      0xCBEE8B60);
                                                                } else if (varDiasDisponiveisProfissionalItem
                                                                        .agendamentoConfirmado ==
                                                                    true) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .success;
                                                                } else {
                                                                  return Color(
                                                                      0xCB4B39EF);
                                                                }
                                                              }(),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (_model
                                                                            .varHoraSelecionadaDisponivel ==
                                                                        varDiasDisponiveisProfissionalItem
                                                                            .hora)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            2.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            if (varDiasDisponiveisProfissionalItem.situacaoAgendamento ==
                                                                                true) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Atenção!'),
                                                                                    content: Text('Não é possível excluir horário que já foi agendado.'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              return;
                                                                            }
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Atenção!'),
                                                                                      content: Text('Deseja excluir esse horário dos seus horários disponíveis?  '),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                          child: Text('Não'),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                          child: Text('Sim'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ) ??
                                                                                false;
                                                                            if (confirmDialogResponse) {
                                                                              await TblHorariosDisponiveisTable().delete(
                                                                                matchingRows: (rows) => rows
                                                                                    .eqOrNull(
                                                                                      'id_estabelecimento',
                                                                                      FFAppState().VarIDEstabelecimentoLogado,
                                                                                    )
                                                                                    .eqOrNull(
                                                                                      'id_profissional',
                                                                                      _model.varIDProfissional,
                                                                                    )
                                                                                    .eqOrNull(
                                                                                      'dia_mes_data',
                                                                                      supaSerialize<DateTime>(FFAppState().varCalendarioDataSelecionada),
                                                                                    )
                                                                                    .eqOrNull(
                                                                                      'hora',
                                                                                      _model.varHoraSelecionadaDisponivel,
                                                                                    ),
                                                                              );
                                                                              await action_blocks.acBlockAtualizarHorasDispProfissional(
                                                                                context,
                                                                                paramIDProfissionalAtzHrDipspProf: widget.paramIDProfissional,
                                                                              );
                                                                              await action_blocks.acBlockAtualizarDiasDispProfissional(
                                                                                context,
                                                                                paramIDProfissionalAtzDiasDipspProf: widget.paramIDProfissional,
                                                                                paramIDServico: 0,
                                                                              );
                                                                              safeSetState(() {});
                                                                            }
                                                                            _model.varHoraSelecionadaPadrao =
                                                                                '0';
                                                                            _model.varDiaSelecionadoPadrao =
                                                                                '0';
                                                                            _model.varHoraSelecionadaDisponivel =
                                                                                '0';
                                                                            _model.varDiaSelecionadoDisponivel =
                                                                                '0';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.delete_forever,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                28.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                                      child:
                                                                          Text(
                                                                        varDiasDisponiveisProfissionalItem
                                                                            .hora,
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.readexPro(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                if (varDiasDisponiveisProfissionalItem
                                                                        .situacaoAgendamento ==
                                                                    true)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if (varDiasDisponiveisProfissionalItem
                                                                        .situacaoAgendamento ==
                                                                    true)
                                                                  Text(
                                                                    'Reservado:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
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
                                                                if (varDiasDisponiveisProfissionalItem
                                                                        .situacaoAgendamento ==
                                                                    true)
                                                                  SizedBox(
                                                                    height:
                                                                        100.0,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1.0,
                                                                      indent:
                                                                          12.0,
                                                                      endIndent:
                                                                          12.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent4,
                                                                    ),
                                                                  ),
                                                                if (varDiasDisponiveisProfissionalItem
                                                                        .situacaoAgendamento ==
                                                                    true)
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            varDiasDisponiveisProfissionalItem.nomeCliente,
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            varDiasDisponiveisProfissionalItem.nomeServico,
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            varDiasDisponiveisProfissionalItem.obsAgendamento,
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.readexPro(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                      );
                                                    },
                                                    controller: _model
                                                        .staggeredViewHrLibScrollController,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Clique em cima da hora para excluí-la',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Wrap(
                                              spacing: 8.0,
                                              runSpacing: 8.0,
                                              alignment: WrapAlignment.center,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Atenção!'),
                                                                  content: Text(
                                                                      'Delese excluir os  horários do dia ${dateTimeFormat(
                                                                    "d MMMM, EEEE",
                                                                    FFAppState()
                                                                        .varCalendarioDataSelecionada,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}?'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Não'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Sim'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      await TblHorariosDisponiveisTable()
                                                          .delete(
                                                        matchingRows: (rows) =>
                                                            rows
                                                                .eqOrNull(
                                                                  'id_estabelecimento',
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                                )
                                                                .eqOrNull(
                                                                  'id_profissional',
                                                                  _model
                                                                      .varIDProfissional,
                                                                )
                                                                .eqOrNull(
                                                                  'dia_mes_data',
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      FFAppState()
                                                                          .varCalendarioDataSelecionada),
                                                                ),
                                                      );
                                                      await action_blocks
                                                          .acBlockAtualizarHorasDispProfissional(
                                                        context,
                                                        paramIDProfissionalAtzHrDipspProf:
                                                            _model
                                                                .varIDProfissional,
                                                      );
                                                      await action_blocks
                                                          .acBlockAtualizarDiasDispProfissional(
                                                        context,
                                                        paramIDProfissionalAtzDiasDipspProf:
                                                            _model
                                                                .varIDProfissional,
                                                        paramIDServico: 0,
                                                      );
                                                      safeSetState(() => _model
                                                              .requestCompleter3 =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted3();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Horários excluídos...',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  text:
                                                      'Excluir  horários de  ${dateTimeFormat(
                                                    "d MMMM, EEEE",
                                                    FFAppState()
                                                        .varCalendarioDataSelecionada,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  )}',
                                                  icon: Icon(
                                                    Icons
                                                        .delete_forever_outlined,
                                                    size: 16.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconAlignment:
                                                        IconAlignment.start,
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
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
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
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
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Atenção!'),
                                                                  content: Text(
                                                                      'Deseja excluir todos os horários liberados?'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Não'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Sim'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      await TblHorariosDisponiveisTable()
                                                          .delete(
                                                        matchingRows: (rows) =>
                                                            rows
                                                                .eqOrNull(
                                                                  'id_estabelecimento',
                                                                  FFAppState()
                                                                      .VarIDEstabelecimentoLogado,
                                                                )
                                                                .eqOrNull(
                                                                  'id_profissional',
                                                                  _model
                                                                      .varIDProfissional,
                                                                )
                                                                .gteOrNull(
                                                                  'dia_mes_data',
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      functions
                                                                          .fcConverterStringPData(
                                                                              '${dateTimeFormat(
                                                                    "y",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}-${dateTimeFormat(
                                                                    "MM",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}-${dateTimeFormat(
                                                                    "dd",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}')),
                                                                ),
                                                      );
                                                      safeSetState(() => _model
                                                              .requestCompleter3 =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted3();
                                                      await action_blocks
                                                          .acBlockAtualizarHorasDispProfissional(
                                                        context,
                                                        paramIDProfissionalAtzHrDipspProf:
                                                            _model
                                                                .varIDProfissional,
                                                      );
                                                      await action_blocks
                                                          .acBlockAtualizarDiasDispProfissional(
                                                        context,
                                                        paramIDProfissionalAtzDiasDipspProf:
                                                            _model
                                                                .varIDProfissional,
                                                        paramIDServico: 0,
                                                      );
                                                      safeSetState(() => _model
                                                              .requestCompleter3 =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted3();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Horários excluídos...',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  text:
                                                      'Excluir todos os horários liberados',
                                                  icon: Icon(
                                                    Icons
                                                        .delete_forever_outlined,
                                                    size: 16.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconAlignment:
                                                        IconAlignment.start,
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
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
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
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
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
