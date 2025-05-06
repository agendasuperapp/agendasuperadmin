import '../database.dart';

class ViewTblAppSegmentosTable extends SupabaseTable<ViewTblAppSegmentosRow> {
  @override
  String get tableName => 'view_tbl_app_segmentos';

  @override
  ViewTblAppSegmentosRow createRow(Map<String, dynamic> data) =>
      ViewTblAppSegmentosRow(data);
}

class ViewTblAppSegmentosRow extends SupabaseDataRow {
  ViewTblAppSegmentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppSegmentosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get nomePlural => getField<String>('nome_plural');
  set nomePlural(String? value) => setField<String>('nome_plural', value);
}
