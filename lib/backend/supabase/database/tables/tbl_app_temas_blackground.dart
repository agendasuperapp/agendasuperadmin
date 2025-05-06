import '../database.dart';

class TblAppTemasBlackgroundTable
    extends SupabaseTable<TblAppTemasBlackgroundRow> {
  @override
  String get tableName => 'tbl_app_temas_blackground';

  @override
  TblAppTemasBlackgroundRow createRow(Map<String, dynamic> data) =>
      TblAppTemasBlackgroundRow(data);
}

class TblAppTemasBlackgroundRow extends SupabaseDataRow {
  TblAppTemasBlackgroundRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppTemasBlackgroundTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get fotoDarkMod => getField<String>('foto_dark_mod');
  set fotoDarkMod(String? value) => setField<String>('foto_dark_mod', value);

  String? get fotoLightMode => getField<String>('foto_light_mode');
  set fotoLightMode(String? value) =>
      setField<String>('foto_light_mode', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  List<int> get idSegmentos => getListField<int>('id_segmentos');
  set idSegmentos(List<int>? value) => setListField<int>('id_segmentos', value);
}
