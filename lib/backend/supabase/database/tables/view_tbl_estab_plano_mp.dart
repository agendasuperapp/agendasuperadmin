import '../database.dart';

class ViewTblEstabPlanoMpTable extends SupabaseTable<ViewTblEstabPlanoMpRow> {
  @override
  String get tableName => 'view_tbl_estab_plano_mp';

  @override
  ViewTblEstabPlanoMpRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabPlanoMpRow(data);
}

class ViewTblEstabPlanoMpRow extends SupabaseDataRow {
  ViewTblEstabPlanoMpRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabPlanoMpTable();

  int? get idPlanoEstabelecimento => getField<int>('id_plano_estabelecimento');
  set idPlanoEstabelecimento(int? value) =>
      setField<int>('id_plano_estabelecimento', value);

  int? get idEstabPlanoMp => getField<int>('id_estab_plano_mp');
  set idEstabPlanoMp(int? value) => setField<int>('id_estab_plano_mp', value);

  String? get idPagamentoBanco => getField<String>('id_pagamento_banco');
  set idPagamentoBanco(String? value) =>
      setField<String>('id_pagamento_banco', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get statusDetail => getField<String>('status_detail');
  set statusDetail(String? value) => setField<String>('status_detail', value);
}
