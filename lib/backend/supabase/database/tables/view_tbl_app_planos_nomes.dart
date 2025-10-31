import '../database.dart';

class ViewTblAppPlanosNomesTable
    extends SupabaseTable<ViewTblAppPlanosNomesRow> {
  @override
  String get tableName => 'view_tbl_app_planos_nomes';

  @override
  ViewTblAppPlanosNomesRow createRow(Map<String, dynamic> data) =>
      ViewTblAppPlanosNomesRow(data);
}

class ViewTblAppPlanosNomesRow extends SupabaseDataRow {
  ViewTblAppPlanosNomesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppPlanosNomesTable();

  String? get nomeUpper => getField<String>('nome_upper');
  set nomeUpper(String? value) => setField<String>('nome_upper', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get qtProfissionaisMin => getField<int>('qt_profissionais_min');
  set qtProfissionaisMin(int? value) =>
      setField<int>('qt_profissionais_min', value);

  int? get qtProfissionaisMax => getField<int>('qt_profissionais_max');
  set qtProfissionaisMax(int? value) =>
      setField<int>('qt_profissionais_max', value);

  int? get qtAgendamentosMax => getField<int>('qt_agendamentos_max');
  set qtAgendamentosMax(int? value) =>
      setField<int>('qt_agendamentos_max', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get versao => getField<String>('versao');
  set versao(String? value) => setField<String>('versao', value);

  bool? get excluido => getField<bool>('excluido');
  set excluido(bool? value) => setField<bool>('excluido', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  String? get nomeApp => getField<String>('nome_app');
  set nomeApp(String? value) => setField<String>('nome_app', value);

  String? get nomeAppPlano => getField<String>('nome_app_plano');
  set nomeAppPlano(String? value) => setField<String>('nome_app_plano', value);
}
