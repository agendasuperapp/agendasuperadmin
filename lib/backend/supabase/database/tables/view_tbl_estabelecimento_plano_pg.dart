import '../database.dart';

class ViewTblEstabelecimentoPlanoPgTable
    extends SupabaseTable<ViewTblEstabelecimentoPlanoPgRow> {
  @override
  String get tableName => 'view_tbl_estabelecimento_plano_pg';

  @override
  ViewTblEstabelecimentoPlanoPgRow createRow(Map<String, dynamic> data) =>
      ViewTblEstabelecimentoPlanoPgRow(data);
}

class ViewTblEstabelecimentoPlanoPgRow extends SupabaseDataRow {
  ViewTblEstabelecimentoPlanoPgRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblEstabelecimentoPlanoPgTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

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

  double? get valorComDesconto => getField<double>('valor_com_desconto');
  set valorComDesconto(double? value) =>
      setField<double>('valor_com_desconto', value);

  double? get valorSemDesconto => getField<double>('valor_sem_desconto');
  set valorSemDesconto(double? value) =>
      setField<double>('valor_sem_desconto', value);

  int? get valorStripe => getField<int>('valor_stripe');
  set valorStripe(int? value) => setField<int>('valor_stripe', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  int? get idFormaPagamento => getField<int>('id_forma_pagamento');
  set idFormaPagamento(int? value) =>
      setField<int>('id_forma_pagamento', value);

  String? get nomeFormaPagamento => getField<String>('nome_forma_pagamento');
  set nomeFormaPagamento(String? value) =>
      setField<String>('nome_forma_pagamento', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  String? get urlPix => getField<String>('url_pix');
  set urlPix(String? value) => setField<String>('url_pix', value);

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
}
