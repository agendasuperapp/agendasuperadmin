import '../database.dart';

class ViewTblHorariosPadraoTable
    extends SupabaseTable<ViewTblHorariosPadraoRow> {
  @override
  String get tableName => 'view_tbl_horarios_padrao';

  @override
  ViewTblHorariosPadraoRow createRow(Map<String, dynamic> data) =>
      ViewTblHorariosPadraoRow(data);
}

class ViewTblHorariosPadraoRow extends SupabaseDataRow {
  ViewTblHorariosPadraoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosPadraoTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  List<String> get horasDisponiveis =>
      getListField<String>('horas_disponiveis');
  set horasDisponiveis(List<String>? value) =>
      setListField<String>('horas_disponiveis', value);

  bool? get fechado => getField<bool>('fechado');
  set fechado(bool? value) => setField<bool>('fechado', value);
}
