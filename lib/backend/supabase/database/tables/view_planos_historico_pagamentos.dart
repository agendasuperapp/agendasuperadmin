import '../database.dart';

class ViewPlanosHistoricoPagamentosTable
    extends SupabaseTable<ViewPlanosHistoricoPagamentosRow> {
  @override
  String get tableName => 'view_planos_historico_pagamentos';

  @override
  ViewPlanosHistoricoPagamentosRow createRow(Map<String, dynamic> data) =>
      ViewPlanosHistoricoPagamentosRow(data);
}

class ViewPlanosHistoricoPagamentosRow extends SupabaseDataRow {
  ViewPlanosHistoricoPagamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPlanosHistoricoPagamentosTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get nomeEstabelecimento => getField<String>('nome_estabelecimento');
  set nomeEstabelecimento(String? value) =>
      setField<String>('nome_estabelecimento', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

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

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  int? get idPlanoEstabelecimento => getField<int>('id_plano_estabelecimento');
  set idPlanoEstabelecimento(int? value) =>
      setField<int>('id_plano_estabelecimento', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  bool? get situacaoPlano => getField<bool>('situacao_plano');
  set situacaoPlano(bool? value) => setField<bool>('situacao_plano', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  String? get cupomTipo => getField<String>('cupom_tipo');
  set cupomTipo(String? value) => setField<String>('cupom_tipo', value);

  int? get cupomTempo => getField<int>('cupom_tempo');
  set cupomTempo(int? value) => setField<int>('cupom_tempo', value);

  double? get cupomDesconto => getField<double>('cupom_desconto');
  set cupomDesconto(double? value) => setField<double>('cupom_desconto', value);

  double? get valorComDesconto => getField<double>('valor_com_desconto');
  set valorComDesconto(double? value) =>
      setField<double>('valor_com_desconto', value);

  double? get valorSemDesconto => getField<double>('valor_sem_desconto');
  set valorSemDesconto(double? value) =>
      setField<double>('valor_sem_desconto', value);

  int? get idFormaPagamento => getField<int>('id_forma_pagamento');
  set idFormaPagamento(int? value) =>
      setField<int>('id_forma_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  int? get quantProfissionaisMinSalvo =>
      getField<int>('quant_profissionais_min_salvo');
  set quantProfissionaisMinSalvo(int? value) =>
      setField<int>('quant_profissionais_min_salvo', value);

  int? get quantProfissionaisMaxSalvo =>
      getField<int>('quant_profissionais_max_salvo');
  set quantProfissionaisMaxSalvo(int? value) =>
      setField<int>('quant_profissionais_max_salvo', value);

  int? get quantAgendamentosMaxSalvo =>
      getField<int>('quant_agendamentos_max_salvo');
  set quantAgendamentosMaxSalvo(int? value) =>
      setField<int>('quant_agendamentos_max_salvo', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  double? get porcentagemDesconto => getField<double>('porcentagem_desconto');
  set porcentagemDesconto(double? value) =>
      setField<double>('porcentagem_desconto', value);

  int? get idPlanoAnterior => getField<int>('id_plano_anterior');
  set idPlanoAnterior(int? value) => setField<int>('id_plano_anterior', value);

  String? get nomeFormaPagamento => getField<String>('nome_forma_pagamento');
  set nomeFormaPagamento(String? value) =>
      setField<String>('nome_forma_pagamento', value);

  String? get qrCode => getField<String>('qr_code');
  set qrCode(String? value) => setField<String>('qr_code', value);

  String? get urlPix => getField<String>('url_pix');
  set urlPix(String? value) => setField<String>('url_pix', value);

  String? get idPagamentoBanco => getField<String>('id_pagamento_banco');
  set idPagamentoBanco(String? value) =>
      setField<String>('id_pagamento_banco', value);

  String? get chaveFormaPagamento => getField<String>('chave_forma_pagamento');
  set chaveFormaPagamento(String? value) =>
      setField<String>('chave_forma_pagamento', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  bool? get renovacao => getField<bool>('renovacao');
  set renovacao(bool? value) => setField<bool>('renovacao', value);

  String? get stripeUrl => getField<String>('stripe_url');
  set stripeUrl(String? value) => setField<String>('stripe_url', value);

  String? get stripeStatusPg => getField<String>('stripe_status_pg');
  set stripeStatusPg(String? value) =>
      setField<String>('stripe_status_pg', value);

  String? get nomeBancoRecebedor => getField<String>('nome_banco_recebedor');
  set nomeBancoRecebedor(String? value) =>
      setField<String>('nome_banco_recebedor', value);

  String? get stripeStatus => getField<String>('stripe_status');
  set stripeStatus(String? value) => setField<String>('stripe_status', value);

  bool? get assinatura => getField<bool>('assinatura');
  set assinatura(bool? value) => setField<bool>('assinatura', value);

  double? get valorSubscription => getField<double>('valor_subscription');
  set valorSubscription(double? value) =>
      setField<double>('valor_subscription', value);

  DateTime? get dataSubscription => getField<DateTime>('data_subscription');
  set dataSubscription(DateTime? value) =>
      setField<DateTime>('data_subscription', value);

  String? get evento => getField<String>('evento');
  set evento(String? value) => setField<String>('evento', value);

  String? get nomeConta => getField<String>('nome_conta');
  set nomeConta(String? value) => setField<String>('nome_conta', value);

  String? get emailConta => getField<String>('email_conta');
  set emailConta(String? value) => setField<String>('email_conta', value);

  String? get nomeBanco => getField<String>('nome_banco');
  set nomeBanco(String? value) => setField<String>('nome_banco', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  bool? get contaTeste => getField<bool>('conta_teste');
  set contaTeste(bool? value) => setField<bool>('conta_teste', value);

  String? get numeroFatura => getField<String>('numero_fatura');
  set numeroFatura(String? value) => setField<String>('numero_fatura', value);
}
