import '../database.dart';

class TblPlanosNomesTable extends SupabaseTable<TblPlanosNomesRow> {
  @override
  String get tableName => 'tbl_planos_nomes';

  @override
  TblPlanosNomesRow createRow(Map<String, dynamic> data) =>
      TblPlanosNomesRow(data);
}

class TblPlanosNomesRow extends SupabaseDataRow {
  TblPlanosNomesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPlanosNomesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
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

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  int get idAfiliadoApp => getField<int>('id_afiliado_app')!;
  set idAfiliadoApp(int value) => setField<int>('id_afiliado_app', value);
}
