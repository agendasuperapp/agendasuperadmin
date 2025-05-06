import '../database.dart';

class ViewTblAfiliadoPgSaquesTable
    extends SupabaseTable<ViewTblAfiliadoPgSaquesRow> {
  @override
  String get tableName => 'view_tbl_afiliado_pg_saques';

  @override
  ViewTblAfiliadoPgSaquesRow createRow(Map<String, dynamic> data) =>
      ViewTblAfiliadoPgSaquesRow(data);
}

class ViewTblAfiliadoPgSaquesRow extends SupabaseDataRow {
  ViewTblAfiliadoPgSaquesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTblAfiliadoPgSaquesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipoDoc => getField<String>('tipo_doc');
  set tipoDoc(String? value) => setField<String>('tipo_doc', value);

  String? get docCpfCnpj => getField<String>('doc_cpf_cnpj');
  set docCpfCnpj(String? value) => setField<String>('doc_cpf_cnpj', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  int? get idEstabelecimento => getField<int>('id_estabelecimento');
  set idEstabelecimento(int? value) =>
      setField<int>('id_estabelecimento', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get comprovante => getField<String>('comprovante');
  set comprovante(String? value) => setField<String>('comprovante', value);

  bool? get nfEmitida => getField<bool>('nf_emitida');
  set nfEmitida(bool? value) => setField<bool>('nf_emitida', value);

  String? get numeroNf => getField<String>('numero_nf');
  set numeroNf(String? value) => setField<String>('numero_nf', value);

  int? get idNf => getField<int>('id_nf');
  set idNf(int? value) => setField<int>('id_nf', value);

  String? get idTemp => getField<String>('id_temp');
  set idTemp(String? value) => setField<String>('id_temp', value);
}
