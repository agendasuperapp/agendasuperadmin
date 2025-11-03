import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/admin/a_sistema/home/cp_home_assistente_cad/cp_home_assistente_cad_widget.dart';
import '/pages/admin/a_sistema/home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/admin/a_sistema/home/cp_rodape/cp_rodape_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_home_assistente_cad_model.dart';
export 'pg_home_assistente_cad_model.dart';

class PgHomeAssistenteCadWidget extends StatefulWidget {
  const PgHomeAssistenteCadWidget({super.key});

  static String routeName = 'pg_home_assistente_cad';
  static String routePath = '/admin/AssistenteCadastros';

  @override
  State<PgHomeAssistenteCadWidget> createState() =>
      _PgHomeAssistenteCadWidgetState();
}

class _PgHomeAssistenteCadWidgetState extends State<PgHomeAssistenteCadWidget> {
  late PgHomeAssistenteCadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgHomeAssistenteCadModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarInicializacaoSistema(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    children: [
                      wrapWithModel(
                        model: _model.cpCabecalhoPaginaModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CpCabecalhoPaginaWidget(),
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if ((MediaQuery.sizeOf(context).width >
                              FFAppState()
                                  .varTamanhoMinimoTelaMenuLateral
                                  .toDouble()) &&
                          responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                        wrapWithModel(
                          model: _model.cpMenuLateralModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CpMenuLateralWidget(
                            paramBotaoSelecionado: 'ASSISTENTE_CAD',
                            paramGrupoBotao: 'ASSISTENTE_CAD',
                            paramElpacamentoTop: false,
                          ),
                        ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                Theme.of(context).brightness == Brightness.dark
                                    ? 'SEM FOTO USAR COR CONTAINER'
                                    : FFAppState()
                                        .VarTblEstabelecimentoLogado
                                        .fotoLightMode,
                              ).image,
                            ),
                          ),
                          child: wrapWithModel(
                            model: _model.cpHomeAssistenteCadModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CpHomeAssistenteCadWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (MediaQuery.sizeOf(context).width <=
                  FFAppState().varTamanhoMinimoTelaMenuLateral.toDouble())
                wrapWithModel(
                  model: _model.cpRodapeModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpRodapeWidget(
                    paramBotaoSelecionado: 'ASSISTENTE_CAD',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
