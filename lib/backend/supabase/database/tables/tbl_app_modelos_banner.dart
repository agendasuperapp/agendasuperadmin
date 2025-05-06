import '../database.dart';

class TblAppModelosBannerTable extends SupabaseTable<TblAppModelosBannerRow> {
  @override
  String get tableName => 'tbl_app_modelos_banner';

  @override
  TblAppModelosBannerRow createRow(Map<String, dynamic> data) =>
      TblAppModelosBannerRow(data);
}

class TblAppModelosBannerRow extends SupabaseDataRow {
  TblAppModelosBannerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblAppModelosBannerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool get escuro => getField<bool>('escuro')!;
  set escuro(bool value) => setField<bool>('escuro', value);
}
