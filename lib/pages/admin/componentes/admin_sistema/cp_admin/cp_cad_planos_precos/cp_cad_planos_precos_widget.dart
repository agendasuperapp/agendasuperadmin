import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_cad_planos_precos_model.dart';
export 'cp_cad_planos_precos_model.dart';

class CpCadPlanosPrecosWidget extends StatefulWidget {
  const CpCadPlanosPrecosWidget({
    super.key,
    required this.paramCadastro,
    this.paramRowTblPlanoPreco,
  });

  final bool? paramCadastro;
  final ViewTblAppPlanosRow? paramRowTblPlanoPreco;

  @override
  State<CpCadPlanosPrecosWidget> createState() =>
      _CpCadPlanosPrecosWidgetState();
}

class _CpCadPlanosPrecosWidgetState extends State<CpCadPlanosPrecosWidget> {
  late CpCadPlanosPrecosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpCadPlanosPrecosModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.varSituacao = widget.paramRowTblPlanoPreco!.situacao!;
      safeSetState(() {});
      if (!widget.paramCadastro!) {
        safeSetState(() {
          _model.dropDownPlanoPeriodoValueController?.value =
              widget.paramRowTblPlanoPreco!.idPlanoPeriodo!;
        });
        safeSetState(() {
          _model.textFieldValorTextController?.text =
              widget.paramRowTblPlanoPreco!.preco!.toString();
        });
        safeSetState(() {
          _model.countControllerQtProfMinValue =
              widget.paramRowTblPlanoPreco!.quantProfissionaisMin!;
        });
        safeSetState(() {
          _model.countControllerQtProfMaxValue =
              widget.paramRowTblPlanoPreco!.quantProfissionaisMax!;
        });
        safeSetState(() {
          _model.textFieldQtAgendamentosTextController?.text =
              widget.paramRowTblPlanoPreco!.quantAgendamentosMax!.toString();
        });
      }
    });

    _model.textFieldQtAgendamentosTextController ??= TextEditingController(
        text: widget.paramRowTblPlanoPreco?.quantAgendamentosMax?.toString());
    _model.textFieldQtAgendamentosFocusNode ??= FocusNode();

    _model.textFieldValorTextController ??= TextEditingController(
        text: widget.paramRowTblPlanoPreco?.preco?.toString());
    _model.textFieldValorFocusNode ??= FocusNode();

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
        constraints: BoxConstraints(
          minHeight: MediaQuery.sizeOf(context).width < kBreakpointSmall
              ? MediaQuery.sizeOf(context).height
              : 10.0,
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
                            'Cadastro de Planos',
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
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
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
                                      _model.dropDownPlanoPeriodoValue ??=
                                          !widget.paramCadastro!
                                              ? widget.paramRowTblPlanoPreco
                                                  ?.idPlanoPeriodo
                                              : 0,
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
                                      _model.queryConsPlanosPeriodos =
                                          await TblPlanosPeriodosTable()
                                              .queryRows(
                                        queryFn: (q) => q.eqOrNull(
                                          'id',
                                          _model.dropDownPlanoPeriodoValue,
                                        ),
                                      );
                                      safeSetState(() {
                                        _model.countControllerQtProfMinValue =
                                            _model
                                                .queryConsPlanoNome!
                                                .firstOrNull!
                                                .qtProfissionaisMin!;
                                      });
                                      safeSetState(() {
                                        _model.countControllerQtProfMaxValue =
                                            _model
                                                .queryConsPlanoNome!
                                                .firstOrNull!
                                                .qtProfissionaisMax!;
                                      });
                                      safeSetState(() {
                                        _model.textFieldQtAgendamentosTextController
                                                ?.text =
                                            functions
                                                .fcMultiplicarNumInteiros(
                                                    _model
                                                        .queryConsPlanoNome!
                                                        .firstOrNull!
                                                        .qtAgendamentosMax!,
                                                    _model
                                                                .queryConsPlanosPeriodos
                                                                ?.firstOrNull
                                                                ?.periodoMesDia ==
                                                            'M'
                                                        ? _model
                                                            .queryConsPlanosPeriodos!
                                                            .firstOrNull!
                                                            .tempo!
                                                        : 1)
                                                .toString();
                                      });

                                      safeSetState(() {});
                                    },
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                    labelText: 'Período plano',
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
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
                              decoration: BoxDecoration(),
                              child: FutureBuilder<List<TblPlanosNomesRow>>(
                                future: TblPlanosNomesTable().queryRows(
                                  queryFn: (q) => q
                                      .eqOrNull(
                                        'situacao',
                                        true,
                                      )
                                      .order('qt_profissionais_max',
                                          ascending: true)
                                      .order('qt_agendamentos_max',
                                          ascending: true),
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
                                  List<TblPlanosNomesRow>
                                      dropDownNomeTblPlanosNomesRowList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<int>(
                                    controller:
                                        _model.dropDownNomeValueController ??=
                                            FormFieldController<int>(
                                      _model.dropDownNomeValue ??=
                                          !widget.paramCadastro!
                                              ? widget.paramRowTblPlanoPreco
                                                  ?.idPlanoNome
                                              : 0,
                                    ),
                                    options: List<int>.from(
                                        dropDownNomeTblPlanosNomesRowList
                                            .map((e) => e.id)
                                            .toList()),
                                    optionLabels:
                                        dropDownNomeTblPlanosNomesRowList
                                            .map((e) => e.nome)
                                            .withoutNulls
                                            .toList(),
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownNomeValue = val);
                                      _model.queryConsPlanoNome =
                                          await TblPlanosNomesTable().queryRows(
                                        queryFn: (q) => q.eqOrNull(
                                          'id',
                                          _model.dropDownNomeValue,
                                        ),
                                      );
                                      safeSetState(() {
                                        _model.countControllerQtProfMinValue =
                                            _model
                                                .queryConsPlanoNome!
                                                .firstOrNull!
                                                .qtProfissionaisMin!;
                                      });
                                      safeSetState(() {
                                        _model.countControllerQtProfMaxValue =
                                            _model
                                                .queryConsPlanoNome!
                                                .firstOrNull!
                                                .qtProfissionaisMax!;
                                      });
                                      safeSetState(() {
                                        _model.textFieldQtAgendamentosTextController
                                                ?.text =
                                            functions
                                                .fcMultiplicarNumInteiros(
                                                    _model
                                                        .queryConsPlanoNome!
                                                        .firstOrNull!
                                                        .qtAgendamentosMax!,
                                                    _model
                                                                .queryConsPlanosPeriodos
                                                                ?.firstOrNull
                                                                ?.periodoMesDia ==
                                                            'M'
                                                        ? _model
                                                            .queryConsPlanosPeriodos!
                                                            .firstOrNull!
                                                            .tempo!
                                                        : 1)
                                                .toString();
                                      });

                                      safeSetState(() {});
                                    },
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                    hintText: 'Selecione o nome',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                    labelText: 'Nome do plano',
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
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
                              decoration: BoxDecoration(),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => Icon(
                                      Icons.remove_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 24.0,
                                    ),
                                    incrementIconBuilder: (enabled) => Icon(
                                      Icons.add_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 24.0,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                    count: _model
                                        .countControllerQtProfMinValue ??= 1,
                                    updateCount: (count) => safeSetState(() =>
                                        _model.countControllerQtProfMinValue =
                                            count),
                                    stepSize: 1,
                                    minimum: 1,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Quant. Profissionais inicial',
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
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => Icon(
                                      Icons.remove_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryText
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 24.0,
                                    ),
                                    incrementIconBuilder: (enabled) => Icon(
                                      Icons.add_rounded,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 24.0,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                    count: _model
                                        .countControllerQtProfMaxValue ??= 1,
                                    updateCount: (count) => safeSetState(() =>
                                        _model.countControllerQtProfMaxValue =
                                            count),
                                    stepSize: 1,
                                    minimum: 1,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Quant. Profissionais máximo',
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
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              child: TextFormField(
                                controller: _model
                                    .textFieldQtAgendamentosTextController,
                                focusNode:
                                    _model.textFieldQtAgendamentosFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Quant. Agendamentos',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .textFieldQtAgendamentosTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: TextFormField(
                                controller: _model.textFieldValorTextController,
                                focusNode: _model.textFieldValorFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Valor',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                validator: _model
                                    .textFieldValorTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9,.]'))
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: InkWell(
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: _model.varSituacao
                                            ? FlutterFlowTheme.of(context)
                                                .success
                                            : FlutterFlowTheme.of(context)
                                                .error,
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
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.dropDownPlanoPeriodoValue == null) {
                              return;
                            }
                            if (_model.countControllerQtProfMinValue! >
                                _model.countControllerQtProfMaxValue!) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text(
                                          'Quant. Máxima deve ser maior ou igual a quant. Mínima de profissionais'),
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
                            if (_model.dropDownNomeValue! <= 0) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content:
                                          Text('Selecione o nome do plano'),
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
                            _model.queryConsNomePlano =
                                await ViewTblAppPlanosTable().queryRows(
                              queryFn: (q) => q
                                  .eqOrNull(
                                    'id_plano_nome',
                                    _model.dropDownNomeValue,
                                  )
                                  .eqOrNull(
                                    'id_plano_periodo',
                                    _model.dropDownPlanoPeriodoValue,
                                  )
                                  .neqOrNull(
                                    'id',
                                    widget.paramCadastro!
                                        ? 0
                                        : widget.paramRowTblPlanoPreco?.id,
                                  ),
                            );
                            _shouldSetState = true;
                            if (_model.queryConsNomePlano!.length > 0) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text(
                                          'Esse plano já está cadastrado no sistema.'),
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
                            if (_model.dropDownPlanoPeriodoValue == 0) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content:
                                          Text('Selecione o período do plano'),
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
                            if ((functions.fcVerificarNumeroDecimalValido(
                                        functions.fcSubstituirCaractere(
                                            _model.textFieldValorTextController
                                                .text,
                                            ',',
                                            '.')) ==
                                    false) &&
                                (_model.textFieldValorTextController.text !=
                                        '')) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Atenção!'),
                                      content: Text('Valor inválido'),
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
                            if (widget.paramCadastro!) {
                              await TblPlanosPrecosTable().insert({
                                'situacao': true,
                                'preco': functions.fcConverterStringPDouble(
                                    functions.fcSubstituirCaractere(
                                        _model
                                            .textFieldValorTextController.text,
                                        ',',
                                        '.')),
                                'quant_profissionais_min':
                                    _model.countControllerQtProfMinValue,
                                'quant_profissionais_max':
                                    _model.countControllerQtProfMaxValue,
                                'quant_agendamentos_max': int.tryParse(_model
                                    .textFieldQtAgendamentosTextController
                                    .text),
                                'user_id': currentUserUid,
                                'id_plano_periodo':
                                    _model.dropDownPlanoPeriodoValue,
                                'id_plano_nome': _model.dropDownNomeValue,
                              });
                              safeSetState(() {
                                _model.textFieldQtAgendamentosTextController
                                    ?.clear();
                                _model.textFieldValorTextController?.clear();
                              });
                              safeSetState(() {
                                _model.countControllerQtProfMinValue = 1;
                              });
                              safeSetState(() {
                                _model.countControllerQtProfMaxValue = 1;
                              });
                              _model.varSituacao = true;
                              safeSetState(() {});
                              if (FFAppState().VarAbrirJanelasWebAndroid ==
                                  true) {
                                context.safePop();
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Plano adicionado com sucesso...',
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
                              await TblPlanosPrecosTable().update(
                                data: {
                                  'situacao': _model.varSituacao,
                                  'preco': functions.fcConverterStringPDouble(
                                      functions.fcSubstituirCaractere(
                                          _model.textFieldValorTextController
                                              .text,
                                          ',',
                                          '.')),
                                  'quant_profissionais_min':
                                      _model.countControllerQtProfMinValue,
                                  'quant_profissionais_max':
                                      _model.countControllerQtProfMaxValue,
                                  'quant_agendamentos_max': int.tryParse(_model
                                      .textFieldQtAgendamentosTextController
                                      .text),
                                  'id_plano_periodo':
                                      _model.dropDownPlanoPeriodoValue,
                                  'id_plano_nome': _model.dropDownNomeValue,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.paramRowTblPlanoPreco?.id,
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

                            if (_shouldSetState) safeSetState(() {});
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
