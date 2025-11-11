import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/b_estabelecimento/comp_estabelecimento/cp_cad_profissionais/cp_cad_profissionais_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_cad_profissionais_model.dart';
export 'pg_cad_profissionais_model.dart';

class PgCadProfissionaisWidget extends StatefulWidget {
  const PgCadProfissionaisWidget({
    super.key,
    bool? paramCadastro,
    this.paramIDProfissional,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final int? paramIDProfissional;

  static String routeName = 'pg_cad_profissionais';
  static String routePath = '/admin/CadProfissionais';

  @override
  State<PgCadProfissionaisWidget> createState() =>
      _PgCadProfissionaisWidgetState();
}

class _PgCadProfissionaisWidgetState extends State<PgCadProfissionaisWidget> {
  late PgCadProfissionaisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadProfissionaisModel());

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
              Flexible(
                child: wrapWithModel(
                  model: _model.cpCadProfissionaisModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpCadProfissionaisWidget(
                    paramCadastro: widget.paramCadastro,
                    paramIDProfissional: widget.paramIDProfissional,
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
