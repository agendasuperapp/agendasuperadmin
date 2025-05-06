import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/componentes/afiliado/c_p_afiliados/cp_afiliado_cupom_cad/cp_afiliado_cupom_cad_widget.dart';
import 'package:flutter/material.dart';
import 'pg_cupom_cad_model.dart';
export 'pg_cupom_cad_model.dart';

class PgCupomCadWidget extends StatefulWidget {
  const PgCupomCadWidget({
    super.key,
    required this.paramCadastro,
    this.paramTblCupom,
  });

  final bool? paramCadastro;
  final ViewTblAfiliadosCuponsAdminRow? paramTblCupom;

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
                  model: _model.cpAfiliadoCupomCadModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CpAfiliadoCupomCadWidget(
                    paramCadastro: widget.paramCadastro!,
                    paramRowTblCupom: widget.paramTblCupom,
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
