import '../database.dart';

class ViewTblPagamentosStripeAppTable
    extends SupabaseTable<ViewTblPagamentosStripeAppRow> {
  @override
  String get tableName => 'view_tbl_pagamentos_stripe_app';

  @override
  ViewTblPagamentosStripeAppRow createRow(Map<String, dynamic> data) =>
      ViewTblPagamentosStripeAppRow(data);
}

class ViewTblPagamentosStripeAppRow extends SupabaseDataRow {
  ViewTblPagamentosStripeAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPagamentosStripeAppTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get idPlanoPeriodo => getField<int>('id_plano_periodo');
  set idPlanoPeriodo(int? value) => setField<int>('id_plano_periodo', value);

  int? get idPlanoNome => getField<int>('id_plano_nome');
  set idPlanoNome(int? value) => setField<int>('id_plano_nome', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  String? get nomePlanoPeriodos => getField<String>('nome_plano_periodos');
  set nomePlanoPeriodos(String? value) =>
      setField<String>('nome_plano_periodos', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  int? get valorStripe => getField<int>('valor_stripe');
  set valorStripe(int? value) => setField<int>('valor_stripe', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get nomeBanco => getField<String>('nome_banco');
  set nomeBanco(String? value) => setField<String>('nome_banco', value);

  String? get nomeConta => getField<String>('nome_conta');
  set nomeConta(String? value) => setField<String>('nome_conta', value);

  String? get keyAuthorization => getField<String>('key_authorization');
  set keyAuthorization(String? value) =>
      setField<String>('key_authorization', value);

  String? get nomeProdutoAssinatura =>
      getField<String>('nome_produto_assinatura');
  set nomeProdutoAssinatura(String? value) =>
      setField<String>('nome_produto_assinatura', value);

  String? get idProdutoAssinatura => getField<String>('id_produto_assinatura');
  set idProdutoAssinatura(String? value) =>
      setField<String>('id_produto_assinatura', value);

  String? get idPrecoAssinatura => getField<String>('id_preco_assinatura');
  set idPrecoAssinatura(String? value) =>
      setField<String>('id_preco_assinatura', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  int? get trialPeriodDays => getField<int>('trial_period_days');
  set trialPeriodDays(int? value) => setField<int>('trial_period_days', value);

  String? get successUrl => getField<String>('success_url');
  set successUrl(String? value) => setField<String>('success_url', value);

  String? get cancelUrl => getField<String>('cancel_url');
  set cancelUrl(String? value) => setField<String>('cancel_url', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
