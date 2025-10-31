import '../database.dart';

class TblConfiguracoesTable extends SupabaseTable<TblConfiguracoesRow> {
  @override
  String get tableName => 'tbl_configuracoes';

  @override
  TblConfiguracoesRow createRow(Map<String, dynamic> data) =>
      TblConfiguracoesRow(data);
}

class TblConfiguracoesRow extends SupabaseDataRow {
  TblConfiguracoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblConfiguracoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  bool get visivel => getField<bool>('visivel')!;
  set visivel(bool value) => setField<bool>('visivel', value);
}
