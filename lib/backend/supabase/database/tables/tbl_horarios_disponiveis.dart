import '../database.dart';

class TblHorariosDisponiveisTable
    extends SupabaseTable<TblHorariosDisponiveisRow> {
  @override
  String get tableName => 'tbl_horarios_disponiveis';

  @override
  TblHorariosDisponiveisRow createRow(Map<String, dynamic> data) =>
      TblHorariosDisponiveisRow(data);
}

class TblHorariosDisponiveisRow extends SupabaseDataRow {
  TblHorariosDisponiveisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblHorariosDisponiveisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idProfissional => getField<int>('id_profissional')!;
  set idProfissional(int value) => setField<int>('id_profissional', value);

  String get diaSemana => getField<String>('dia_semana')!;
  set diaSemana(String value) => setField<String>('dia_semana', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  DateTime get diaMesData => getField<DateTime>('dia_mes_data')!;
  set diaMesData(DateTime value) => setField<DateTime>('dia_mes_data', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
