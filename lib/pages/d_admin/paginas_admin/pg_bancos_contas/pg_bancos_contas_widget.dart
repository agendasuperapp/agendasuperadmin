import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_cabecalho_pagina/cp_cabecalho_pagina_widget.dart';
import '/pages/a_home/cp_home/cp_menu_lateral/cp_menu_lateral_widget.dart';
import '/pages/a_home/cp_home/cp_rodape/cp_rodape_widget.dart';
import '/pages/d_admin/cp_admin/cp_bancos_contas/cp_bancos_contas_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_bancos_contas_model.dart';
export 'pg_bancos_contas_model.dart';

class PgBancosContasWidget extends StatefulWidget {
  const PgBancosContasWidget({super.key});

  static String routeName = 'pg_bancos_contas';
  static String routePath = '/admin/BancosContas';

  @override
  State<PgBancosContasWidget> createState() => _PgBancosContasWidgetState();
}

class _PgBancosContasWidgetState extends State<PgBancosContasWidget> {
  late PgBancosContasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgBancosContasModel());

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
        body: Column(
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
                          paramBotaoSelecionado: 'BANCOSCONTAS',
                          paramGrupoBotao: 'ADMIN',
                          paramElpacamentoTop: false,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (FFAppState().varTblUsuarios.adminSistema == true)
                            Flexible(
                              child: wrapWithModel(
                                model: _model.cpBancosContasModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CpBancosContasWidget(),
                              ),
                            ),
                        ],
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
                  paramBotaoSelecionado: 'BANCOSCONTAS',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
