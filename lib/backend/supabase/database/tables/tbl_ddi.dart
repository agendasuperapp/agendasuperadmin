import '../database.dart';

class TblDdiTable extends SupabaseTable<TblDdiRow> {
  @override
  String get tableName => 'tbl_ddi';

  @override
  TblDdiRow createRow(Map<String, dynamic> data) => TblDdiRow(data);
}

class TblDdiRow extends SupabaseDataRow {
  TblDdiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblDdiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get pais => getField<String>('pais');
  set pais(String? value) => setField<String>('pais', value);

  String? get ddi => getField<String>('ddi');
  set ddi(String? value) => setField<String>('ddi', value);

  String? get formatoE164 => getField<String>('formato_e164');
  set formatoE164(String? value) => setField<String>('formato_e164', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);

  String? get regiao => getField<String>('regiao');
  set regiao(String? value) => setField<String>('regiao', value);

  int? get minCaracteres => getField<int>('min_caracteres');
  set minCaracteres(int? value) => setField<int>('min_caracteres', value);

  int? get maxCaracteres => getField<int>('max_caracteres');
  set maxCaracteres(int? value) => setField<int>('max_caracteres', value);

  String? get codigoPais => getField<String>('codigo_pais');
  set codigoPais(String? value) => setField<String>('codigo_pais', value);

  bool get padrao => getField<bool>('padrao')!;
  set padrao(bool value) => setField<bool>('padrao', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);
}
