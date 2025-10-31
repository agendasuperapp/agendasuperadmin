import '../database.dart';

class TblEstabelecimentoPlanoDeleteTable
    extends SupabaseTable<TblEstabelecimentoPlanoDeleteRow> {
  @override
  String get tableName => 'tbl_estabelecimento_plano_delete';

  @override
  TblEstabelecimentoPlanoDeleteRow createRow(Map<String, dynamic> data) =>
      TblEstabelecimentoPlanoDeleteRow(data);
}

class TblEstabelecimentoPlanoDeleteRow extends SupabaseDataRow {
  TblEstabelecimentoPlanoDeleteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblEstabelecimentoPlanoDeleteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idPlanoPreco => getField<int>('id_plano_preco')!;
  set idPlanoPreco(int value) => setField<int>('id_plano_preco', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get idPlanoAnterior => getField<int>('id_plano_anterior');
  set idPlanoAnterior(int? value) => setField<int>('id_plano_anterior', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get cupomIdAfiliado => getField<int>('cupom_id_afiliado');
  set cupomIdAfiliado(int? value) => setField<int>('cupom_id_afiliado', value);

  int? get cupomIdAfiliadoCupom => getField<int>('cupom_id_afiliado_cupom');
  set cupomIdAfiliadoCupom(int? value) =>
      setField<int>('cupom_id_afiliado_cupom', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  String? get cupomTipo => getField<String>('cupom_tipo');
  set cupomTipo(String? value) => setField<String>('cupom_tipo', value);

  int? get cupomTempo => getField<int>('cupom_tempo');
  set cupomTempo(int? value) => setField<int>('cupom_tempo', value);

  double? get cupomDesconto => getField<double>('cupom_desconto');
  set cupomDesconto(double? value) => setField<double>('cupom_desconto', value);

  double? get valorSemDesconto => getField<double>('valor_sem_desconto');
  set valorSemDesconto(double? value) =>
      setField<double>('valor_sem_desconto', value);

  double? get valorComDesconto => getField<double>('valor_com_desconto');
  set valorComDesconto(double? value) =>
      setField<double>('valor_com_desconto', value);

  int? get idFormaPagamento => getField<int>('id_forma_pagamento');
  set idFormaPagamento(int? value) =>
      setField<int>('id_forma_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  int? get quantProfissionaisMin => getField<int>('quant_profissionais_min');
  set quantProfissionaisMin(int? value) =>
      setField<int>('quant_profissionais_min', value);

  int? get quantProfissionaisMax => getField<int>('quant_profissionais_max');
  set quantProfissionaisMax(int? value) =>
      setField<int>('quant_profissionais_max', value);

  int? get quantAgendamentosMax => getField<int>('quant_agendamentos_max');
  set quantAgendamentosMax(int? value) =>
      setField<int>('quant_agendamentos_max', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  int? get quantProfissionaisUsados =>
      getField<int>('quant_profissionais_usados');
  set quantProfissionaisUsados(int? value) =>
      setField<int>('quant_profissionais_usados', value);

  int? get quantAgendamentosUsados =>
      getField<int>('quant_agendamentos_usados');
  set quantAgendamentosUsados(int? value) =>
      setField<int>('quant_agendamentos_usados', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  String? get periodoMesDia => getField<String>('periodo_mes_dia');
  set periodoMesDia(String? value) =>
      setField<String>('periodo_mes_dia', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  String? get cardUltimosDigitos => getField<String>('card_ultimos_digitos');
  set cardUltimosDigitos(String? value) =>
      setField<String>('card_ultimos_digitos', value);

  String? get cardBandeira => getField<String>('card_bandeira');
  set cardBandeira(String? value) => setField<String>('card_bandeira', value);

  String? get cardNome => getField<String>('card_nome');
  set cardNome(String? value) => setField<String>('card_nome', value);

  String? get cardTipoDoc => getField<String>('card_tipo_doc');
  set cardTipoDoc(String? value) => setField<String>('card_tipo_doc', value);

  String? get cardNumDoc => getField<String>('card_num_doc');
  set cardNumDoc(String? value) => setField<String>('card_num_doc', value);

  int? get cardParcelas => getField<int>('card_parcelas');
  set cardParcelas(int? value) => setField<int>('card_parcelas', value);

  double? get cardTaxa => getField<double>('card_taxa');
  set cardTaxa(double? value) => setField<double>('card_taxa', value);

  String? get cardTipoCartao => getField<String>('card_tipo_cartao');
  set cardTipoCartao(String? value) =>
      setField<String>('card_tipo_cartao', value);

  String? get cardStatusPag => getField<String>('card_status_pag');
  set cardStatusPag(String? value) =>
      setField<String>('card_status_pag', value);

  String? get cardStatusDetalhe => getField<String>('card_status_detalhe');
  set cardStatusDetalhe(String? value) =>
      setField<String>('card_status_detalhe', value);

  String? get idPagamentoBanco => getField<String>('id_pagamento_banco');
  set idPagamentoBanco(String? value) =>
      setField<String>('id_pagamento_banco', value);

  String? get xIdempotencyKey => getField<String>('x-idempotency_key');
  set xIdempotencyKey(String? value) =>
      setField<String>('x-idempotency_key', value);

  String? get urlPix => getField<String>('url_pix');
  set urlPix(String? value) => setField<String>('url_pix', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  String? get nomeBancoRecebedor => getField<String>('nome_banco_recebedor');
  set nomeBancoRecebedor(String? value) =>
      setField<String>('nome_banco_recebedor', value);

  String? get pixTransactionId => getField<String>('pix_transaction_id');
  set pixTransactionId(String? value) =>
      setField<String>('pix_transaction_id', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get idAfiliadoIndicador => getField<int>('id_afiliado_indicador')!;
  set idAfiliadoIndicador(int value) =>
      setField<int>('id_afiliado_indicador', value);

  bool get renovacao => getField<bool>('renovacao')!;
  set renovacao(bool value) => setField<bool>('renovacao', value);

  String? get stripeId => getField<String>('stripe_id');
  set stripeId(String? value) => setField<String>('stripe_id', value);

  String? get stripeUrl => getField<String>('stripe_url');
  set stripeUrl(String? value) => setField<String>('stripe_url', value);

  String? get stripeStatusPg => getField<String>('stripe_status_pg');
  set stripeStatusPg(String? value) =>
      setField<String>('stripe_status_pg', value);

  bool get gerarCheckout => getField<bool>('gerar_checkout')!;
  set gerarCheckout(bool value) => setField<bool>('gerar_checkout', value);

  bool get assinatura => getField<bool>('assinatura')!;
  set assinatura(bool value) => setField<bool>('assinatura', value);

  int? get idPlanoProduto => getField<int>('id_plano_produto');
  set idPlanoProduto(int? value) => setField<int>('id_plano_produto', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  bool get excluido => getField<bool>('excluido')!;
  set excluido(bool value) => setField<bool>('excluido', value);

  String? get stripeSubscriptionId =>
      getField<String>('stripe_subscription_id');
  set stripeSubscriptionId(String? value) =>
      setField<String>('stripe_subscription_id', value);

  String? get stripeCustomerId => getField<String>('stripe_customer_id');
  set stripeCustomerId(String? value) =>
      setField<String>('stripe_customer_id', value);

  String? get statusAssinatura => getField<String>('status_assinatura');
  set statusAssinatura(String? value) =>
      setField<String>('status_assinatura', value);

  DateTime? get dtRenovacaoAssinatura =>
      getField<DateTime>('dt_renovacao_assinatura');
  set dtRenovacaoAssinatura(DateTime? value) =>
      setField<DateTime>('dt_renovacao_assinatura', value);

  String? get stripeInvoiceId => getField<String>('stripe_invoice_id');
  set stripeInvoiceId(String? value) =>
      setField<String>('stripe_invoice_id', value);

  DateTime? get assinaturaInicio => getField<DateTime>('assinatura_inicio');
  set assinaturaInicio(DateTime? value) =>
      setField<DateTime>('assinatura_inicio', value);

  DateTime? get assinaturaFinal => getField<DateTime>('assinatura_final');
  set assinaturaFinal(DateTime? value) =>
      setField<DateTime>('assinatura_final', value);

  bool get assinaturaCancSolicitado =>
      getField<bool>('assinatura_canc_solicitado')!;
  set assinaturaCancSolicitado(bool value) =>
      setField<bool>('assinatura_canc_solicitado', value);

  DateTime? get assinaturaCancSolicData =>
      getField<DateTime>('assinatura_canc_solic_data');
  set assinaturaCancSolicData(DateTime? value) =>
      setField<DateTime>('assinatura_canc_solic_data', value);

  int get trialPeriodDays => getField<int>('trial_period_days')!;
  set trialPeriodDays(int value) => setField<int>('trial_period_days', value);

  DateTime? get trialPeriodDate => getField<DateTime>('trial_period_date');
  set trialPeriodDate(DateTime? value) =>
      setField<DateTime>('trial_period_date', value);

  String? get upgradeDowngrade => getField<String>('upgrade_downgrade');
  set upgradeDowngrade(String? value) =>
      setField<String>('upgrade_downgrade', value);

  int? get idLogPaymentMethod => getField<int>('id_log_payment_method');
  set idLogPaymentMethod(int? value) =>
      setField<int>('id_log_payment_method', value);

  bool get trialPeriod => getField<bool>('trial_period')!;
  set trialPeriod(bool value) => setField<bool>('trial_period', value);

  bool get contaTeste => getField<bool>('conta_teste')!;
  set contaTeste(bool value) => setField<bool>('conta_teste', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);
}
