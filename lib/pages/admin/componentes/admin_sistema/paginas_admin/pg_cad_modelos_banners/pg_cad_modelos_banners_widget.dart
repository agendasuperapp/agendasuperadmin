import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/admin_sistema/cp_admin/cp_cad_modelos_banners/cp_cad_modelos_banners_widget.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'pg_cad_modelos_banners_model.dart';
export 'pg_cad_modelos_banners_model.dart';

class PgCadModelosBannersWidget extends StatefulWidget {
  const PgCadModelosBannersWidget({
    super.key,
    bool? paramCadastro,
    this.paramRowTblModelosBanners,
  }) : this.paramCadastro = paramCadastro ?? true;

  final bool paramCadastro;
  final TblAppModelosBannerRow? paramRowTblModelosBanners;

  static String routeName = 'pg_cad_modelos_banners';
  static String routePath = '/admin/CadModelosBanners';

  @override
  State<PgCadModelosBannersWidget> createState() =>
      _PgCadModelosBannersWidgetState();
}

class _PgCadModelosBannersWidgetState extends State<PgCadModelosBannersWidget> {
  late PgCadModelosBannersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCadModelosBannersModel());

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
                Flexible(
                  child: wrapWithModel(
                    model: _model.cpCadModelosBannersModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CpCadModelosBannersWidget(
                      paramCadastro: widget.paramCadastro,
                      paramRowTbmodeloBanner: widget.paramRowTblModelosBanners,
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
