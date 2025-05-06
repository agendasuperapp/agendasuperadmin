import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_modelos_fotos/cp_cad_modelos_fotos_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_cad_modelos_fotos_model.dart';
export 'pg_cad_modelos_fotos_model.dart';

class PgCadModelosFotosWidget extends StatefulWidget {
  const PgCadModelosFotosWidget({
    super.key,
    bool? paramCadastro,
    this.paramRowTblModelosFotos,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final TblModelosFotosRow? paramRowTblModelosFotos;

  static String routeName = 'pg_cad_modelos_fotos';
  static String routePath = '/admin/CadModelosFotos';

  @override
  State<PgCadModelosFotosWidget> createState() =>
      _PgCadModelosFotosWidgetState();
}

class _PgCadModelosFotosWidgetState extends State<PgCadModelosFotosWidget> {
  late PgCadModelosFotosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadModelosFotosModel());

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
              Flexible(
                child: wrapWithModel(
                  model: _model.cpCadModelosFotosModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpCadModelosFotosWidget(
                    paramCadastro: widget.paramCadastro,
                    paramRowTbmodelosFotos: widget.paramRowTblModelosFotos,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
