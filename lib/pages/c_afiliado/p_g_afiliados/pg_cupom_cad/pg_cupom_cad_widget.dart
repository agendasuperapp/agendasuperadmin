import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_admin/cp_admin/cp_admin_cupons_padroes_cad/cp_admin_cupons_padroes_cad_widget.dart';
import 'package:flutter/material.dart';
import 'pg_cupom_cad_model.dart';
export 'pg_cupom_cad_model.dart';

class PgCupomCadWidget extends StatefulWidget {
  const PgCupomCadWidget({
    super.key,
    required this.paramCadastro,
    this.paramTblCupom,
    required this.paramIDAfiliadoApp,
  });

  final bool? paramCadastro;
  final ViewTblAfiliadosCuponsAdminRow? paramTblCupom;
  final int? paramIDAfiliadoApp;

  static String routeName = 'pg_cupom_cad';
  static String routePath = '/pgCupomCad';

  @override
  State<PgCupomCadWidget> createState() => _PgCupomCadWidgetState();
}

class _PgCupomCadWidgetState extends State<PgCupomCadWidget> {
  late PgCupomCadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgCupomCadModel());

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
              Flexible(
                child: wrapWithModel(
                  model: _model.cpAdminCuponsPadroesCadModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpAdminCuponsPadroesCadWidget(
                    paramCadastro: widget.paramCadastro!,
                    paramRowTblCupom: widget.paramTblCupom,
                    paramIDAfiliadoApp: widget.paramIDAfiliadoApp!,
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
