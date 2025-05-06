import '../database.dart';

class ViewTblServicosTable extends SupabaseTable<ViewTblServicosRow> {
  @override
  String get tableName => 'view_tbl_servicos';

  @override
  ViewTblServicosRow createRow(Map<String, dynamic> data) =>
      ViewTblServicosRow(data);
}

class ViewTblServicosRow extends SupabaseDataRow {
  ViewTblServicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblServicosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nomeUpper => getField<String>('nome_upper');
  set nomeUpper(String? value) => setField<String>('nome_upper', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  int? get tempoMinutos => getField<int>('tempo_minutos');
  set tempoMinutos(int? value) => setField<int>('tempo_minutos', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  bool? get valorSobConsulta => getField<bool>('valor_sob_consulta');
  set valorSobConsulta(bool? value) =>
      setField<bool>('valor_sob_consulta', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
