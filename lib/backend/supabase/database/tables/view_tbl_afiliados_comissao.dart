import '../database.dart';

class ViewTblAfiliadosComissaoTable
    extends SupabaseTable<ViewTblAfiliadosComissaoRow> {
  @override
  String get tableName => 'view_tbl_afiliados_comissao';

  @override
  ViewTblAfiliadosComissaoRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosComissaoRow(data);
}

class ViewTblAfiliadosComissaoRow extends SupabaseDataRow {
  ViewTblAfiliadosComissaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosComissaoTable();

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get userIdAfiliadoIndicador =>
      getField<String>('user_id_afiliado_indicador');
  set userIdAfiliadoIndicador(String? value) =>
      setField<String>('user_id_afiliado_indicador', value);

  int? get idComissao => getField<int>('id_comissao');
  set idComissao(int? value) => setField<int>('id_comissao', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get nomeSegmento => getField<String>('nome_segmento');
  set nomeSegmento(String? value) => setField<String>('nome_segmento', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  int? get idEstabPlano => getField<int>('id_estab_plano');
  set idEstabPlano(int? value) => setField<int>('id_estab_plano', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  double? get valorPagoCliente => getField<double>('valor_pago_cliente');
  set valorPagoCliente(double? value) =>
      setField<double>('valor_pago_cliente', value);

  double? get percComissao => getField<double>('perc_comissao');
  set percComissao(double? value) => setField<double>('perc_comissao', value);

  double? get valorComissao => getField<double>('valor_comissao');
  set valorComissao(double? value) => setField<double>('valor_comissao', value);

  String? get statusPgComissao => getField<String>('status_pg_comissao');
  set statusPgComissao(String? value) =>
      setField<String>('status_pg_comissao', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get nomePlano => getField<String>('nome_plano');
  set nomePlano(String? value) => setField<String>('nome_plano', value);

  String? get nomePlanoPeriodos => getField<String>('nome_plano_periodos');
  set nomePlanoPeriodos(String? value) =>
      setField<String>('nome_plano_periodos', value);

  bool? get renovacaoPlano => getField<bool>('renovacao_plano');
  set renovacaoPlano(bool? value) => setField<bool>('renovacao_plano', value);

  DateTime? get dataPgComisao => getField<DateTime>('data_pg_comisao');
  set dataPgComisao(DateTime? value) =>
      setField<DateTime>('data_pg_comisao', value);

  int? get idSaque => getField<int>('id_saque');
  set idSaque(int? value) => setField<int>('id_saque', value);

  String? get statusSolicitacao => getField<String>('status_solicitacao');
  set statusSolicitacao(String? value) =>
      setField<String>('status_solicitacao', value);

  int? get diasParaLiberar => getField<int>('dias_para_liberar');
  set diasParaLiberar(int? value) => setField<int>('dias_para_liberar', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);
}
