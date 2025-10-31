import '../database.dart';

class ViewTblPlanosAssinaturaTable
    extends SupabaseTable<ViewTblPlanosAssinaturaRow> {
  @override
  String get tableName => 'view_tbl_planos_assinatura';

  @override
  ViewTblPlanosAssinaturaRow createRow(Map<String, dynamic> data) =>
      ViewTblPlanosAssinaturaRow(data);
}

class ViewTblPlanosAssinaturaRow extends SupabaseDataRow {
  ViewTblPlanosAssinaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblPlanosAssinaturaTable();

  int? get idProdutoAssinatura => getField<int>('id_produto_assinatura');
  set idProdutoAssinatura(int? value) =>
      setField<int>('id_produto_assinatura', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  String? get idProdutoBanco => getField<String>('id_produto_banco');
  set idProdutoBanco(String? value) =>
      setField<String>('id_produto_banco', value);

  String? get idPrecoBanco => getField<String>('id_preco_banco');
  set idPrecoBanco(String? value) => setField<String>('id_preco_banco', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

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

  String? get nomeBanco => getField<String>('nome_banco');
  set nomeBanco(String? value) => setField<String>('nome_banco', value);

  String? get nomeConta => getField<String>('nome_conta');
  set nomeConta(String? value) => setField<String>('nome_conta', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  double? get precoAssinatura => getField<double>('preco_assinatura');
  set precoAssinatura(double? value) =>
      setField<double>('preco_assinatura', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  double? get percDescontoAss => getField<double>('perc_desconto_ass');
  set percDescontoAss(double? value) =>
      setField<double>('perc_desconto_ass', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);
}
