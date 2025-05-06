import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/a_sistema/home/ca_aguarde/ca_aguarde_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_afiliado_cpf_model.dart';
export 'cp_afiliado_cpf_model.dart';

class CpAfiliadoCpfWidget extends StatefulWidget {
  const CpAfiliadoCpfWidget({super.key});

  @override
  State<CpAfiliadoCpfWidget> createState() => _CpAfiliadoCpfWidgetState();
}

class _CpAfiliadoCpfWidgetState extends State<CpAfiliadoCpfWidget>
    with TickerProviderStateMixin {
  late CpAfiliadoCpfModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpAfiliadoCpfModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().VarTblEstabelecimentoLogado.tipoDoc == 'CPF') {
        _model.varCPFLocalizado = true;
        safeSetState(() {});
        FFAppState().updateVarTblAfiliadoStruct(
          (e) => e..genero = FFAppState().VarTblEstabelecimentoLogado.genero,
        );
        safeSetState(() {});
      }
    });

    _model.textFieldCPFTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.tipoDoc == 'CPF'
            ? FFAppState().VarTblEstabelecimentoLogado.docCpfCnpj
            : '');
    _model.textFieldCPFFocusNode ??= FocusNode();

    _model.textFieldDtNascimentoTextController ??= TextEditingController();
    _model.textFieldDtNascimentoFocusNode ??= FocusNode();

    _model.textFieldNomeAfiliadoTextController ??= TextEditingController(
        text: FFAppState().VarTblEstabelecimentoLogado.tipoDoc == 'CPF'
            ? FFAppState().VarTblEstabelecimentoLogado.nomePfisicaRazsocial
            : '');
    _model.textFieldNomeAfiliadoFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textFieldOnPageLoadAnimation': AnimationInfo(
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

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textFieldDtNascimentoTextController?.text = dateTimeFormat(
            "dd/MM/y",
            FFAppState().VarTblEstabelecimentoLogado.dataNascimento,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          width: 300.0,
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
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 8.0),
                      child: Text(
                        'Inscrição de Afiliado',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
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
                        size: 22.0,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Form(
                    key: _model.formKey1,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Builder(
                      builder: (context) => Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.textFieldCPFTextController,
                          focusNode: _model.textFieldCPFFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textFieldCPFTextController',
                            Duration(milliseconds: 100),
                            () async {
                              var _shouldSetState = false;
                              if (functions.fcCountCaracteres(_model
                                      .textFieldDtNascimentoTextController
                                      .text) ==
                                  10) {
                                if (_model.formKey2.currentState != null) {
                                  _model.formKey2.currentState!.validate();
                                }
                              }
                              if (functions.fcCountCaracteres(
                                      _model.textFieldCPFTextController.text) ==
                                  14) {
                                if (functions.fcValidarCPF(
                                    _model.textFieldCPFTextController.text)) {
                                  if (_model.formKey1.currentState == null ||
                                      !_model.formKey1.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: CaAguardeWidget(
                                            paramMostrarAnimacao: true,
                                            paramFecharAoClicar: false,
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  _model.resultConsCpfSportBet =
                                      await action_blocks
                                          .acConsultarCPFSportingBet(
                                    context,
                                    paramCPF:
                                        _model.textFieldCPFTextController.text,
                                    paramDataNascimento: _model
                                        .textFieldDtNascimentoTextController
                                        .text,
                                    paramTabela: 'tbl_afiliados',
                                  );
                                  _shouldSetState = true;
                                  Navigator.pop(context);
                                  if (_model.resultConsCpfSportBet != 'False') {
                                    safeSetState(() {
                                      _model.textFieldNomeAfiliadoTextController
                                              ?.text =
                                          _model.resultConsCpfSportBet!;
                                    });
                                    safeSetState(() {
                                      _model.textFieldDtNascimentoTextController
                                          ?.text = dateTimeFormat(
                                        "dd/MM/y",
                                        FFAppState()
                                            .varTblAfiliado
                                            .dataNascimento!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      );
                                      _model.textFieldDtNascimentoMask
                                          .updateMask(
                                        newValue: TextEditingValue(
                                          text: _model
                                              .textFieldDtNascimentoTextController!
                                              .text,
                                        ),
                                      );
                                    });
                                    _model.varCPFLocalizado = true;
                                    safeSetState(() {});
                                  } else {
                                    safeSetState(() {
                                      _model.textFieldNomeAfiliadoTextController
                                          ?.clear();
                                    });
                                    _model.varCPFLocalizado = false;
                                    safeSetState(() {});
                                  }
                                } else {
                                  safeSetState(() {
                                    _model.textFieldNomeAfiliadoTextController
                                        ?.clear();
                                  });
                                  _model.varCPFLocalizado = false;
                                  safeSetState(() {});
                                  if (_model.formKey1.currentState == null ||
                                      !_model.formKey1.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                safeSetState(() {
                                  _model.textFieldNomeAfiliadoTextController
                                      ?.clear();
                                });
                                _model.varCPFLocalizado = false;
                                safeSetState(() {});
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                          ),
                          autofocus: false,
                          textInputAction: TextInputAction.next,
                          readOnly: (FFAppState()
                                      .VarTblEstabelecimentoLogado
                                      .tipoDoc ==
                                  'CPF') &&
                              (FFAppState()
                                          .VarTblEstabelecimentoLogado
                                          .docCpfCnpj !=
                                      ''),
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'CPF',
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
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x7F57636C),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hoverColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            prefixIcon: Icon(
                              Icons.numbers_sharp,
                            ),
                          ),
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
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          maxLength: 100,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.number,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textFieldCPFTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [_model.textFieldCPFMask],
                        ),
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _model.formKey2,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Visibility(
                    visible: (_model.textFieldCPFTextController.text != '') &&
                        (functions.fcCountCaracteres(
                                _model.textFieldCPFTextController.text) ==
                            14),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          child: TextFormField(
                            controller:
                                _model.textFieldDtNascimentoTextController,
                            focusNode: _model.textFieldDtNascimentoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textFieldDtNascimentoTextController',
                              Duration(milliseconds: 100),
                              () async {
                                var _shouldSetState = false;
                                if (functions.fcCountCaracteres(_model
                                        .textFieldDtNascimentoTextController
                                        .text) ==
                                    10) {
                                  if (_model.formKey2.currentState != null) {
                                    _model.formKey2.currentState!.validate();
                                  }
                                }
                                if (functions.fcCountCaracteres(_model
                                        .textFieldCPFTextController.text) ==
                                    14) {
                                  if (functions.fcValidarCPF(
                                      _model.textFieldCPFTextController.text)) {
                                    if (_model.formKey1.currentState == null ||
                                        !_model.formKey1.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if ((_model.textFieldDtNascimentoTextController
                                                    .text !=
                                                '') &&
                                        (functions.fcCountCaracteres(_model
                                                .textFieldDtNascimentoTextController
                                                .text) ==
                                            10) &&
                                        (functions.fcConverterStringPData2(_model
                                                .textFieldDtNascimentoTextController
                                                .text) !=
                                            null)) {
                                      showDialog(
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
                                            child: WebViewAware(
                                              child: CaAguardeWidget(
                                                paramMostrarAnimacao: true,
                                                paramFecharAoClicar: false,
                                              ),
                                            ),
                                          );
                                        },
                                      );

                                      _model.resultConsCpfSportBet2 =
                                          await action_blocks
                                              .acConsultarCPFSportingBet(
                                        context,
                                        paramCPF: _model
                                            .textFieldCPFTextController.text,
                                        paramDataNascimento: _model
                                            .textFieldDtNascimentoTextController
                                            .text,
                                        paramTabela: 'tbl_afiliados',
                                      );
                                      _shouldSetState = true;
                                      Navigator.pop(context);
                                      if (_model.resultConsCpfSportBet2 !=
                                          'False') {
                                        safeSetState(() {
                                          _model.textFieldNomeAfiliadoTextController
                                                  ?.text =
                                              _model.resultConsCpfSportBet2!;
                                        });
                                        _model.varCPFLocalizado = true;
                                        safeSetState(() {});
                                      } else {
                                        safeSetState(() {
                                          _model
                                              .textFieldNomeAfiliadoTextController
                                              ?.clear();
                                        });
                                        _model.varCPFLocalizado = false;
                                        safeSetState(() {});
                                      }
                                    } else {
                                      safeSetState(() {
                                        _model
                                            .textFieldNomeAfiliadoTextController
                                            ?.clear();
                                      });
                                      _model.varCPFLocalizado = false;
                                      safeSetState(() {});
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    safeSetState(() {
                                      _model.textFieldNomeAfiliadoTextController
                                          ?.clear();
                                    });
                                    _model.varCPFLocalizado = false;
                                    safeSetState(() {});
                                    if (_model.formKey1.currentState == null ||
                                        !_model.formKey1.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                } else {
                                  safeSetState(() {
                                    _model.textFieldNomeAfiliadoTextController
                                        ?.clear();
                                  });
                                  _model.varCPFLocalizado = false;
                                  safeSetState(() {});
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                            ),
                            autofocus: false,
                            textInputAction: TextInputAction.next,
                            readOnly: _model.varCPFLocalizado,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Data de Nascimento',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: _model.varCPFLocalizado
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
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
                                    color: _model.varCPFLocalizado
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x7F57636C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              hoverColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              prefixIcon: Icon(
                                Icons.date_range,
                                color: _model.varCPFLocalizado
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
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
                                  color: _model.varCPFLocalizado
                                      ? FlutterFlowTheme.of(context).success
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            maxLength: 100,
                            buildCounter: (context,
                                    {required currentLength,
                                    required isFocused,
                                    maxLength}) =>
                                null,
                            keyboardType: TextInputType.number,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .textFieldDtNascimentoTextControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.textFieldDtNascimentoMask],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (_model.varCPFLocalizado)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      child: TextFormField(
                        controller: _model.textFieldNomeAfiliadoTextController,
                        focusNode: _model.textFieldNomeAfiliadoFocusNode,
                        autofocus: false,
                        autofillHints: [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Nome do Afiliado',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).success,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x7F57636C),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hoverColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          prefixIcon: Icon(
                            Icons.person,
                            color: FlutterFlowTheme.of(context).success,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).success,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLines: null,
                        maxLength: 50,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.name,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model
                            .textFieldNomeAfiliadoTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          if (!isAndroid && !isiOS)
                            TextInputFormatter.withFunction(
                                (oldValue, newValue) {
                              return TextEditingValue(
                                selection: newValue.selection,
                                text: newValue.text
                                    .toCapitalization(TextCapitalization.words),
                              );
                            }),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['textFieldOnPageLoadAnimation']!),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var _shouldSetState = false;
                      if (_model.formKey1.currentState == null ||
                          !_model.formKey1.currentState!.validate()) {
                        return;
                      }
                      if (_model.formKey2.currentState == null ||
                          !_model.formKey2.currentState!.validate()) {
                        return;
                      }
                      if (_model.textFieldCPFTextController.text == '') {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content: Text('Informe o CPF'),
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
                        safeSetState(() {
                          _model.textFieldNomeAfiliadoTextController?.clear();
                        });
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      if (!((functions.fcCountCaracteres(
                                  _model.textFieldCPFTextController.text) ==
                              14) &&
                          functions.fcValidarCPF(
                              _model.textFieldCPFTextController.text))) {
                        safeSetState(() {
                          _model.textFieldNomeAfiliadoTextController?.clear();
                        });
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content: Text('CPF Inválido, verifique!'),
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
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      if ((FFAppState().VarTblEstabelecimentoLogado.tipoDoc ==
                              'CPF') &&
                          (FFAppState()
                                      .VarTblEstabelecimentoLogado
                                      .docCpfCnpj !=
                                  '') &&
                          (FFAppState()
                                  .VarTblEstabelecimentoLogado
                                  .docCpfCnpj !=
                              _model.textFieldCPFTextController.text)) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content: Text(
                                    'O CPF do afiliado deve ser igual ao do cadastro do estabelecimento'),
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
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      if (_model.textFieldDtNascimentoTextController.text ==
                              '') {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content:
                                    Text('Informe sua data de nascimento!'),
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
                        safeSetState(() {
                          _model.textFieldNomeAfiliadoTextController?.clear();
                        });
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      if (functions.fcCopararAnosDuasDatas(
                              functions.fcConverterStringPData2(_model
                                  .textFieldDtNascimentoTextController.text)!,
                              getCurrentTimestamp) <
                          18) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content: Text(
                                    'Para ser afiliado você deve ser maior de 18 anos!'),
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
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      _model.acResultConsCPFCad =
                          await action_blocks.acConsultarCPFCNPJCad(
                        context,
                        paramCPFCNPJ: _model.textFieldCPFTextController.text,
                        paramTabela: 'tbl_afiliados',
                      );
                      _shouldSetState = true;
                      if (_model.acResultConsCPFCad != 'False') {
                        if (_shouldSetState) safeSetState(() {});
                        return;
                      }
                      if ((_model.textFieldDtNascimentoTextController.text !=
                                  '') &&
                          (functions.fcCountCaracteres(_model
                                  .textFieldDtNascimentoTextController.text) ==
                              10) &&
                          (functions.fcConverterStringPData2(_model
                                  .textFieldDtNascimentoTextController.text) !=
                              null)) {
                        if (_model.varCPFLocalizado) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text(
                                          'Os dados abaixo estão corretos?${'\n\n'}Nome: ${_model.textFieldNomeAfiliadoTextController.text}${'\n'}CPF:${_model.textFieldCPFTextController.text}${'\n'}Data Nascimento: ${_model.textFieldDtNascimentoTextController.text}'),
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
                            FFAppState().updateVarTblAfiliadoStruct(
                              (e) => e
                                ..nome = _model
                                    .textFieldNomeAfiliadoTextController.text
                                ..dataNascimento =
                                    functions.fcConverterStringPData2(_model
                                        .textFieldDtNascimentoTextController
                                        .text)
                                ..docCpfCnpj =
                                    _model.textFieldCPFTextController.text
                                ..telefone = FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .telefoneEstabelecimento,
                            );
                            _model.resultInsertAfiliado =
                                await TblAfiliadosTable().insert({
                              'user_id': currentUserUid,
                              'id_estabelecimento':
                                  FFAppState().VarIDEstabelecimentoLogado,
                              'nome': _model
                                  .textFieldNomeAfiliadoTextController.text,
                              'situacao': true,
                              'bloqueado': false,
                              'tipo_doc': 'CPF',
                              'doc_cpf_cnpj':
                                  _model.textFieldCPFTextController.text,
                              'genero': FFAppState().varTblAfiliado.genero,
                              'data_nascimento': supaSerialize<DateTime>(
                                  FFAppState().varTblAfiliado.dataNascimento),
                              'status_afiliacao': 'ATIVACAO',
                              'id_afiliado_indicador': FFAppState()
                                  .VarTblEstabelecimentoLogado
                                  .idAfiliadoIndicador,
                              'user_id_afiliado_indicador': FFAppState()
                                  .VarTblEstabelecimentoLogado
                                  .userIdAfiliadoIndicador,
                              'data_base_saque': supaSerialize<DateTime>(
                                  functions
                                      .fcRetornarDiaSaque(getCurrentTimestamp)),
                              'foto_perfil': random_data.randomImageUrl(
                                500,
                                500,
                              ),
                            });
                            _shouldSetState = true;
                            await TblEstabelecimentoTable().update(
                              data: {
                                'id_afiliado': _model.resultInsertAfiliado?.id,
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'id',
                                FFAppState().VarIDEstabelecimentoLogado,
                              ),
                            );
                            _model.afi =
                                await TblAfiliadosAtivDashTable().insert({
                              'user_id_afiliado_indicador': FFAppState()
                                  .VarTblEstabelecimentoLogado
                                  .userIdAfiliadoIndicador,
                              'id_afiliado_indicador': FFAppState()
                                  .VarTblEstabelecimentoLogado
                                  .idAfiliadoIndicador,
                              'id_estabelecimento':
                                  FFAppState().VarIDEstabelecimentoLogado,
                              'user_id': currentUserUid,
                              'situacao': true,
                              'status_pag': 'PENDENTE',
                              'id_afiliado': _model.resultInsertAfiliado?.id,
                              'tipo': 'ADDAFI',
                              'tipo2': 'CAD',
                              'tipo3': 'AFI',
                            });
                            _shouldSetState = true;
                            FFAppState().varIDAfiliadoLogado =
                                _model.resultInsertAfiliado!.id;
                            await action_blocks.acAtualizarAfiliadoCad(context);
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Atenção!'),
                                    content: Text(
                                        'Cadastro efetuado com sucesso! ${'\n'}Agora conclua sua ativação na próxima página que irá abrir.'),
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
                            Navigator.pop(context);

                            context
                                .pushNamed(PgAfiliadoAtivacaoWidget.routeName);
                          }
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text('Atenção!'),
                                  content: Text('CPF não localizado...'),
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
                          safeSetState(() {
                            _model.textFieldNomeAfiliadoTextController?.clear();
                          });
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }
                      } else {
                        safeSetState(() {
                          _model.textFieldNomeAfiliadoTextController?.clear();
                        });
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text('Atenção!'),
                                content: Text(
                                    'Data de nascimento Inválida, verifique!'),
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

                      if (_shouldSetState) safeSetState(() {});
                    },
                    text: 'Continuar',
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
