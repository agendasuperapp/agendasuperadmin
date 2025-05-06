import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/calendario/cp_calendario_personalizado/cp_calendario_personalizado_widget.dart';
import 'cp_agendamentos_diarios_widget.dart' show CpAgendamentosDiariosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CpAgendamentosDiariosModel
    extends FlutterFlowModel<CpAgendamentosDiariosWidget> {
  ///  Local state fields for this component.

  DateTime? varDataSelecionada;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewTblAgendamentosRow>>? requestCompleter2;
  Completer<List<ViewTblAgendamentosRow>>? requestCompleter1;
  // Model for cpCalendarioPersonalizado component.
  late CpCalendarioPersonalizadoModel cpCalendarioPersonalizadoModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    cpCalendarioPersonalizadoModel =
        createModel(context, () => CpCalendarioPersonalizadoModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    cpCalendarioPersonalizadoModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
