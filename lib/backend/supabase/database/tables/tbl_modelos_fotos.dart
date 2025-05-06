import '../database.dart';

class TblModelosFotosTable extends SupabaseTable<TblModelosFotosRow> {
  @override
  String get tableName => 'tbl_modelos_fotos';

  @override
  TblModelosFotosRow createRow(Map<String, dynamic> data) =>
      TblModelosFotosRow(data);
}

class TblModelosFotosRow extends SupabaseDataRow {
  TblModelosFotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblModelosFotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get tabela => getField<String>('tabela');
  set tabela(String? value) => setField<String>('tabela', value);

  List<int> get idSegmento => getListField<int>('id_segmento');
  set idSegmento(List<int>? value) => setListField<int>('id_segmento', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
