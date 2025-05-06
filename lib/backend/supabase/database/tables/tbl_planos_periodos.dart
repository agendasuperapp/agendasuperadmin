import '../database.dart';

class TblPlanosPeriodosTable extends SupabaseTable<TblPlanosPeriodosRow> {
  @override
  String get tableName => 'tbl_planos_periodos';

  @override
  TblPlanosPeriodosRow createRow(Map<String, dynamic> data) =>
      TblPlanosPeriodosRow(data);
}

class TblPlanosPeriodosRow extends SupabaseDataRow {
  TblPlanosPeriodosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPlanosPeriodosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  bool? get maisComprado => getField<bool>('mais_comprado');
  set maisComprado(bool? value) => setField<bool>('mais_comprado', value);

  bool? get parcelamentoSjuros => getField<bool>('parcelamento_sjuros');
  set parcelamentoSjuros(bool? value) =>
      setField<bool>('parcelamento_sjuros', value);

  int? get maxParcSjuros => getField<int>('max_parc_sjuros');
  set maxParcSjuros(int? value) => setField<int>('max_parc_sjuros', value);

  String get periodoMesDia => getField<String>('periodo_mes_dia')!;
  set periodoMesDia(String value) => setField<String>('periodo_mes_dia', value);

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);
}
