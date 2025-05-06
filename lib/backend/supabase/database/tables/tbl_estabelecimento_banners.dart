import '../database.dart';

class TblEstabelecimentoBannersTable
    extends SupabaseTable<TblEstabelecimentoBannersRow> {
  @override
  String get tableName => 'tbl_estabelecimento_banners';

  @override
  TblEstabelecimentoBannersRow createRow(Map<String, dynamic> data) =>
      TblEstabelecimentoBannersRow(data);
}

class TblEstabelecimentoBannersRow extends SupabaseDataRow {
  TblEstabelecimentoBannersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblEstabelecimentoBannersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  String get foto => getField<String>('foto')!;
  set foto(String value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get excluido => getField<bool>('excluido');
  set excluido(bool? value) => setField<bool>('excluido', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  int? get tempoSegundos => getField<int>('tempo_segundos');
  set tempoSegundos(int? value) => setField<int>('tempo_segundos', value);

  DateTime get dataFoto => getField<DateTime>('data_foto')!;
  set dataFoto(DateTime value) => setField<DateTime>('data_foto', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
