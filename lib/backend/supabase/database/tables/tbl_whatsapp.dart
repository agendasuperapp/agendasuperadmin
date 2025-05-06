import '../database.dart';

class TblWhatsappTable extends SupabaseTable<TblWhatsappRow> {
  @override
  String get tableName => 'tbl_whatsapp';

  @override
  TblWhatsappRow createRow(Map<String, dynamic> data) => TblWhatsappRow(data);
}

class TblWhatsappRow extends SupabaseDataRow {
  TblWhatsappRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblWhatsappTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataCadastro => getField<DateTime>('data_cadastro')!;
  set dataCadastro(DateTime value) =>
      setField<DateTime>('data_cadastro', value);

  int get idEstabelecimento => getField<int>('id_estabelecimento')!;
  set idEstabelecimento(int value) =>
      setField<int>('id_estabelecimento', value);

  int get idCliente => getField<int>('id_cliente')!;
  set idCliente(int value) => setField<int>('id_cliente', value);

  int get idCarrinho => getField<int>('id_carrinho')!;
  set idCarrinho(int value) => setField<int>('id_carrinho', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get situacao => getField<bool>('situacao');
  set situacao(bool? value) => setField<bool>('situacao', value);

  String get userIdCliente => getField<String>('user_id_cliente')!;
  set userIdCliente(String value) => setField<String>('user_id_cliente', value);

  String get userIdEstabelecimento =>
      getField<String>('user_id_estabelecimento')!;
  set userIdEstabelecimento(String value) =>
      setField<String>('user_id_estabelecimento', value);

  String? get retorno => getField<String>('retorno');
  set retorno(String? value) => setField<String>('retorno', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);
}
