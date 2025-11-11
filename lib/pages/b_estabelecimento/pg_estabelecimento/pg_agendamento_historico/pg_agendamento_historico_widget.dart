import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_agendamento_historico/cp_agendamento_historico_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_agendamento_historico_model.dart';
export 'pg_agendamento_historico_model.dart';

class PgAgendamentoHistoricoWidget extends StatefulWidget {
  const PgAgendamentoHistoricoWidget({super.key});

  static String routeName = 'pg_agendamento_historico';
  static String routePath = '/admin/pgaghis';

  @override
  State<PgAgendamentoHistoricoWidget> createState() =>
      _PgAgendamentoHistoricoWidgetState();
}

class _PgAgendamentoHistoricoWidgetState
    extends State<PgAgendamentoHistoricoWidget> {
  late PgAgendamentoHistoricoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgAgendamentoHistoricoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarInicializacaoSistema(context);
      if (!FFAppState().VarEmDesenvolvimento) {
        await action_blocks.acBlockVerificarHome(context);
      }
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.cpAgendamentoHistoricoModel,
            updateCallback: () => safeSetState(() {}),
            child: CpAgendamentoHistoricoWidget(),
          ),
        ),
      ),
    );
  }
}
