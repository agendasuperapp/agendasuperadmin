import '../database.dart';

class TblProfissionaisServLibTable
    extends SupabaseTable<TblProfissionaisServLibRow> {
  @override
  String get tableName => 'tbl_profissionais_serv_lib';

  @override
  TblProfissionaisServLibRow createRow(Map<String, dynamic> data) =>
      TblProfissionaisServLibRow(data);
}

class TblProfissionaisServLibRow extends SupabaseDataRow {
  TblProfissionaisServLibRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblProfissionaisServLibTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idProfissional => getField<int>('id_profissional')!;
  set idProfissional(int value) => setField<int>('id_profissional', value);

  int get idServico => getField<int>('id_servico')!;
  set idServico(int value) => setField<int>('id_servico', value);

  bool get situacao => getField<bool>('situacao')!;
  set situacao(bool value) => setField<bool>('situacao', value);

  int? get usuarioLiberou => getField<int>('usuario_liberou');
  set usuarioLiberou(int? value) => setField<int>('usuario_liberou', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
