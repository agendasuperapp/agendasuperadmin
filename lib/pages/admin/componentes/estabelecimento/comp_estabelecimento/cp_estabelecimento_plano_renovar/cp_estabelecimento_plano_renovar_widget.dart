import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/componentes/estabelecimento/comp_estabelecimento/cp_estabelecimento_plano_pagar/cp_estabelecimento_plano_pagar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_estabelecimento_plano_renovar_model.dart';
export 'cp_estabelecimento_plano_renovar_model.dart';

class CpEstabelecimentoPlanoRenovarWidget extends StatefulWidget {
  const CpEstabelecimentoPlanoRenovarWidget({
    super.key,
    required this.paramViewTblAppPlanoEstabelecimento,
    required this.paramRenovacao,
  });

  final ViewTblAppPlanosEstabelecimentosRow?
      paramViewTblAppPlanoEstabelecimento;
  final bool? paramRenovacao;

  @override
  State<CpEstabelecimentoPlanoRenovarWidget> createState() =>
      _CpEstabelecimentoPlanoRenovarWidgetState();
}

class _CpEstabelecimentoPlanoRenovarWidgetState
    extends State<CpEstabelecimentoPlanoRenovarWidget>
    with TickerProviderStateMixin {
  late CpEstabelecimentoPlanoRenovarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpEstabelecimentoPlanoRenovarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.queryConsPlanosPeriodosIni =
          await TblPlanosPeriodosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.paramViewTblAppPlanoEstabelecimento?.idPlanoPeriodo,
        ),
      );
      _model.varIDPlanoPrecoSelecionado =
          widget.paramViewTblAppPlanoEstabelecimento!.idPlanoPreco!;
      _model.varIDPlanoPeriodoSelecionado =
          widget.paramViewTblAppPlanoEstabelecimento!.idPlanoPeriodo!;
      _model.varTblPlanoPeriodo =
          _model.queryConsPlanosPeriodosIni?.firstOrNull;
      safeSetState(() {});
      _model.queryConsViewTblAppPlanos =
          await ViewTblAppPlanosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.paramViewTblAppPlanoEstabelecimento?.idPlanoPreco,
        ),
      );
      _model.varViewTblAppPlanos =
          _model.queryConsViewTblAppPlanos?.firstOrNull;
      safeSetState(() {});
      if (!widget.paramRenovacao!) {
        if (widget.paramViewTblAppPlanoEstabelecimento?.cupom != null &&
            widget.paramViewTblAppPlanoEstabelecimento?.cupom != '') {
          safeSetState(() {
            _model.textFieldCupomTextController?.text =
                widget.paramViewTblAppPlanoEstabelecimento!.cupom!;
          });
          await _model.caAplicarCupomDesconto(
            context,
            paramMostrarMensagemSucesso: false,
          );
        }
      }
    });

    _model.textFieldCupomTextController ??= TextEditingController();
    _model.textFieldCupomFocusNode ??= FocusNode();

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
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
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
            minHeight: MediaQuery.sizeOf(context).width < kBreakpointSmall
                ? MediaQuery.sizeOf(context).height
                : 10.0,
            maxWidth: 1020.0,
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
              topLeft: Radius.circular(valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 0.0
                    : 15.0,
                0.0,
              )),
              topRight: Radius.circular(valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 0.0
                    : 15.0,
                0.0,
              )),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 28.0,
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 0.0, 8.0),
                            child: Text(
                              'Renovação de Plano',
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
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
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
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 28.0,
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 475.0,
                              ),
                              decoration: BoxDecoration(),
                              child: FutureBuilder<List<TblPlanosPeriodosRow>>(
                                future: TblPlanosPeriodosTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'situacao',
                                        true,
                                      )
                                      .order('periodo_mes_dia', ascending: true)
                                      .order('tempo', ascending: true),
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
                                  List<TblPlanosPeriodosRow>
                                      dropDownPlanoPeriodoTblPlanosPeriodosRowList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<int>(
                                    controller: _model
                                            .dropDownPlanoPeriodoValueController ??=
                                        FormFieldController<int>(
                                      _model.dropDownPlanoPeriodoValue ??= widget
                                          .paramViewTblAppPlanoEstabelecimento
                                          ?.idPlanoPeriodo,
                                    ),
                                    options: List<int>.from(
                                        dropDownPlanoPeriodoTblPlanosPeriodosRowList
                                            .map((e) => e.id)
                                            .toList()),
                                    optionLabels:
                                        dropDownPlanoPeriodoTblPlanosPeriodosRowList
                                            .map((e) => e.nome)
                                            .withoutNulls
                                            .toList(),
                                    onChanged: (val) async {
                                      safeSetState(() => _model
                                          .dropDownPlanoPeriodoValue = val);
                                      _model.varCupomDescontoAplicado = false;
                                      _model.varIDPlanoPrecoSelecionado = 0;
                                      _model.varIDPlanoPeriodoSelecionado =
                                          _model.dropDownPlanoPeriodoValue!;
                                      _model.varTblPlanoPeriodo =
                                          dropDownPlanoPeriodoTblPlanosPeriodosRowList
                                              .where((e) =>
                                                  e.id ==
                                                  _model
                                                      .dropDownPlanoPeriodoValue)
                                              .toList()
                                              .firstOrNull;
                                      safeSetState(() {});
                                    },
                                    width: 960.0,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                    hintText: 'Selecione o período do plano',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 12.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                    labelText: 'Período Plano',
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 475.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Wrap(
                                spacing: 8.0,
                                runSpacing: 8.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 1000.0
                                              : 290.0,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller: _model
                                              .textFieldCupomTextController,
                                          focusNode:
                                              _model.textFieldCupomFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textFieldCupomTextController',
                                            Duration(milliseconds: 1),
                                            () async {
                                              _model.varCupomDescontoAplicado =
                                                  false;
                                              safeSetState(() {});
                                            },
                                          ),
                                          onFieldSubmitted: (_) async {
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            safeSetState(() {
                                              _model.textFieldCupomTextController
                                                      ?.text =
                                                  functions
                                                      .fcConverterStringMaiusculo(
                                                          _model
                                                              .textFieldCupomTextController
                                                              .text);
                                            });
                                            await _model.caAplicarCupomDesconto(
                                              context,
                                              paramMostrarMensagemSucesso: true,
                                            );
                                          },
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          textInputAction: TextInputAction.go,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText:
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 'Cupom desconto'
                                                    : 'Cupom de desconto',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
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
                                            alignLabelWithHint: false,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
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
                                            errorStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
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
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF0882F1),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .warning,
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            prefixIcon: Icon(
                                              Icons.discount_outlined,
                                            ),
                                            suffixIcon: _model
                                                    .textFieldCupomTextController!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .textFieldCupomTextController
                                                          ?.clear();
                                                      _model.varCupomDescontoAplicado =
                                                          false;
                                                      safeSetState(() {});
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 18.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
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
                                          maxLength: 15,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .textFieldCupomTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            if (!isAndroid && !isiOS)
                                              TextInputFormatter.withFunction(
                                                  (oldValue, newValue) {
                                                return TextEditingValue(
                                                  selection: newValue.selection,
                                                  text: newValue.text
                                                      .toCapitalization(
                                                          TextCapitalization
                                                              .characters),
                                                );
                                              }),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      safeSetState(() {
                                        _model.textFieldCupomTextController
                                                ?.text =
                                            functions.fcConverterStringMaiusculo(
                                                _model
                                                    .textFieldCupomTextController
                                                    .text);
                                      });
                                      await _model.caAplicarCupomDesconto(
                                        context,
                                        paramMostrarMensagemSucesso: true,
                                      );
                                    },
                                    text: 'Aplicar Cupom',
                                    icon: Icon(
                                      Icons.discount_outlined,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 500.0
                                          : 175.0,
                                      height: 40.0,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (_model.varIDPlanoPrecoSelecionado <= 0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Selecione um Plano',
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
                                  fontSize: 16.0,
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
                      if ((_model.varIDPlanoPeriodoSelecionado != null) &&
                          (_model.varIDPlanoPeriodoSelecionado > 0))
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 960.0,
                          ),
                          decoration: BoxDecoration(),
                          child: FutureBuilder<List<ViewTblAppPlanosRow>>(
                            future: ViewTblAppPlanosTable().queryRows(
                              queryFn: (q) => q
                                  .eqOrNull(
                                    'situacao',
                                    true,
                                  )
                                  .eqOrNull(
                                    'id_plano_periodo',
                                    _model.varIDPlanoPeriodoSelecionado,
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
                              List<ViewTblAppPlanosRow>
                                  staggeredViewViewTblAppPlanosRowList =
                                  snapshot.data!;

                              return MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 1
                                          : 2,
                                ),
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                                itemCount:
                                    staggeredViewViewTblAppPlanosRowList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, staggeredViewIndex) {
                                  final staggeredViewViewTblAppPlanosRow =
                                      staggeredViewViewTblAppPlanosRowList[
                                          staggeredViewIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.varCupomDescontoAplicado &&
                                          (_model
                                                  .varTblCupom!
                                                  .idPlanosNomesLiberados
                                                  .length >
                                              0) &&
                                          (_model.varTblCupom
                                                  ?.idPlanosNomesLiberados
                                                  .contains(
                                                      staggeredViewViewTblAppPlanosRow
                                                          .idPlanoNome) ==
                                              false)) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: Text('Atenção!'),
                                                content: Text(
                                                    'Cupom não permitido para o  plano ${staggeredViewViewTblAppPlanosRow.nomePlano}, selecione outro plano ou informe outro CUPOM'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        return;
                                      }
                                      _model.varIDPlanoPrecoSelecionado =
                                          staggeredViewViewTblAppPlanosRow.id!;
                                      _model.varViewTblAppPlanos =
                                          staggeredViewViewTblAppPlanosRow;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      constraints: BoxConstraints(
                                        minHeight: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 10.0;
                                          } else if (_model
                                                  .varCupomDescontoAplicado &&
                                              (staggeredViewViewTblAppPlanosRow
                                                      .maxParcSjuros! >
                                                  1)) {
                                            return 180.0;
                                          } else if (staggeredViewViewTblAppPlanosRow
                                                  .maxParcSjuros! >
                                              1) {
                                            return 150.0;
                                          } else if (_model
                                              .varCupomDescontoAplicado) {
                                            return 150.0;
                                          } else {
                                            return 50.0;
                                          }
                                        }(),
                                      ),
                                      decoration: BoxDecoration(
                                        color: _model
                                                    .varIDPlanoPrecoSelecionado ==
                                                staggeredViewViewTblAppPlanosRow
                                                    .id
                                            ? Color(0xFF87F8EB)
                                            : FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            '',
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: _model
                                                      .varIDPlanoPrecoSelecionado ==
                                                  staggeredViewViewTblAppPlanosRow
                                                      .id
                                              ? FlutterFlowTheme.of(context)
                                                  .success
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model
                                                        .varIDPlanoPrecoSelecionado ==
                                                    staggeredViewViewTblAppPlanosRow
                                                        .id)
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                if (_model
                                                        .varIDPlanoPrecoSelecionado !=
                                                    staggeredViewViewTblAppPlanosRow
                                                        .id)
                                                  Icon(
                                                    Icons
                                                        .radio_button_off_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      staggeredViewViewTblAppPlanosRow
                                                          .nomePlano,
                                                      '...',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 14.0
                                                              : 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.groups_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Profissionais liberados: ${staggeredViewViewTblAppPlanosRow.quantProfissionaisMax?.toString()}',
                                                  textAlign: TextAlign.center,
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
                                                                .secondaryText,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation2']!),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.calendar_month,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Limite de agendamentos: ${staggeredViewViewTblAppPlanosRow.quantAgendamentosMax?.toString()}',
                                                  textAlign: TextAlign.center,
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
                                                                .secondaryText,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation3']!),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            Stack(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              children: [
                                                if (staggeredViewViewTblAppPlanosRow
                                                        .preco! >
                                                    0.0)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        formatNumber(
                                                          staggeredViewViewTblAppPlanosRow
                                                              .preco!,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .commaDecimal,
                                                          currency: 'R\$',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                                  color: _model
                                                                              .varCupomDescontoAplicado &&
                                                                          ((_model.varTblCupom?.idPlanosNomesLiberados.length == 0) ||
                                                                              (_model.varTblCupom?.idPlanosNomesLiberados.contains(staggeredViewViewTblAppPlanosRow.idPlanoNome) ==
                                                                                  true))
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  fontSize:
                                                                      20.0,
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
                                                      if (staggeredViewViewTblAppPlanosRow
                                                              .nomePlanoPeriodos ==
                                                          'Mensal')
                                                        Text(
                                                          '/mês',
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
                                                                color: _model
                                                                            .varCupomDescontoAplicado &&
                                                                        ((_model.varTblCupom?.idPlanosNomesLiberados.length ==
                                                                                0) ||
                                                                            (_model.varTblCupom?.idPlanosNomesLiberados.contains(staggeredViewViewTblAppPlanosRow.idPlanoNome) ==
                                                                                true))
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                fontSize: 20.0,
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
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation1']!),
                                                if (_model
                                                        .varCupomDescontoAplicado &&
                                                    ((_model
                                                                .varTblCupom
                                                                ?.idPlanosNomesLiberados
                                                                .length ==
                                                            0) ||
                                                        (_model.varTblCupom
                                                                ?.idPlanosNomesLiberados
                                                                .contains(
                                                                    staggeredViewViewTblAppPlanosRow
                                                                        .idPlanoNome) ==
                                                            true)))
                                                  Container(
                                                    width: 150.0,
                                                    height: 2.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x9AFF5963),
                                                      border: Border.all(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (_model
                                                    .varCupomDescontoAplicado &&
                                                ((_model
                                                            .varTblCupom
                                                            ?.idPlanosNomesLiberados
                                                            .length ==
                                                        0) ||
                                                    (_model.varTblCupom
                                                            ?.idPlanosNomesLiberados
                                                            .contains(
                                                                staggeredViewViewTblAppPlanosRow
                                                                    .idPlanoNome) ==
                                                        true)))
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      _model.varTblCupom
                                                                  ?.tipoCupom ==
                                                              'DESCONTO'
                                                          ? 'Desconto de ${_model.varTblCupom?.percDesconto?.toString()}% aplicado:'
                                                          : 'Desconto de ${_model.varTblCupom?.percDesconto?.toString()}% aplicado válido por ${_model.varTblCupom?.tempo?.toString()} ${() {
                                                              if (_model
                                                                      .varTblCupom
                                                                      ?.tipoCupom ==
                                                                  'MES') {
                                                                return (_model
                                                                            .varTblPlanoPeriodo
                                                                            ?.tempo ==
                                                                        1
                                                                    ? 'Mês'
                                                                    : 'Meses');
                                                              } else if (_model
                                                                      .varTblCupom
                                                                      ?.tipoCupom ==
                                                                  'DIA') {
                                                                return (_model
                                                                            .varTblPlanoPeriodo
                                                                            ?.tempo ==
                                                                        1
                                                                    ? 'Dia'
                                                                    : 'Dias');
                                                              } else {
                                                                return '...';
                                                              }
                                                            }()}: ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? 12.0
                                                                    : 14.0,
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
                                                  Text(
                                                    formatNumber(
                                                      functions.fcSubtrairPercentualNumeroDouble(
                                                          staggeredViewViewTblAppPlanosRow
                                                              .preco!,
                                                          _model.varTblCupom!
                                                              .percDesconto!),
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType: DecimalType
                                                          .commaDecimal,
                                                      currency: 'R\$',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .readexPro(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 14.0
                                                              : 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ).animateOnPageLoad(animationsMap[
                                                  'rowOnPageLoadAnimation2']!),
                                            if (staggeredViewViewTblAppPlanosRow
                                                    .maxParcSjuros! >
                                                1)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'Parcele em até ${staggeredViewViewTblAppPlanosRow.maxParcSjuros?.toString()}X sem juros no cartão de crédito',
                                                  textAlign: TextAlign.center,
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
                                                                .secondaryText,
                                                        fontSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 12.0
                                                            : 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation4']!),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!_model.varTermoAceito)
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.varTermoAceito = true;
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.check_box_outline_blank_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            if (_model.varTermoAceito)
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.varTermoAceito = false;
                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.check_box_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Li e aceito o ',
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
                            Text(
                              'Termo de uso do sistema',
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
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
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
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          var _shouldSetState = false;
                          if ((_model.dropDownPlanoPeriodoValue == null) ||
                              (_model.dropDownPlanoPeriodoValue! <= 0)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Atenção!'),
                                    content: Text('Selecione um período'),
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
                          if (_model.varIDPlanoPrecoSelecionado <= 0) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Atenção!'),
                                    content: Text('Selecione um plano'),
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
                          if (!_model.varTermoAceito) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text('Atenção!'),
                                    content: Text(
                                        'Para continuar leia e aceite o Termo de uso do sistema.'),
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
                          if (_model.varCupomDescontoAplicado) {
                            _model.resultAplicarCupom =
                                await _model.caAplicarCupomDesconto(
                              context,
                              paramMostrarMensagemSucesso: false,
                            );
                            _shouldSetState = true;
                            if (!_model.resultAplicarCupom!) {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          }
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text(
                                          'Deseja continuar com o plano ${_model.varTblPlanoPeriodo?.nome} ${_model.varViewTblAppPlanos?.nomePlano}?'),
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
                            if (widget.paramRenovacao!) {
                              _model.resultInserttblEstabPlano =
                                  await TblEstabelecimentoPlanoTable().insert({
                                'id_estabelecimento':
                                    FFAppState().VarIDEstabelecimentoLogado,
                                'id_plano_preco':
                                    _model.varIDPlanoPrecoSelecionado,
                                'data_inicial': supaSerialize<DateTime>(widget
                                    .paramViewTblAppPlanoEstabelecimento
                                    ?.dataFinal),
                                'data_final': supaSerialize<DateTime>(_model
                                            .varTblPlanoPeriodo
                                            ?.periodoMesDia ==
                                        'M'
                                    ? functions.fcAdicionarMesEmData(
                                        widget
                                            .paramViewTblAppPlanoEstabelecimento!
                                            .dataFinal!,
                                        _model.varTblPlanoPeriodo!.tempo!)
                                    : functions.fcAdicionarDiasEmData(
                                        widget
                                            .paramViewTblAppPlanoEstabelecimento!
                                            .dataFinal!,
                                        _model.varTblPlanoPeriodo!.tempo!)),
                                'situacao': true,
                                'id_plano_anterior': widget
                                    .paramViewTblAppPlanoEstabelecimento
                                    ?.idPlanoEstabelecimento,
                                'cupom_id_afiliado':
                                    _model.varCupomDescontoAplicado
                                        ? _model.varTblCupom?.idAfiliado
                                        : null,
                                'cupom_id_afiliado_cupom':
                                    _model.varCupomDescontoAplicado
                                        ? (_model.varCupomDescontoAplicado
                                            ? _model.varTblCupom?.idCupom
                                            : null)
                                        : null,
                                'cupom': _model.varCupomDescontoAplicado
                                    ? _model.varTblCupom?.nomeCupom
                                    : null,
                                'cupom_tipo': _model.varCupomDescontoAplicado
                                    ? _model.varTblCupom?.tipoCupom
                                    : null,
                                'cupom_tempo': _model.varCupomDescontoAplicado
                                    ? (_model.varCupomDescontoAplicado
                                        ? _model.varTblCupom?.tempo
                                        : null)
                                    : null,
                                'cupom_desconto':
                                    _model.varCupomDescontoAplicado
                                        ? _model.varTblCupom?.percDesconto
                                        : null,
                                'valor_sem_desconto':
                                    _model.varViewTblAppPlanos?.preco,
                                'valor_com_desconto': _model
                                        .varCupomDescontoAplicado
                                    ? functions
                                        .fcSubtrairPercentualNumeroDouble(
                                            _model.varViewTblAppPlanos!.preco!,
                                            _model.varTblCupom!.percDesconto!)
                                    : _model.varViewTblAppPlanos?.preco,
                                'status_pagamento': 'PENDENTE',
                                'quant_profissionais_min': _model
                                    .varViewTblAppPlanos?.quantProfissionaisMin,
                                'quant_profissionais_max': _model
                                    .varViewTblAppPlanos?.quantProfissionaisMax,
                                'quant_agendamentos_max': _model
                                    .varViewTblAppPlanos?.quantAgendamentosMax,
                                'plano_ativo': true,
                                'quant_profissionais_usados': 0,
                                'quant_agendamentos_usados': 0,
                                'tempo': _model.varViewTblAppPlanos?.tempo,
                                'periodo_mes_dia':
                                    _model.varTblPlanoPeriodo?.periodoMesDia,
                                'porcentagem_desconto':
                                    _model.varCupomDescontoAplicado
                                        ? _model.varTblCupom?.percDesconto
                                        : 0.0,
                                'external_reference': random_data.randomString(
                                  12,
                                  12,
                                  true,
                                  true,
                                  true,
                                ),
                                'user_id': currentUserUid,
                                'id_afiliado_indicador': FFAppState()
                                    .VarTblEstabelecimentoLogado
                                    .idAfiliadoIndicador,
                                'renovacao': true,
                              });
                              _shouldSetState = true;
                              await TblEstabelecimentoPlanoTable().update(
                                data: {
                                  'plano_ativo': false,
                                },
                                matchingRows: (rows) => rows
                                    .eqOrNull(
                                      'id',
                                      widget
                                          .paramViewTblAppPlanoEstabelecimento
                                          ?.idPlanoEstabelecimento,
                                    )
                                    .eqOrNull(
                                      'id_estabelecimento',
                                      FFAppState().VarIDEstabelecimentoLogado,
                                    ),
                              );
                              _model.queryConsViewtblAppPlanosEstabel =
                                  await ViewTblAppPlanosEstabelecimentosTable()
                                      .queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'id_estabelecimento',
                                      FFAppState().VarIDEstabelecimentoLogado,
                                    )
                                    .eqOrNull(
                                      'id_plano_estabelecimento',
                                      _model.resultInserttblEstabPlano?.id,
                                    ),
                              );
                              _shouldSetState = true;
                              await showDialog(
                                barrierColor: Color(0xBE14181B),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: CpEstabelecimentoPlanoPagarWidget(
                                        paramViewTblPlanoEstabelecimento: _model
                                            .queryConsViewtblAppPlanosEstabel!
                                            .firstOrNull!,
                                      ),
                                    ),
                                  );
                                },
                              );

                              Navigator.pop(context);
                            } else {
                              await TblEstabelecimentoPlanoTable().update(
                                data: {
                                  'id_plano_preco':
                                      _model.varIDPlanoPrecoSelecionado,
                                  'data_inicial': supaSerialize<DateTime>(
                                      widget
                                          .paramViewTblAppPlanoEstabelecimento
                                          ?.dataInicial),
                                  'data_final': supaSerialize<DateTime>(_model
                                              .varTblPlanoPeriodo
                                              ?.periodoMesDia ==
                                          'M'
                                      ? functions.fcAdicionarMesEmData(
                                          widget
                                              .paramViewTblAppPlanoEstabelecimento!
                                              .dataInicial!,
                                          _model.varTblPlanoPeriodo!.tempo!)
                                      : functions.fcAdicionarDiasEmData(
                                          widget
                                              .paramViewTblAppPlanoEstabelecimento!
                                              .dataInicial!,
                                          _model.varTblPlanoPeriodo!.tempo!)),
                                  'situacao': true,
                                  'cupom_id_afiliado':
                                      _model.varCupomDescontoAplicado
                                          ? _model.varTblCupom?.idAfiliado
                                          : null,
                                  'cupom_id_afiliado_cupom':
                                      _model.varCupomDescontoAplicado
                                          ? _model.varTblCupom?.idCupom
                                          : null,
                                  'cupom': _model.varCupomDescontoAplicado
                                      ? _model.varTblCupom?.nomeCupom
                                      : null,
                                  'cupom_tipo': _model.varCupomDescontoAplicado
                                      ? _model.varTblCupom?.tipoCupom
                                      : null,
                                  'cupom_tempo': _model.varCupomDescontoAplicado
                                      ? _model.varTblCupom?.tempo
                                      : null,
                                  'cupom_desconto':
                                      _model.varCupomDescontoAplicado
                                          ? _model.varTblCupom?.percDesconto
                                          : null,
                                  'valor_sem_desconto':
                                      _model.varViewTblAppPlanos?.preco,
                                  'valor_com_desconto': _model
                                          .varCupomDescontoAplicado
                                      ? functions
                                          .fcSubtrairPercentualNumeroDouble(
                                              _model
                                                  .varViewTblAppPlanos!.preco!,
                                              _model.varTblCupom!.percDesconto!)
                                      : _model.varViewTblAppPlanos?.preco,
                                  'id_forma_pagamento': null,
                                  'status_pagamento': 'PENDENTE',
                                  'quant_profissionais_min': _model
                                      .varViewTblAppPlanos
                                      ?.quantProfissionaisMin,
                                  'quant_profissionais_max': _model
                                      .varViewTblAppPlanos
                                      ?.quantProfissionaisMax,
                                  'quant_agendamentos_max': _model
                                      .varViewTblAppPlanos
                                      ?.quantAgendamentosMax,
                                  'plano_ativo': true,
                                  'quant_profissionais_usados': 0,
                                  'quant_agendamentos_usados': 0,
                                  'tempo': _model.varViewTblAppPlanos?.tempo,
                                  'periodo_mes_dia':
                                      _model.varTblPlanoPeriodo?.periodoMesDia,
                                  'porcentagem_desconto':
                                      _model.varCupomDescontoAplicado
                                          ? _model.varTblCupom?.percDesconto
                                          : null,
                                  'external_reference':
                                      random_data.randomString(
                                    12,
                                    12,
                                    true,
                                    true,
                                    true,
                                  ),
                                },
                                matchingRows: (rows) => rows
                                    .eqOrNull(
                                      'id',
                                      widget
                                          .paramViewTblAppPlanoEstabelecimento
                                          ?.idPlanoEstabelecimento,
                                    )
                                    .eqOrNull(
                                      'id_estabelecimento',
                                      FFAppState().VarIDEstabelecimentoLogado,
                                    ),
                              );
                              Navigator.pop(context);
                              await showDialog(
                                barrierColor: Color(0xBE14181B),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: CpEstabelecimentoPlanoPagarWidget(
                                        paramViewTblPlanoEstabelecimento: widget
                                            .paramViewTblAppPlanoEstabelecimento!,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          }
                          if (_shouldSetState) safeSetState(() {});
                        },
                        text: 'Continuar',
                        icon: Icon(
                          Icons.arrow_forward_sharp,
                          size: 24.0,
                        ),
                        options: FFButtonOptions(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                  ),
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall)
                    Container(
                      width: 100.0,
                      height: 30.0,
                      decoration: BoxDecoration(),
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
