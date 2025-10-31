import '../database.dart';

class TblAfiliadosCuponsLibTable
    extends SupabaseTable<TblAfiliadosCuponsLibRow> {
  @override
  String get tableName => 'tbl_afiliados_cupons_lib';

  @override
  TblAfiliadosCuponsLibRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosCuponsLibRow(data);
}

class TblAfiliadosCuponsLibRow extends SupabaseDataRow {
  TblAfiliadosCuponsLibRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosCuponsLibTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idAfiliado => getField<int>('id_afiliado')!;
  set idAfiliado(int value) => setField<int>('id_afiliado', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int get idCupomPadrao => getField<int>('id_cupom_padrao')!;
  set idCupomPadrao(int value) => setField<int>('id_cupom_padrao', value);

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get idTemp => getField<String>('id_temp');
  set idTemp(String? value) => setField<String>('id_temp', value);

  DateTime? get dataExclusao => getField<DateTime>('data_exclusao');
  set dataExclusao(DateTime? value) =>
      setField<DateTime>('data_exclusao', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);
}
