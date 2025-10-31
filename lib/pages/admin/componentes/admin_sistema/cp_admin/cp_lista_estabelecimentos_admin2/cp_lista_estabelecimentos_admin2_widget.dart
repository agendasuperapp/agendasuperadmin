import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/a_sistema/home/cp_sem_cadastro/cp_sem_cadastro_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_agendamentos_view_admin/cp_agendamentos_view_admin_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_estabelec_view_admin/cp_estabelec_view_admin_widget.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_lista_eventos_stripe/cp_lista_eventos_stripe_widget.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_profissionais/cp_profissionais_widget.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_servicos/cp_servicos_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cp_lista_estabelecimentos_admin2_model.dart';
export 'cp_lista_estabelecimentos_admin2_model.dart';

class CpListaEstabelecimentosAdmin2Widget extends StatefulWidget {
  const CpListaEstabelecimentosAdmin2Widget({super.key});

  @override
  State<CpListaEstabelecimentosAdmin2Widget> createState() =>
      _CpListaEstabelecimentosAdmin2WidgetState();
}

class _CpListaEstabelecimentosAdmin2WidgetState
    extends State<CpListaEstabelecimentosAdmin2Widget> {
  late CpListaEstabelecimentosAdmin2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpListaEstabelecimentosAdmin2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.varFotoFundo =
          FFAppState().VarTblEstabelecimentoLogado.fotoLightMode;
      safeSetState(() {});
      _model.queryTblPlanosNomes =
          await ViewTblAppPlanosNomesFiltrosTable().queryRows(
        queryFn: (q) => q,
      );
      _model.queryEstabStatusAssinatura =
          await ViewTblEstabStatusAssinaturaFiltroTable().queryRows(
        queryFn: (q) => q,
      );
      _model.queryEstabStatusPagmento =
          await ViewTblPgStatusPagamentoFiltroTable().queryRows(
        queryFn: (q) => q,
      );
      _model.varTblPlanosNomesFiltro = _model.queryTblPlanosNomes!
          .toList()
          .cast<ViewTblAppPlanosNomesFiltrosRow>();
      _model.varTblStatusAssinatura = _model.queryEstabStatusAssinatura!
          .toList()
          .cast<ViewTblEstabStatusAssinaturaFiltroRow>();
      _model.varTblStatusPagamento = _model.queryEstabStatusPagmento!
          .toList()
          .cast<ViewTblPgStatusPagamentoFiltroRow>();
      safeSetState(() {});
      await _model.acAtualizarDadosAPI(
        context,
        paramNavPrimeiraPag: false,
        paramExibirAguarde: true,
      );
    });

    _model.textFieldPesquisarTextController ??= TextEditingController();
    _model.textFieldPesquisarFocusNode ??= FocusNode();

    _model.switchContaProducaoValue = true;
    _model.switchSituacaoValue = true;
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
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                Theme.of(context).brightness == Brightness.dark
                    ? 'sem foto, usar a cor do container'
                    : _model.varFotoFundo,
              ).image,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 40.0),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await _model.acAtualizarDadosAPI(
                        context,
                        paramNavPrimeiraPag: false,
                        paramExibirAguarde: true,
                      );

                      safeSetState(() {});
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      'Estabelecimentos',
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
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Wrap(
                                  spacing: 8.0,
                                  runSpacing: 4.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 250.0,
                                      child: TextFormField(
                                        controller: _model
                                            .textFieldPesquisarTextController,
                                        focusNode:
                                            _model.textFieldPesquisarFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textFieldPesquisarTextController',
                                          Duration(milliseconds: 1000),
                                          () async {
                                            await _model.acAtualizarDadosAPI(
                                              context,
                                              paramNavPrimeiraPag: true,
                                              paramExibirAguarde: false,
                                            );

                                            safeSetState(() {});
                                          },
                                        ),
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
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
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          hintText: 'Pesquisar...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
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
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          prefixIcon: Icon(
                                            Icons.search,
                                          ),
                                          suffixIcon: _model
                                                  .textFieldPesquisarTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .textFieldPesquisarTextController
                                                        ?.clear();
                                                    await _model
                                                        .acAtualizarDadosAPI(
                                                      context,
                                                      paramNavPrimeiraPag: true,
                                                      paramExibirAguarde: false,
                                                    );

                                                    safeSetState(() {});
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textFieldPesquisarTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    FlutterFlowDropDown<int>(
                                      controller: _model
                                              .dropDownNomesPlanosValueController ??=
                                          FormFieldController<int>(
                                        _model.dropDownNomesPlanosValue ??= 0,
                                      ),
                                      options: List<int>.from(_model
                                          .varTblPlanosNomesFiltro
                                          .map((e) => e.id)
                                          .withoutNulls
                                          .toList()),
                                      optionLabels: _model
                                          .varTblPlanosNomesFiltro
                                          .map((e) => e.nome)
                                          .withoutNulls
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownNomesPlanosValue = val);
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 150.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Planos',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownStatusPlanoValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownStatusPlanoValue ??=
                                            'todos',
                                      ),
                                      options: List<String>.from(
                                          ['todos', 'Inativo', 'Ativo']),
                                      optionLabels: [
                                        'Todos',
                                        'Planos Inativos',
                                        'Planos Ativos'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownStatusPlanoValue = val);
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 170.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Status do Plano',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownTipoValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownTipoValue ??= 'todos',
                                      ),
                                      options: List<String>.from(
                                          ['todos', 'true', 'false']),
                                      optionLabels: [
                                        'Todos',
                                        'Assinatura',
                                        'Pagamento'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.dropDownTipoValue = val);
                                        _model.varFiltroTipoPlano = [
                                          true,
                                          false
                                        ];
                                        if ((_model.dropDownTipoValue ==
                                                'todos') ||
                                            (_model.dropDownTipoValue ==
                                                'assinatura')) {
                                          _model.addToVarFiltroTipoPlano(true);
                                        }
                                        if ((_model.dropDownTipoValue ==
                                                'todos') ||
                                            (_model.dropDownTipoValue ==
                                                'pagamento')) {
                                          _model.addToVarFiltroTipoPlano(false);
                                        }
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 150.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Tipo de Plano',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownStatusAssinaturaValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownStatusAssinaturaValue ??=
                                            'Todos',
                                      ),
                                      options: List<String>.from(_model
                                          .varTblStatusAssinatura
                                          .map((e) => e.nomeStatus)
                                          .withoutNulls
                                          .toList()),
                                      optionLabels: _model
                                          .varTblStatusAssinatura
                                          .map((e) => e.nomeStatus)
                                          .withoutNulls
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                                .dropDownStatusAssinaturaValue =
                                            val);
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 200.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Status Assinatura',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownPeriodoTesteValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownPeriodoTesteValue ??=
                                            'todos',
                                      ),
                                      options: List<String>.from(
                                          ['todos', 'true', 'false']),
                                      optionLabels: ['Todos', 'Sim', 'Não'],
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownPeriodoTesteValue = val);
                                        _model.varFiltroTipoPlano = [
                                          true,
                                          false
                                        ];
                                        if ((_model.dropDownPeriodoTesteValue ==
                                                'todos') ||
                                            (_model.dropDownPeriodoTesteValue ==
                                                'assinatura')) {
                                          _model.addToVarFiltroTipoPlano(true);
                                        }
                                        if ((_model.dropDownPeriodoTesteValue ==
                                                'todos') ||
                                            (_model.dropDownPeriodoTesteValue ==
                                                'pagamento')) {
                                          _model.addToVarFiltroTipoPlano(false);
                                        }
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 130.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Perídodo Teste',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownCancelamentoValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownCancelamentoValue ??=
                                            'todos',
                                      ),
                                      options: List<String>.from(
                                          ['todos', 'solicitou']),
                                      optionLabels: [
                                        'Todos',
                                        'Solicitou cancelamento'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                            .dropDownCancelamentoValue = val);
                                        _model.varFiltroTipoPlano = [
                                          true,
                                          false
                                        ];
                                        if ((_model.dropDownCancelamentoValue ==
                                                'todos') ||
                                            (_model.dropDownCancelamentoValue ==
                                                'assinatura')) {
                                          _model.addToVarFiltroTipoPlano(true);
                                        }
                                        if ((_model.dropDownCancelamentoValue ==
                                                'todos') ||
                                            (_model.dropDownCancelamentoValue ==
                                                'pagamento')) {
                                          _model.addToVarFiltroTipoPlano(false);
                                        }
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 170.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Cancelamento',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .dropDownStatusPagamentoValueController ??=
                                          FormFieldController<String>(
                                        _model.dropDownStatusPagamentoValue ??=
                                            'Todos',
                                      ),
                                      options: List<String>.from(_model
                                          .queryEstabStatusPagmento!
                                          .map((e) => e.nomeStatus)
                                          .withoutNulls
                                          .toList()),
                                      optionLabels: _model
                                          .queryEstabStatusPagmento!
                                          .map((e) => e.nomeStatusPt)
                                          .withoutNulls
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() => _model
                                                .dropDownStatusPagamentoValue =
                                            val);
                                        await _model.acAtualizarDadosAPI(
                                          context,
                                          paramNavPrimeiraPag: true,
                                          paramExibirAguarde: true,
                                        );

                                        safeSetState(() {});
                                      },
                                      width: 170.0,
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
                                      hintText: 'Selecione...',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: 'Status Pagamento',
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
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
                                    ),
                                    Container(
                                      width: 120.0,
                                      decoration: BoxDecoration(),
                                      child: FlutterFlowDropDown<int>(
                                        controller: _model
                                                .dropDownLimiteValueController ??=
                                            FormFieldController<int>(
                                          _model.dropDownLimiteValue ??= 10,
                                        ),
                                        options: List<int>.from(
                                            [10, 25, 50, 100, 500, 1000]),
                                        optionLabels: [
                                          '10',
                                          '25',
                                          '50',
                                          '100',
                                          '500',
                                          '1000'
                                        ],
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.dropDownLimiteValue = val);
                                          await _model.acAtualizarDadosAPI(
                                            context,
                                            paramNavPrimeiraPag: true,
                                            paramExibirAguarde: true,
                                          );

                                          safeSetState(() {});
                                        },
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
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
                                        hintText: 'Selecione...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                        labelText: 'Limite Resultados',
                                        labelTextStyle: FlutterFlowTheme.of(
                                                context)
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
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Switch.adaptive(
                                              value: _model
                                                  .switchContaProducaoValue!,
                                              onChanged: (newValue) async {
                                                safeSetState(() => _model
                                                        .switchContaProducaoValue =
                                                    newValue);
                                                if (newValue) {
                                                  await _model
                                                      .acAtualizarDadosAPI(
                                                    context,
                                                    paramNavPrimeiraPag: true,
                                                    paramExibirAguarde: true,
                                                  );

                                                  safeSetState(() {});
                                                } else {
                                                  await _model
                                                      .acAtualizarDadosAPI(
                                                    context,
                                                    paramNavPrimeiraPag: true,
                                                    paramExibirAguarde: true,
                                                  );

                                                  safeSetState(() {});
                                                }
                                              },
                                              activeColor: Colors.white,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              inactiveThumbColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                _model.switchContaProducaoValue!
                                                    ? 'Contas Produção'
                                                    : 'Contas Teste',
                                                '...',
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
                                                    color: _model
                                                            .switchContaProducaoValue!
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Switch.adaptive(
                                              value:
                                                  _model.switchSituacaoValue!,
                                              onChanged: (newValue) async {
                                                safeSetState(() =>
                                                    _model.switchSituacaoValue =
                                                        newValue);
                                                if (newValue) {
                                                  await _model
                                                      .acAtualizarDadosAPI(
                                                    context,
                                                    paramNavPrimeiraPag: true,
                                                    paramExibirAguarde: true,
                                                  );

                                                  safeSetState(() {});
                                                } else {
                                                  await _model
                                                      .acAtualizarDadosAPI(
                                                    context,
                                                    paramNavPrimeiraPag: true,
                                                    paramExibirAguarde: true,
                                                  );

                                                  safeSetState(() {});
                                                }
                                              },
                                              activeColor: Colors.white,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              inactiveTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              inactiveThumbColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                _model.switchSituacaoValue!
                                                    ? 'Ativos'
                                                    : 'Inativos',
                                                'Ativos',
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
                                                    color: _model
                                                            .switchSituacaoValue!
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    AlignedTooltip(
                                      content: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Text(
                                          'Atualizar',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      offset: 4.0,
                                      preferredDirection: AxisDirection.down,
                                      borderRadius: BorderRadius.circular(8.0),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      elevation: 4.0,
                                      tailBaseWidth: 24.0,
                                      tailLength: 12.0,
                                      waitDuration: Duration(milliseconds: 100),
                                      showDuration:
                                          Duration(milliseconds: 1500),
                                      triggerMode: TooltipTriggerMode.tap,
                                      child: FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: Icon(
                                          Icons.refresh,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await _model.acAtualizarDadosAPI(
                                            context,
                                            paramNavPrimeiraPag: false,
                                            paramExibirAguarde: true,
                                          );

                                          safeSetState(() {});
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Atualizado com sucesso...',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 1000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 4.0, 4.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        '#',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
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
                                              fontSize: 12.0,
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
                                    Container(
                                      width: 50.0,
                                      decoration: BoxDecoration(),
                                    ),
                                    Expanded(
                                      child: Container(
                                        constraints: BoxConstraints(
                                          minWidth: 200.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'Nome/Segmento',
                                          maxLines: 2,
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
                                                fontSize: 12.0,
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
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width: 125.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'E-mail/Telefone',
                                          maxLines: 2,
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
                                                fontSize: 12.0,
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
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width: 125.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'Plano/Assinatura',
                                          maxLines: 2,
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
                                                fontSize: 12.0,
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
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width: 125.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'Plano/Assinatura',
                                          maxLines: 2,
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
                                                fontSize: 12.0,
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
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Qt. Profissionais',
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
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
                                              fontSize: 12.0,
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
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Qt. Serviços',
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
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
                                              fontSize: 12.0,
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
                                    Container(
                                      width: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Qt. Agendamentos',
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
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
                                              fontSize: 12.0,
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
                                    Container(
                                      width: 125.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Data Cadastro',
                                        maxLines: 2,
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
                                              fontSize: 12.0,
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
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: Colors.transparent,
                                        size: 24.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                            ),
                          if ((_model.varQuantResultadosFiltro > 0) &&
                              _model.varTerminouCarregamento)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final varResultApiviewTblEstabelecimentosAdmin =
                                      getJsonField(
                                    _model.varTblEstabelecimentosJson,
                                    r'''$''',
                                  ).toList();
                                  if (varResultApiviewTblEstabelecimentosAdmin
                                      .isEmpty) {
                                    return CpSemCadastroWidget();
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        varResultApiviewTblEstabelecimentosAdmin
                                            .length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 8.0),
                                    itemBuilder: (context,
                                        varResultApiviewTblEstabelecimentosAdminIndex) {
                                      final varResultApiviewTblEstabelecimentosAdminItem =
                                          varResultApiviewTblEstabelecimentosAdmin[
                                              varResultApiviewTblEstabelecimentosAdminIndex];
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: '${getJsonField(
                                                    varResultApiviewTblEstabelecimentosAdminItem,
                                                    r'''$.situacao''',
                                                  ).toString()}' ==
                                                  'true'
                                              ? FlutterFlowTheme.of(context)
                                                  .cCFundoContainesDados
                                              : Color(0x19FF5963),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: '${getJsonField(
                                                      varResultApiviewTblEstabelecimentosAdminItem,
                                                      r'''$.situacao''',
                                                    ).toString()}' ==
                                                    'true'
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 4.0, 4.0, 4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  getJsonField(
                                                    varResultApiviewTblEstabelecimentosAdminItem,
                                                    r'''$.id''',
                                                  ).toString(),
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
                                                        fontSize: 12.0,
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
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.foto_perfil''',
                                                      )?.toString(),
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/agendador-de-beleza-qia8mb/assets/lp37pdsm6md0/sem-imagem.jpg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SelectionArea(
                                                        child: Text(
                                                      getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.nome''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    )),
                                                    if (getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.username''',
                                                        ) !=
                                                        null)
                                                      SelectionArea(
                                                          child: Text(
                                                        getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.username''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      )),
                                                    Text(
                                                      getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.nome_segmento''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    if (getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.cidade''',
                                                        ) !=
                                                        null)
                                                      Text(
                                                        '${valueOrDefault<String>(
                                                          getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.cidade''',
                                                          )?.toString(),
                                                          '...',
                                                        )}/${valueOrDefault<String>(
                                                          getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.uf''',
                                                          )?.toString(),
                                                          '...',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .readexPro(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    if (!_model
                                                        .switchContaProducaoValue!)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .star_rate,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  size: 24.0,
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'CADASTRO TESTE',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.readexPro(
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).warning,
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
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
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 125.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.email''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        )),
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
                                                      child: Container(
                                                        width: 125.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.telefone''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.nome_plano''',
                                                      ).toString()} ${getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.nome_plano_periodos''',
                                                      ).toString()}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    if (functions
                                                            .fcConverterStringMinusculo(
                                                                getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.periodo_teste''',
                                                        ).toString()) ==
                                                        'true')
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                        child: Text(
                                                          getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.tempo_teste''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    Text(
                                                      'Assinatua: ${functions.fcConverterStringMinusculo(getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.assinatura''',
                                                          ).toString()) == 'true' ? 'Sim' : 'Não'}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Text(
                                                      'Status Assinatura: ${valueOrDefault<String>(
                                                        getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.status_assinatura''',
                                                        )?.toString(),
                                                        '...',
                                                      )}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: () {
                                                          if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_pagamento''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'Ag. Pagamento') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1;
                                                          } else if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_pagamento''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'Pago') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3;
                                                          }
                                                        }(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: '${getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_plano''',
                                                                ).toString()}' ==
                                                                'Ativo'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: () {
                                                          if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_pagamento''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'Ag. Pagamento') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1;
                                                          } else if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_pagamento''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'PAGO') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2;
                                                          } else if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_pagamento''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'CANCELADO') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent4;
                                                          }
                                                        }(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: Text(
                                                          'Status Pagamento: ${valueOrDefault<String>(
                                                            getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.status_pagamento''',
                                                            )?.toString(),
                                                            '...',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: () {
                                                          if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_assinatura''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'PERIODO TESTE') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1;
                                                          } else if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_assinatura''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'ATIVA') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2;
                                                          } else if ('${valueOrDefault<String>(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_assinatura''',
                                                                )?.toString(),
                                                                '...',
                                                              )}' ==
                                                              'CANCELADA') {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .accent4;
                                                          }
                                                        }(),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: Text(
                                                          'Status Assinatura: ${valueOrDefault<String>(
                                                            getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.status_assinatura''',
                                                            )?.toString(),
                                                            '...',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: '${getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.status_plano''',
                                                                ).toString()}' ==
                                                                'Ativo'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .accent2
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .accent3,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: Text(
                                                          'Status Plano: ${valueOrDefault<String>(
                                                            getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.status_plano''',
                                                            )?.toString(),
                                                            '...',
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      () {
                                                        if ((functions.fcConverterStringMinusculo(
                                                                    getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.assinatura''',
                                                                ).toString()) ==
                                                                'true') &&
                                                            (functions.fcConverterStringMinusculo(
                                                                    getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.periodo_teste''',
                                                                ).toString()) ==
                                                                'false') &&
                                                            (getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.assinatura_inicio''',
                                                                ) !=
                                                                null)) {
                                                          return 'Validade: ${dateTimeFormat(
                                                            "dd/MM/y H:mm",
                                                            functions
                                                                .fcConverterStringPData(
                                                                    getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.assinatura_inicio''',
                                                            ).toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )} - ${dateTimeFormat(
                                                            "dd/MM/y H:mm",
                                                            functions
                                                                .fcConverterStringPData(
                                                                    getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.assinatura_final''',
                                                            ).toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}';
                                                        } else if (getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.data_inicial''',
                                                            ) !=
                                                            null) {
                                                          return 'Validade: ${dateTimeFormat(
                                                            "dd/MM/y",
                                                            functions
                                                                .fcConverterStringPData(
                                                                    getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.data_inicial''',
                                                            ).toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )} - ${dateTimeFormat(
                                                            "dd/MM/y",
                                                            functions
                                                                .fcConverterStringPData(
                                                                    getJsonField(
                                                              varResultApiviewTblEstabelecimentosAdminItem,
                                                              r'''$.data_final''',
                                                            ).toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}';
                                                        } else {
                                                          return '';
                                                        }
                                                      }(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
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
                                                          await showDialog(
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
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    WebViewAware(
                                                                  child:
                                                                      CpListaEventosStripeWidget(
                                                                    paramAbrirCustomDialog:
                                                                        true,
                                                                    paramIDEstabelecimento:
                                                                        getJsonField(
                                                                      varResultApiviewTblEstabelecimentosAdminItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                    paramContaProducao:
                                                                        _model
                                                                            .switchContaProducaoValue!,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        2.0,
                                                                        2.0,
                                                                        2.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Flexible(
                                                                  child: Text(
                                                                    'Quant. Pagamentos: ${getJsonField(
                                                                      varResultApiviewTblEstabelecimentosAdminItem,
                                                                      r'''$.quant_pagamentos''',
                                                                    ).toString()}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.readexPro(
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .search_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 18.0,
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 4.0)),
                                                ),
                                              ),
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
                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                      context,
                                                      paramUserIDEstabelecimento:
                                                          getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.user_id''',
                                                      ).toString(),
                                                    );
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                CpProfissionaisWidget(
                                                              paramAdmin: true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                            context);
                                                  },
                                                  child: Container(
                                                    width: 100.0,
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
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.quant_profissionais''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.search_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                      context,
                                                      paramUserIDEstabelecimento:
                                                          getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.user_id''',
                                                      ).toString(),
                                                    );
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                CpServicosWidget(
                                                              paramAdmin: true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                            context);
                                                  },
                                                  child: Container(
                                                    width: 100.0,
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
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.quant_servicos''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.search_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                      context,
                                                      paramUserIDEstabelecimento:
                                                          getJsonField(
                                                        varResultApiviewTblEstabelecimentosAdminItem,
                                                        r'''$.user_id''',
                                                      ).toString(),
                                                    );
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                CpAgendamentosViewAdminWidget(
                                                              paramAdmin: true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    await action_blocks
                                                        .acAtualizarEstabelecimentoLogado(
                                                            context);
                                                  },
                                                  child: Container(
                                                    width: 100.0,
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
                                                          EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.quant_agendamentos''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .readexPro(
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.search_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 125.0,
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  dateTimeFormat(
                                                    "dd/MM/y H:mm",
                                                    functions
                                                        .fcConverterStringPData(
                                                            getJsonField(
                                                      varResultApiviewTblEstabelecimentosAdminItem,
                                                      r'''$.data_cadastro''',
                                                    ).toString()),
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
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
                                                                .secondaryText,
                                                        fontSize: 12.0,
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
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if ('${getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.situacao''',
                                                        ).toString()}' ==
                                                        'false')
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
                                                          var confirmDialogResponse =
                                                              await showDialog<
                                                                      bool>(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            AlertDialog(
                                                                          title:
                                                                              Text('Atenção!'),
                                                                          content:
                                                                              Text('Deseja Desbloquear/Ativar o estabelecimento ${getJsonField(
                                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                                            r'''$.nome''',
                                                                          ).toString()}?'),
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
                                                                        ),
                                                                      );
                                                                    },
                                                                  ) ??
                                                                  false;
                                                          if (confirmDialogResponse) {
                                                            await TblEstabelecimentoTable()
                                                                .update(
                                                              data: {
                                                                'situacao':
                                                                    true,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.id''',
                                                                ),
                                                              ),
                                                            );
                                                            await _model
                                                                .acAtualizarDadosAPI(
                                                              context,
                                                              paramNavPrimeiraPag:
                                                                  false,
                                                              paramExibirAguarde:
                                                                  true,
                                                            );

                                                            safeSetState(() {});
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Estabelecimento Desbloqueado/Ativado',
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
                                                        child: Icon(
                                                          Icons.lock_open,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    if ('${getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.situacao''',
                                                        ).toString()}' ==
                                                        'true')
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
                                                          var confirmDialogResponse =
                                                              await showDialog<
                                                                      bool>(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            AlertDialog(
                                                                          title:
                                                                              Text('Atenção!'),
                                                                          content:
                                                                              Text('Deseja Bloquear/Inativar o estabelecimento ${getJsonField(
                                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                                            r'''$.nome''',
                                                                          ).toString()}?'),
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
                                                                        ),
                                                                      );
                                                                    },
                                                                  ) ??
                                                                  false;
                                                          if (confirmDialogResponse) {
                                                            await TblEstabelecimentoTable()
                                                                .update(
                                                              data: {
                                                                'situacao':
                                                                    false,
                                                              },
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                getJsonField(
                                                                  varResultApiviewTblEstabelecimentosAdminItem,
                                                                  r'''$.id''',
                                                                ),
                                                              ),
                                                            );
                                                            await _model
                                                                .acAtualizarDadosAPI(
                                                              context,
                                                              paramNavPrimeiraPag:
                                                                  false,
                                                              paramExibirAguarde:
                                                                  true,
                                                            );

                                                            safeSetState(() {});
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Estabelecimento Bloqueado/Inativado',
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
                                                        child: Icon(
                                                          Icons.lock_outline,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 24.0,
                                                        ),
                                                      ),
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
                                                        await launchURL(
                                                            'https://agendasuper.com/${getJsonField(
                                                          varResultApiviewTblEstabelecimentosAdminItem,
                                                          r'''$.username''',
                                                        ).toString()}');
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .visibility_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
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
                                                        await action_blocks
                                                            .acAtualizarEstabelecimentoLogado(
                                                          context,
                                                          paramUserIDEstabelecimento:
                                                              getJsonField(
                                                            varResultApiviewTblEstabelecimentosAdminItem,
                                                            r'''$.user_id''',
                                                          ).toString(),
                                                        );
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    CpEstabelecViewAdminWidget(
                                                                  paramAdmin:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        await action_blocks
                                                            .acAtualizarEstabelecimentoLogado(
                                                                context);
                                                        await _model
                                                            .acAtualizarDadosAPI(
                                                          context,
                                                          paramNavPrimeiraPag:
                                                              false,
                                                          paramExibirAguarde:
                                                              true,
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.edit_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          if (!_model.varTerminouCarregamento)
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(100.0),
                                child: Text(
                                  'Carregando....',
                                  textAlign: TextAlign.start,
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
                                        fontSize: 20.0,
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
                          if ((_model.varQuantResultadosFiltro == 0) &&
                              _model.varTerminouCarregamento)
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(100.0),
                                child: Text(
                                  'Nenhum registro encontrado...',
                                  textAlign: TextAlign.start,
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
                                        color: Color(0xFF919AA7),
                                        fontSize: 20.0,
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
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            valueOrDefault<String>(
                              'Mostrando de ${valueOrDefault<String>(
                                _model.varQuantResultadosFiltro == 0
                                    ? '0'
                                    : (_model.varRangeInicial + 1).toString(),
                                '...',
                              )} até ${(_model.varRangeFinal + 1) <= _model.varQuantResultadosFiltro ? (_model.varRangeFinal + 1).toString() : _model.varQuantResultadosFiltro.toString()} de ${_model.varQuantResultadosFiltro.toString()}${_model.varQuantResultadosGeral != _model.varQuantResultadosFiltro ? ' (Filtrados de ${_model.varQuantResultadosGeral.toString()} registros)' : ' registros'}',
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
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        if (valueOrDefault<bool>(
                          _model.varTerminouCarregamento &&
                              (_model.varQuantResultadosFiltro > 0),
                          false,
                        ))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Página ${_model.varNumPaginaAtual.toString()} de ${_model.varTotalPaginas.toString()}',
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
                              AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'Primeira Página',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.down,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 30.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.skip_previous,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 16.0,
                                  ),
                                  onPressed: () async {
                                    await _model.acAtualizarDadosAPI(
                                      context,
                                      paramNavPrimeiraPag: true,
                                      paramExibirAguarde: true,
                                    );
                                  },
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  if (_model.varNumPaginaAtual > 1) {
                                    _model.varNumPaginaAtual =
                                        _model.varNumPaginaAtual + -1;
                                    safeSetState(() {});
                                  } else {
                                    return;
                                  }

                                  _model.varRangeInicial =
                                      _model.varNumPaginaAtual == 1
                                          ? 0
                                          : (_model.varRangeInicial -
                                              (_model.dropDownLimiteValue!));
                                  _model.varRangeFinal =
                                      _model.varNumPaginaAtual == 1
                                          ? ((_model.dropDownLimiteValue!) - 1)
                                          : (_model.varRangeFinal -
                                              (_model.dropDownLimiteValue!));
                                  safeSetState(() {});
                                  await _model.acAtualizarDadosAPI(
                                    context,
                                    paramNavPrimeiraPag: false,
                                    paramExibirAguarde: true,
                                  );
                                },
                                text: 'Anterior',
                                icon: Icon(
                                  Icons.navigate_before,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 30.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
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
                              FFButtonWidget(
                                onPressed: () async {
                                  if (_model.varNumPaginaAtual <
                                      _model.varTotalPaginas) {
                                    _model.varNumPaginaAtual =
                                        _model.varNumPaginaAtual + 1;
                                    safeSetState(() {});
                                  } else {
                                    return;
                                  }

                                  _model.varRangeInicial = () {
                                    if (_model.varNumPaginaAtual == 2) {
                                      return ((_model.varRangeInicial +
                                          (_model.dropDownLimiteValue!)));
                                    } else if (_model.varNumPaginaAtual <=
                                        _model.varTotalPaginas) {
                                      return ((_model.varRangeInicial +
                                          (_model.dropDownLimiteValue!)));
                                    } else {
                                      return 0;
                                    }
                                  }();
                                  _model.varRangeFinal = _model.varRangeFinal +
                                      _model.dropDownLimiteValue!;
                                  safeSetState(() {});
                                  await _model.acAtualizarDadosAPI(
                                    context,
                                    paramNavPrimeiraPag: false,
                                    paramExibirAguarde: true,
                                  );
                                },
                                text: 'Próxima',
                                icon: Icon(
                                  Icons.navigate_next,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 120.0,
                                  height: 30.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
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
                              AlignedTooltip(
                                content: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    'Última Página',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                offset: 4.0,
                                preferredDirection: AxisDirection.down,
                                borderRadius: BorderRadius.circular(8.0),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                tailBaseWidth: 24.0,
                                tailLength: 12.0,
                                waitDuration: Duration(milliseconds: 100),
                                showDuration: Duration(milliseconds: 1500),
                                triggerMode: TooltipTriggerMode.tap,
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 30.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
                                  icon: Icon(
                                    Icons.skip_next,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 16.0,
                                  ),
                                  onPressed: () async {
                                    _model.varRangeInicial =
                                        (_model.varTotalPaginas - 1) *
                                            (_model.dropDownLimiteValue!);
                                    _model.varRangeFinal =
                                        _model.varQuantResultadosFiltro - 1;
                                    _model.varNumPaginaAtual =
                                        _model.varTotalPaginas;
                                    safeSetState(() {});
                                    await _model.acAtualizarDadosAPI(
                                      context,
                                      paramNavPrimeiraPag: false,
                                      paramExibirAguarde: true,
                                    );
                                  },
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                      ],
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
