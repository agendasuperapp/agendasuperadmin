import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_lista_modelos_banners_widget.dart' show CpListaModelosBannersWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpListaModelosBannersModel
    extends FlutterFlowModel<CpListaModelosBannersWidget> {
  ///  Local state fields for this component.

  bool varSituacaoCadastro = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController;
  Completer<List<TblAppModelosBannerRow>>? requestCompleter;
  // State field(s) for StaggeredView widget.
  ScrollController? staggeredViewController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    staggeredViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    staggeredViewController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
