import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_precos/cp_cad_planos_precos_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_cad_planos_precos_model.dart';
export 'pg_cad_planos_precos_model.dart';

class PgCadPlanosPrecosWidget extends StatefulWidget {
  const PgCadPlanosPrecosWidget({
    super.key,
    bool? paramCadastro,
    this.paramTblPlanoPreco,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final ViewTblAppPlanosRow? paramTblPlanoPreco;

  static String routeName = 'pg_cad_planos_precos';
  static String routePath = '/admin/CadPlanosPrecos';

  @override
  State<PgCadPlanosPrecosWidget> createState() =>
      _PgCadPlanosPrecosWidgetState();
}

class _PgCadPlanosPrecosWidgetState extends State<PgCadPlanosPrecosWidget> {
  late PgCadPlanosPrecosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadPlanosPrecosModel());

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
                model: _model.cpCadPlanosPrecosModel,
                updateCallback: () => safeSetState(() {}),
                child: CpCadPlanosPrecosWidget(
                  paramCadastro: widget.paramCadastro,
                  paramRowTblPlanoPreco: widget.paramTblPlanoPreco,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
