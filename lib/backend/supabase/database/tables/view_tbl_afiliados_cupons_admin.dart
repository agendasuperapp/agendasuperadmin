import '../database.dart';

class ViewTblAfiliadosCuponsAdminTable
    extends SupabaseTable<ViewTblAfiliadosCuponsAdminRow> {
  @override
  String get tableName => 'view_tbl_afiliados_cupons_admin';

  @override
  ViewTblAfiliadosCuponsAdminRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosCuponsAdminRow(data);
}

class ViewTblAfiliadosCuponsAdminRow extends SupabaseDataRow {
  ViewTblAfiliadosCuponsAdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosCuponsAdminTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get tipoCupom => getField<String>('tipo_cupom');
  set tipoCupom(String? value) => setField<String>('tipo_cupom', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  double? get percDesconto => getField<double>('perc_desconto');
  set percDesconto(double? value) => setField<double>('perc_desconto', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  DateTime? get validade => getField<DateTime>('validade');
  set validade(DateTime? value) => setField<DateTime>('validade', value);

  int? get quant => getField<int>('quant');
  set quant(int? value) => setField<int>('quant', value);

  List<int> get idPlanosPeriodosLiberados =>
      getListField<int>('id_planos_periodos_liberados');
  set idPlanosPeriodosLiberados(List<int>? value) =>
      setListField<int>('id_planos_periodos_liberados', value);

  int? get idEstabelecimentoLiberado =>
      getField<int>('id_estabelecimento_liberado');
  set idEstabelecimentoLiberado(int? value) =>
      setField<int>('id_estabelecimento_liberado', value);

  bool? get aceitoNaRenovacao => getField<bool>('aceito_na_renovacao');
  set aceitoNaRenovacao(bool? value) =>
      setField<bool>('aceito_na_renovacao', value);

  List<int> get idPlanosNomesLiberados =>
      getListField<int>('id_planos_nomes_liberados');
  set idPlanosNomesLiberados(List<int>? value) =>
      setListField<int>('id_planos_nomes_liberados', value);

  bool? get cupomPadrao => getField<bool>('cupom_padrao');
  set cupomPadrao(bool? value) => setField<bool>('cupom_padrao', value);

  int? get idCupomPadrao => getField<int>('id_cupom_padrao');
  set idCupomPadrao(int? value) => setField<int>('id_cupom_padrao', value);

  bool? get padraoNovosCad => getField<bool>('padrao_novos_cad');
  set padraoNovosCad(bool? value) => setField<bool>('padrao_novos_cad', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  int? get idAfiliadoApp => getField<int>('id_afiliado_app');
  set idAfiliadoApp(int? value) => setField<int>('id_afiliado_app', value);

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);

  int? get quantUsado => getField<int>('quant_usado');
  set quantUsado(int? value) => setField<int>('quant_usado', value);
}
