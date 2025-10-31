import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/estabelecimento/comp_estabelecimento/cp_cad_servicos/cp_cad_servicos_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_cad_servicos_model.dart';
export 'pg_cad_servicos_model.dart';

class PgCadServicosWidget extends StatefulWidget {
  const PgCadServicosWidget({
    super.key,
    bool? paramCadastro,
    this.paramIDServico,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final int? paramIDServico;

  static String routeName = 'pg_cad_servicos';
  static String routePath = '/admin/CadServicos';

  @override
  State<PgCadServicosWidget> createState() => _PgCadServicosWidgetState();
}

class _PgCadServicosWidgetState extends State<PgCadServicosWidget> {
  late PgCadServicosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadServicosModel());

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.cpCadServicosModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpCadServicosWidget(
                    paramCadastro: widget.paramCadastro,
                    paramID: widget.paramIDServico,
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
