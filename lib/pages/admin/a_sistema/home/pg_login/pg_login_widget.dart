import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/a_sistema/home/cp_login/cp_login_widget.dart';
import 'package:flutter/material.dart';
import 'pg_login_model.dart';
export 'pg_login_model.dart';

class PgLoginWidget extends StatefulWidget {
  const PgLoginWidget({
    super.key,
    String? tp,
    required this.hm,
  }) : this.tp = tp ?? 'login';

  final String tp;
  final bool? hm;

  static String routeName = 'pg_login';
  static String routePath = '/admin/login';

  @override
  State<PgLoginWidget> createState() => _PgLoginWidgetState();
}

class _PgLoginWidgetState extends State<PgLoginWidget> {
  late PgLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PgLoginModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.cpLoginModel,
            updateCallback: () => safeSetState(() {}),
            child: CpLoginWidget(
              tp: widget.tp,
              hm: true,
            ),
          ),
        ),
      ),
    );
  }
}
