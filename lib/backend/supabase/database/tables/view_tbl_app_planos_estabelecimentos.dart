import '../database.dart';

class ViewTblAppPlanosEstabelecimentosTable
    extends SupabaseTable<ViewTblAppPlanosEstabelecimentosRow> {
  @override
  String get tableName => 'view_tbl_app_planos_estabelecimentos';

  @override
  ViewTblAppPlanosEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      ViewTblAppPlanosEstabelecimentosRow(data);
}

class ViewTblAppPlanosEstabelecimentosRow extends SupabaseDataRow {
  ViewTblAppPlanosEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAppPlanosEstabelecimentosTable();

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  String? get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento');
  set userIdEstabelecimento(String? value) =>
      setField<String>('user_id_estabelecimento', value);

  int? get quantAgendamentosCad => getField<int>('quant_agendamentos_cad');
  set quantAgendamentosCad(int? value) =>
      setField<int>('quant_agendamentos_cad', value);

  int? get quantProfissionaisCad => getField<int>('quant_profissionais_cad');
  set quantProfissionaisCad(int? value) =>
      setField<int>('quant_profissionais_cad', value);

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

  bool? get parcelamentoSjuros => getField<bool>('parcelamento_sjuros');
  set parcelamentoSjuros(bool? value) =>
      setField<bool>('parcelamento_sjuros', value);

  int? get maxParcSjuros => getField<int>('max_parc_sjuros');
  set maxParcSjuros(int? value) => setField<int>('max_parc_sjuros', value);

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

  String? get statusPagamentoMp => getField<String>('status_pagamento_mp');
  set statusPagamentoMp(String? value) =>
      setField<String>('status_pagamento_mp', value);

  String? get statusDetail => getField<String>('status_detail');
  set statusDetail(String? value) => setField<String>('status_detail', value);

  DateTime? get dateApproved => getField<DateTime>('date_approved');
  set dateApproved(DateTime? value) =>
      setField<DateTime>('date_approved', value);

  bool? get renovacao => getField<bool>('renovacao');
  set renovacao(bool? value) => setField<bool>('renovacao', value);
}
