import '../database.dart';

class ViewTblProfissionaisTable extends SupabaseTable<ViewTblProfissionaisRow> {
  @override
  String get tableName => 'view_tbl_profissionais';

  @override
  ViewTblProfissionaisRow createRow(Map<String, dynamic> data) =>
      ViewTblProfissionaisRow(data);
}

class ViewTblProfissionaisRow extends SupabaseDataRow {
  ViewTblProfissionaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblProfissionaisTable();

  String? get nomeUpper => getField<String>('nome_upper');
  set nomeUpper(String? value) => setField<String>('nome_upper', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);
}
