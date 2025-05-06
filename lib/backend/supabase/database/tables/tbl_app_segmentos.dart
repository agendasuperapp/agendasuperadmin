import '../database.dart';

class TblAppSegmentosTable extends SupabaseTable<TblAppSegmentosRow> {
  @override
  String get tableName => 'tbl_app_segmentos';

  @override
  TblAppSegmentosRow createRow(Map<String, dynamic> data) =>
      TblAppSegmentosRow(data);
}

class TblAppSegmentosRow extends SupabaseDataRow {
  TblAppSegmentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppSegmentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get nomePlural => getField<String>('nome_plural');
  set nomePlural(String? value) => setField<String>('nome_plural', value);
}
