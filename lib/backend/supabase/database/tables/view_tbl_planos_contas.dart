import '../database.dart';

class ViewTblPlanosContasTable extends SupabaseTable<ViewTblPlanosContasRow> {
  @override
  String get tableName => 'view_tbl_planos_contas';

  @override
  ViewTblPlanosContasRow createRow(Map<String, dynamic> data) =>
      ViewTblPlanosContasRow(data);
}

class ViewTblPlanosContasRow extends SupabaseDataRow {
  ViewTblPlanosContasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPlanosContasTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idBanco => getField<int>('id_banco');
  set idBanco(int? value) => setField<int>('id_banco', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get keyAuthorization => getField<String>('key_authorization');
  set keyAuthorization(String? value) =>
      setField<String>('key_authorization', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get excluida => getField<bool>('excluida');
  set excluida(bool? value) => setField<bool>('excluida', value);

  String? get signingSecret => getField<String>('signing_secret');
  set signingSecret(String? value) => setField<String>('signing_secret', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);

  String? get successUrl => getField<String>('success_url');
  set successUrl(String? value) => setField<String>('success_url', value);

  String? get cancelUrl => getField<String>('cancel_url');
  set cancelUrl(String? value) => setField<String>('cancel_url', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  String? get returnUrl => getField<String>('return_url');
  set returnUrl(String? value) => setField<String>('return_url', value);

  String? get nomeBanco => getField<String>('nome_banco');
  set nomeBanco(String? value) => setField<String>('nome_banco', value);
}
