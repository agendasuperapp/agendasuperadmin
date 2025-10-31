import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_agendamento_consultar/cp_agendamento_consultar_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_consultar_agendamento_model.dart';
export 'pg_consultar_agendamento_model.dart';

class PgConsultarAgendamentoWidget extends StatefulWidget {
  const PgConsultarAgendamentoWidget({super.key});

  static String routeName = 'pgConsultarAgendamento';
  static String routePath = '/admin/pgcag';

  @override
  State<PgConsultarAgendamentoWidget> createState() =>
      _PgConsultarAgendamentoWidgetState();
}

class _PgConsultarAgendamentoWidgetState
    extends State<PgConsultarAgendamentoWidget> {
  late PgConsultarAgendamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgConsultarAgendamentoModel());

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
            model: _model.cpAgendamentoConsultarModel,
            updateCallback: () => safeSetState(() {}),
            child: CpAgendamentoConsultarWidget(),
          ),
        ),
      ),
    );
  }
}
