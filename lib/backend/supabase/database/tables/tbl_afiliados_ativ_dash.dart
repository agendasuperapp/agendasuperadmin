import '../database.dart';

class TblAfiliadosAtivDashTable extends SupabaseTable<TblAfiliadosAtivDashRow> {
  @override
  String get tableName => 'tbl_afiliados_ativ_dash';

  @override
  TblAfiliadosAtivDashRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosAtivDashRow(data);
}

class TblAfiliadosAtivDashRow extends SupabaseDataRow {
  TblAfiliadosAtivDashRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosAtivDashTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idEstabPlano => getField<int>('id_estab_plano');
  set idEstabPlano(int? value) => setField<int>('id_estab_plano', value);

  int? get idAfiliadoPlano => getField<int>('id_afiliado_plano');
  set idAfiliadoPlano(int? value) => setField<int>('id_afiliado_plano', value);

  int? get idAfiliadoComissao => getField<int>('id_afiliado_comissao');
  set idAfiliadoComissao(int? value) =>
      setField<int>('id_afiliado_comissao', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  double? get valorPag => getField<double>('valor_pag');
  set valorPag(double? value) => setField<double>('valor_pag', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get statusPag => getField<String>('status_pag');
  set statusPag(String? value) => setField<String>('status_pag', value);

  int? get idCupom => getField<int>('id_cupom');
  set idCupom(int? value) => setField<int>('id_cupom', value);

  String? get nomeCupom => getField<String>('nome_cupom');
  set nomeCupom(String? value) => setField<String>('nome_cupom', value);

  String? get tipo2 => getField<String>('tipo2');
  set tipo2(String? value) => setField<String>('tipo2', value);

  String get tipo3 => getField<String>('tipo3')!;
  set tipo3(String value) => setField<String>('tipo3', value);
}
