import '../database.dart';

class TblEstabelecimentoPlanoTable
    extends SupabaseTable<TblEstabelecimentoPlanoRow> {
  @override
  String get tableName => 'tbl_estabelecimento_plano';

  @override
  TblEstabelecimentoPlanoRow createRow(Map<String, dynamic> data) =>
      TblEstabelecimentoPlanoRow(data);
}

class TblEstabelecimentoPlanoRow extends SupabaseDataRow {
  TblEstabelecimentoPlanoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblEstabelecimentoPlanoTable();

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
}
