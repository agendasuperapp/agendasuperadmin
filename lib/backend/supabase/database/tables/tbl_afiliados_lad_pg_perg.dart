import '../database.dart';

class TblAfiliadosLadPgPergTable
    extends SupabaseTable<TblAfiliadosLadPgPergRow> {
  @override
  String get tableName => 'tbl_afiliados_lad_pg_perg';

  @override
  TblAfiliadosLadPgPergRow createRow(Map<String, dynamic> data) =>
      TblAfiliadosLadPgPergRow(data);
}

class TblAfiliadosLadPgPergRow extends SupabaseDataRow {
  TblAfiliadosLadPgPergRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAfiliadosLadPgPergTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get pergunta => getField<String>('pergunta');
  set pergunta(String? value) => setField<String>('pergunta', value);

  String? get resposta => getField<String>('resposta');
  set resposta(String? value) => setField<String>('resposta', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);
}
