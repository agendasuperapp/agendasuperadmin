import '../database.dart';

class ViewTblConfiguracoesTable extends SupabaseTable<ViewTblConfiguracoesRow> {
  @override
  String get tableName => 'view_tbl_configuracoes';

  @override
  ViewTblConfiguracoesRow createRow(Map<String, dynamic> data) =>
      ViewTblConfiguracoesRow(data);
}

class ViewTblConfiguracoesRow extends SupabaseDataRow {
  ViewTblConfiguracoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblConfiguracoesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
