import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_periodos/cp_cad_planos_periodos_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_cad_planos_periodos_model.dart';
export 'pg_cad_planos_periodos_model.dart';

class PgCadPlanosPeriodosWidget extends StatefulWidget {
  const PgCadPlanosPeriodosWidget({
    super.key,
    bool? paramCadastro,
    this.paramTblPlanosPeriodos,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final TblPlanosPeriodosRow? paramTblPlanosPeriodos;

  static String routeName = 'pg_cad_planos_periodos';
  static String routePath = '/admin/CadPlanosPeriodos';

  @override
  State<PgCadPlanosPeriodosWidget> createState() =>
      _PgCadPlanosPeriodosWidgetState();
}

class _PgCadPlanosPeriodosWidgetState extends State<PgCadPlanosPeriodosWidget> {
  late PgCadPlanosPeriodosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadPlanosPeriodosModel());

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
            children: [
              wrapWithModel(
                model: _model.cpCadPlanosPeriodosModel,
                updateCallback: () => safeSetState(() {}),
                child: CpCadPlanosPeriodosWidget(
                  paramCadastro: widget.paramCadastro,
                  paramRowTblPlanoPeriodos: widget.paramTblPlanosPeriodos,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
