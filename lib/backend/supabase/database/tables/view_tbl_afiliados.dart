import '../database.dart';

class ViewTblAfiliadosTable extends SupabaseTable<ViewTblAfiliadosRow> {
  @override
  String get tableName => 'view_tbl_afiliados';

  @override
  ViewTblAfiliadosRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadosRow(data);
}

class ViewTblAfiliadosRow extends SupabaseDataRow {
  ViewTblAfiliadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  bool? get bloqueado => getField<bool>('bloqueado');
  set bloqueado(bool? value) => setField<bool>('bloqueado', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  int? get idAfiliadoIndicador => getField<int>('id_afiliado_indicador');
  set idAfiliadoIndicador(int? value) =>
      setField<int>('id_afiliado_indicador', value);

  String? get statusAfiliacao => getField<String>('status_afiliacao');
  set statusAfiliacao(String? value) =>
      setField<String>('status_afiliacao', value);

  int? get quantEstab => getField<int>('quant_estab');
  set quantEstab(int? value) => setField<int>('quant_estab', value);

  DateTime? get dataInicial => getField<DateTime>('data_inicial');
  set dataInicial(DateTime? value) => setField<DateTime>('data_inicial', value);

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);
}
