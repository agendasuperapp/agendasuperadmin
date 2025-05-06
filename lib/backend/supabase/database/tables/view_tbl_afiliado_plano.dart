import '../database.dart';

class ViewTblAfiliadoPlanoTable extends SupabaseTable<ViewTblAfiliadoPlanoRow> {
  @override
  String get tableName => 'view_tbl_afiliado_plano';

  @override
  ViewTblAfiliadoPlanoRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadoPlanoRow(data);
}

class ViewTblAfiliadoPlanoRow extends SupabaseDataRow {
  ViewTblAfiliadoPlanoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadoPlanoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  bool? get renovacao => getField<bool>('renovacao');
  set renovacao(bool? value) => setField<bool>('renovacao', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  double? get valorSemDesconto => getField<double>('valor_sem_desconto');
  set valorSemDesconto(double? value) =>
      setField<double>('valor_sem_desconto', value);

  double? get valorComDesconto => getField<double>('valor_com_desconto');
  set valorComDesconto(double? value) =>
      setField<double>('valor_com_desconto', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  bool? get planoAtivo => getField<bool>('plano_ativo');
  set planoAtivo(bool? value) => setField<bool>('plano_ativo', value);

  String? get externalReference => getField<String>('external_reference');
  set externalReference(String? value) =>
      setField<String>('external_reference', value);

  String? get nomeFormaPagamento => getField<String>('nome_forma_pagamento');
  set nomeFormaPagamento(String? value) =>
      setField<String>('nome_forma_pagamento', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idPlanoAnterior => getField<int>('id_plano_anterior');
  set idPlanoAnterior(int? value) => setField<int>('id_plano_anterior', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);
}
