import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_planos_nomes/cp_cad_planos_nomes_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_cad_planos_nomes_model.dart';
export 'pg_cad_planos_nomes_model.dart';

class PgCadPlanosNomesWidget extends StatefulWidget {
  const PgCadPlanosNomesWidget({
    super.key,
    bool? paramCadastro,
    this.paramTblPlanosNomes,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final TblPlanosNomesRow? paramTblPlanosNomes;

  static String routeName = 'pg_cad_planos_nomes';
  static String routePath = '/admin/CadPlanosNomes';

  @override
  State<PgCadPlanosNomesWidget> createState() => _PgCadPlanosNomesWidgetState();
}

class _PgCadPlanosNomesWidgetState extends State<PgCadPlanosNomesWidget> {
  late PgCadPlanosNomesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadPlanosNomesModel());

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
                model: _model.cpCadPlanosNomesModel,
                updateCallback: () => safeSetState(() {}),
                child: CpCadPlanosNomesWidget(
                  paramCadastro: widget.paramCadastro,
                  paramRowTblPlanoPreco: widget.paramTblPlanosNomes,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
