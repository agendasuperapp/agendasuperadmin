import '../database.dart';

class ViewTblAfiliadoVendasDiariasTable
    extends SupabaseTable<ViewTblAfiliadoVendasDiariasRow> {
  @override
  String get tableName => 'view_tbl_afiliado_vendas_diarias';

  @override
  ViewTblAfiliadoVendasDiariasRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadoVendasDiariasRow(data);
}

class ViewTblAfiliadoVendasDiariasRow extends SupabaseDataRow {
  ViewTblAfiliadoVendasDiariasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadoVendasDiariasTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get dia => getField<int>('dia');
  set dia(int? value) => setField<int>('dia', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  String? get diaSemanaSigla => getField<String>('dia_semana_sigla');
  set diaSemanaSigla(String? value) =>
      setField<String>('dia_semana_sigla', value);

  double? get ultimoDiaMes => getField<double>('ultimo_dia_mes');
  set ultimoDiaMes(double? value) => setField<double>('ultimo_dia_mes', value);

  double? get comissaoDia => getField<double>('comissao_dia');
  set comissaoDia(double? value) => setField<double>('comissao_dia', value);
}
