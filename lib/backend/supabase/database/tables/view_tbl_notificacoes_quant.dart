import '../database.dart';

class ViewTblNotificacoesQuantTable
    extends SupabaseTable<ViewTblNotificacoesQuantRow> {
  @override
  String get tableName => 'view_tbl_notificacoes_quant';

  @override
  ViewTblNotificacoesQuantRow createRow(Map<String, dynamic> data) =>
      ViewTblNotificacoesQuantRow(data);
}

class ViewTblNotificacoesQuantRow extends SupabaseDataRow {
  ViewTblNotificacoesQuantRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblNotificacoesQuantTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  int? get idApp => getField<int>('id_app');
  set idApp(int? value) => setField<int>('id_app', value);
}
