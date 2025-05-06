import '../database.dart';

class TblAfiliadosMetasTable extends SupabaseTable<TblAfiliadosMetasRow> {
  @override
  String get tableName => 'tbl_afiliados_metas';

  @override
  TblAfiliadosMetasRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosMetasRow(data);
}

class TblAfiliadosMetasRow extends SupabaseDataRow {
  TblAfiliadosMetasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosMetasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get idAfiliado => getField<int>('id_afiliado')!;
  set idAfiliado(int value) => setField<int>('id_afiliado', value);

  int? get ano => getField<int>('ano');
  set ano(int? value) => setField<int>('ano', value);

  int? get mes => getField<int>('mes');
  set mes(int? value) => setField<int>('mes', value);

  double? get valorMeta => getField<double>('valor_meta');
  set valorMeta(double? value) => setField<double>('valor_meta', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get diasUteis => getField<int>('dias_uteis');
  set diasUteis(int? value) => setField<int>('dias_uteis', value);

  bool get sistema => getField<bool>('sistema')!;
  set sistema(bool value) => setField<bool>('sistema', value);
}
