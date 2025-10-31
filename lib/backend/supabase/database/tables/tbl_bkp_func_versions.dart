import '../database.dart';

class TblBkpFuncVersionsTable extends SupabaseTable<TblBkpFuncVersionsRow> {
  @override
  String get tableName => 'tbl_bkp_func_versions';

  @override
  TblBkpFuncVersionsRow createRow(Map<String, dynamic> data) =>
      TblBkpFuncVersionsRow(data);
}

class TblBkpFuncVersionsRow extends SupabaseDataRow {
  TblBkpFuncVersionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblBkpFuncVersionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get ts => getField<DateTime>('ts')!;
  set ts(DateTime value) => setField<DateTime>('ts', value);

  String? get editor => getField<String>('editor');
  set editor(String? value) => setField<String>('editor', value);

  String get schemaName => getField<String>('schema_name')!;
  set schemaName(String value) => setField<String>('schema_name', value);

  String get funcName => getField<String>('func_name')!;
  set funcName(String value) => setField<String>('func_name', value);

  String get args => getField<String>('args')!;
  set args(String value) => setField<String>('args', value);

  String get funcDef => getField<String>('func_def')!;
  set funcDef(String value) => setField<String>('func_def', value);
}
