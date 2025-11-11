import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/a_home/cp_home/cp_login/cp_login_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'pg_login_model.dart';
export 'pg_login_model.dart';

class PgLoginWidget extends StatefulWidget {
  const PgLoginWidget({
    super.key,
    this.email,
  });

  final String? email;

  static String routeName = 'pg_login';
  static String routePath = '/login';

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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.setFullscreenMode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: wrapWithModel(
          model: _model.cpLoginModel,
          updateCallback: () => safeSetState(() {}),
          child: CpLoginWidget(),
        ),
      ),
    );
  }
}
