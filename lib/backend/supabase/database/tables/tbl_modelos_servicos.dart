import '../database.dart';

class TblModelosServicosTable extends SupabaseTable<TblModelosServicosRow> {
  @override
  String get tableName => 'tbl_modelos_servicos';

  @override
  TblModelosServicosRow createRow(Map<String, dynamic> data) =>
      TblModelosServicosRow(data);
}

class TblModelosServicosRow extends SupabaseDataRow {
  TblModelosServicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblModelosServicosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  List<int> get idSegmento => getListField<int>('id_segmento');
  set idSegmento(List<int>? value) => setListField<int>('id_segmento', value);
}
