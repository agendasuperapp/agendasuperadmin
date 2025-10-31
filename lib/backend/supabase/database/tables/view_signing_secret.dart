import '../database.dart';

class ViewSigningSecretTable extends SupabaseTable<ViewSigningSecretRow> {
  @override
  String get tableName => 'view_signing_secret';

  @override
  ViewSigningSecretRow createRow(Map<String, dynamic> data) =>
      ViewSigningSecretRow(data);
}

class ViewSigningSecretRow extends SupabaseDataRow {
  ViewSigningSecretRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSigningSecretTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nomeConta => getField<String>('nome_conta');
  set nomeConta(String? value) => setField<String>('nome_conta', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get stripeSubscriptionId =>
      getField<String>('stripe_subscription_id');
  set stripeSubscriptionId(String? value) =>
      setField<String>('stripe_subscription_id', value);

  String? get signingSecret => getField<String>('signing_secret');
  set signingSecret(String? value) => setField<String>('signing_secret', value);

  String? get idPreco => getField<String>('id_preco');
  set idPreco(String? value) => setField<String>('id_preco', value);

  String? get idProduto => getField<String>('id_produto');
  set idProduto(String? value) => setField<String>('id_produto', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);

  String? get stripeCustomerId => getField<String>('stripe_customer_id');
  set stripeCustomerId(String? value) =>
      setField<String>('stripe_customer_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get keyAuthorization => getField<String>('key_authorization');
  set keyAuthorization(String? value) =>
      setField<String>('key_authorization', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get cancelUrl => getField<String>('cancel_url');
  set cancelUrl(String? value) => setField<String>('cancel_url', value);

  String? get successUrl => getField<String>('success_url');
  set successUrl(String? value) => setField<String>('success_url', value);

  String? get returnUrl => getField<String>('return_url');
  set returnUrl(String? value) => setField<String>('return_url', value);
}
