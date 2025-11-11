import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_admin/cp_admin/cp_cad_temas_blackgroundx/cp_cad_temas_blackgroundx_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_cad_temas_blackground_model.dart';
export 'pg_cad_temas_blackground_model.dart';

class PgCadTemasBlackgroundWidget extends StatefulWidget {
  const PgCadTemasBlackgroundWidget({
    super.key,
    bool? paramCadastro,
    this.paramRowTblTemasBlackground,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final TblAppTemasBlackgroundRow? paramRowTblTemasBlackground;

  static String routeName = 'pg_cad_temas_blackground';
  static String routePath = '/admin/CadTemasBlackground';

  @override
  State<PgCadTemasBlackgroundWidget> createState() =>
      _PgCadTemasBlackgroundWidgetState();
}

class _PgCadTemasBlackgroundWidgetState
    extends State<PgCadTemasBlackgroundWidget> {
  late PgCadTemasBlackgroundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadTemasBlackgroundModel());

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
            children: [
              if (FFAppState().varTblUsuarios.adminSistema == true)
                wrapWithModel(
                  model: _model.cpCadTemasBlackgroundxModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpCadTemasBlackgroundxWidget(
                    paramCadastro: widget.paramCadastro,
                    paramRowTblTemasBlackground:
                        widget.paramRowTblTemasBlackground,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
