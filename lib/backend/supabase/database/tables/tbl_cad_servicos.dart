import '../database.dart';

class TblCadServicosTable extends SupabaseTable<TblCadServicosRow> {
  @override
  String get tableName => 'tbl_cad_servicos';

  @override
  TblCadServicosRow createRow(Map<String, dynamic> data) =>
      TblCadServicosRow(data);
}

class TblCadServicosRow extends SupabaseDataRow {
  TblCadServicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblCadServicosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

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

  bool? get exigeEntrada => getField<bool>('exige_entrada');
  set exigeEntrada(bool? value) => setField<bool>('exige_entrada', value);

  double? get percentualEntrada => getField<double>('percentual_entrada');
  set percentualEntrada(double? value) =>
      setField<double>('percentual_entrada', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  bool get valorSobConsulta => getField<bool>('valor_sob_consulta')!;
  set valorSobConsulta(bool value) =>
      setField<bool>('valor_sob_consulta', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int? get idModelo => getField<int>('id_modelo');
  set idModelo(int? value) => setField<int>('id_modelo', value);
}
