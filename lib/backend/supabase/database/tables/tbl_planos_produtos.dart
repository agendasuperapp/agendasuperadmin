import '../database.dart';

class TblPlanosProdutosTable extends SupabaseTable<TblPlanosProdutosRow> {
  @override
  String get tableName => 'tbl_planos_produtos';

  @override
  TblPlanosProdutosRow createRow(Map<String, dynamic> data) =>
      TblPlanosProdutosRow(data);
}

class TblPlanosProdutosRow extends SupabaseDataRow {
  TblPlanosProdutosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblPlanosProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idPlanoBanco => getField<int>('id_plano_banco');
  set idPlanoBanco(int? value) => setField<int>('id_plano_banco', value);

  int? get idPlanoConta => getField<int>('id_plano_conta');
  set idPlanoConta(int? value) => setField<int>('id_plano_conta', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String get idProduto => getField<String>('id_produto')!;
  set idProduto(String value) => setField<String>('id_produto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  int? get idPlanoPreco => getField<int>('id_plano_preco');
  set idPlanoPreco(int? value) => setField<int>('id_plano_preco', value);

  String get idPreco => getField<String>('id_preco')!;
  set idPreco(String value) => setField<String>('id_preco', value);

  int? get idCupomPadrao => getField<int>('id_cupom_padrao');
  set idCupomPadrao(int? value) => setField<int>('id_cupom_padrao', value);
}
