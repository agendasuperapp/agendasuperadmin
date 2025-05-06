import '../database.dart';

class ViewTblEstadosTable extends SupabaseTable<ViewTblEstadosRow> {
  @override
  String get tableName => 'view_tbl_estados';

  @override
  ViewTblEstadosRow createRow(Map<String, dynamic> data) =>
      ViewTblEstadosRow(data);
}

class ViewTblEstadosRow extends SupabaseDataRow {
  ViewTblEstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstadosTable();

  String? get sigla => getField<String>('sigla');
  set sigla(String? value) => setField<String>('sigla', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
