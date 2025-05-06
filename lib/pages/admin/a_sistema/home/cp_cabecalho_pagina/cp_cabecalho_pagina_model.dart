import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cp_cabecalho_pagina_widget.dart' show CpCabecalhoPaginaWidget;
import 'package:flutter/material.dart';

class CpCabecalhoPaginaModel extends FlutterFlowModel<CpCabecalhoPaginaWidget> {
  ///  Local state fields for this component.

  int varContadorDesenvolvimento = 0;

  int varUltimoIDNotificacao = 0;

  ///  State fields for stateful widgets in this component.

  Stream<List<TblNotificacoesQuantRow>>? containerNotificacaoSupabaseStream;
  // Stores action output result for [Action Block - acSairSistema] action in RowSair widget.
  bool? acSairSistemaResultCab3;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ViewTblAppPlanosEstabelecimentosRow>? queryPlanosEstab;
  // Stores action output result for [Backend Call - Query Rows] action in RichText widget.
  List<ViewTblAppPlanosEstabelecimentosRow>? queryPlanosEstab2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
