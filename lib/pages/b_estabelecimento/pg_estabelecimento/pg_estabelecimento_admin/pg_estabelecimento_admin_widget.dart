import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_estabelecimento_cad/cp_estabelecimento_cad_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_estabelecimento_admin_model.dart';
export 'pg_estabelecimento_admin_model.dart';

class PgEstabelecimentoAdminWidget extends StatefulWidget {
  const PgEstabelecimentoAdminWidget({
    super.key,
    bool? paramAdmin,
  }) : this.paramAdmin = paramAdmin ?? false;

  final bool paramAdmin;

  static String routeName = 'pg_estabelecimento_admin';
  static String routePath = '/admin/pgpest';

  @override
  State<PgEstabelecimentoAdminWidget> createState() =>
      _PgEstabelecimentoAdminWidgetState();
}

class _PgEstabelecimentoAdminWidgetState
    extends State<PgEstabelecimentoAdminWidget> {
  late PgEstabelecimentoAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgEstabelecimentoAdminModel());

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
            model: _model.cpEstabelecimentoCadModel,
            updateCallback: () => safeSetState(() {}),
            child: CpEstabelecimentoCadWidget(
              paramAdmin: widget.paramAdmin,
            ),
          ),
        ),
      ),
    );
  }
}
