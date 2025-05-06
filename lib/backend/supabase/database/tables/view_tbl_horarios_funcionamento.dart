import '../database.dart';

class ViewTblHorariosFuncionamentoTable
    extends SupabaseTable<ViewTblHorariosFuncionamentoRow> {
  @override
  String get tableName => 'view_tbl_horarios_funcionamento';

  @override
  ViewTblHorariosFuncionamentoRow createRow(Map<String, dynamic> data) =>
      ViewTblHorariosFuncionamentoRow(data);
}

class ViewTblHorariosFuncionamentoRow extends SupabaseDataRow {
  ViewTblHorariosFuncionamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblHorariosFuncionamentoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get dia => getField<String>('dia');
  set dia(String? value) => setField<String>('dia', value);

  String? get horario1Inicio => getField<String>('horario_1_inicio');
  set horario1Inicio(String? value) =>
      setField<String>('horario_1_inicio', value);

  String? get horario1Fim => getField<String>('horario_1_fim');
  set horario1Fim(String? value) => setField<String>('horario_1_fim', value);

  String? get horario2Inicio => getField<String>('horario_2_inicio');
  set horario2Inicio(String? value) =>
      setField<String>('horario_2_inicio', value);

  String? get horario2Fim => getField<String>('horario_2_fim');
  set horario2Fim(String? value) => setField<String>('horario_2_fim', value);

  bool? get fechado => getField<bool>('fechado');
  set fechado(bool? value) => setField<bool>('fechado', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get siglaDia => getField<String>('sigla_dia');
  set siglaDia(String? value) => setField<String>('sigla_dia', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
