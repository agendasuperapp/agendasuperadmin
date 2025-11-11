import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_politica_privacidade/cp_politica_privacidade_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_politica_privacidade_model.dart';
export 'pg_politica_privacidade_model.dart';

class PgPoliticaPrivacidadeWidget extends StatefulWidget {
  const PgPoliticaPrivacidadeWidget({super.key});

  static String routeName = 'pg_politica_privacidade';
  static String routePath = '/Politica/Privacidade';

  @override
  State<PgPoliticaPrivacidadeWidget> createState() =>
      _PgPoliticaPrivacidadeWidgetState();
}

class _PgPoliticaPrivacidadeWidgetState
    extends State<PgPoliticaPrivacidadeWidget> {
  late PgPoliticaPrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgPoliticaPrivacidadeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.acAtualizarInicializacaoSistema(
        context,
        paramNaoAtualizarTabelas: false,
      );
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
        body: wrapWithModel(
          model: _model.cpPoliticaPrivacidadeModel,
          updateCallback: () => safeSetState(() {}),
          child: CpPoliticaPrivacidadeWidget(),
        ),
      ),
    );
  }
}
