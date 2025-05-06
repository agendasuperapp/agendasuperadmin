import '../database.dart';

class ViewTblHorariosPadrao2Table
    extends SupabaseTable<ViewTblHorariosPadrao2Row> {
  @override
  String get tableName => 'view_tbl_horarios_padrao2';

  @override
  ViewTblHorariosPadrao2Row createRow(Map<String, dynamic> data) =>
      ViewTblHorariosPadrao2Row(data);
}

class ViewTblHorariosPadrao2Row extends SupabaseDataRow {
  ViewTblHorariosPadrao2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosPadrao2Table();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idProfissional => getField<int>('id_profissional');
  set idProfissional(int? value) => setField<int>('id_profissional', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);

  bool? get fechado => getField<bool>('fechado');
  set fechado(bool? value) => setField<bool>('fechado', value);
}
