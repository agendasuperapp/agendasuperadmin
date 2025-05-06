import '../database.dart';

class ViewTblAfiQtIndicacoesTable
    extends SupabaseTable<ViewTblAfiQtIndicacoesRow> {
  @override
  String get tableName => 'view_tbl_afi_qt_indicacoes';

  @override
  ViewTblAfiQtIndicacoesRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiQtIndicacoesRow(data);
}

class ViewTblAfiQtIndicacoesRow extends SupabaseDataRow {
  ViewTblAfiQtIndicacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiQtIndicacoesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get quantEstab => getField<int>('quant_estab');
  set quantEstab(int? value) => setField<int>('quant_estab', value);
}
