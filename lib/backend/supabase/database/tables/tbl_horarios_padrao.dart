import '../database.dart';

class TblHorariosPadraoTable extends SupabaseTable<TblHorariosPadraoRow> {
  @override
  String get tableName => 'tbl_horarios_padrao';

  @override
  TblHorariosPadraoRow createRow(Map<String, dynamic> data) =>
      TblHorariosPadraoRow(data);
}

class TblHorariosPadraoRow extends SupabaseDataRow {
  TblHorariosPadraoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblHorariosPadraoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadasto => getField<DateTime>('data_cadasto')!;
  set dataCadasto(DateTime value) => setField<DateTime>('data_cadasto', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idProfissional => getField<int>('id_profissional')!;
  set idProfissional(int value) => setField<int>('id_profissional', value);

  String get diaSemana => getField<String>('dia_semana')!;
  set diaSemana(String value) => setField<String>('dia_semana', value);

  String get hora => getField<String>('hora')!;
  set hora(String value) => setField<String>('hora', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
