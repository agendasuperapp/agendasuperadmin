import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/calendario/cp_calendario_pers_dias/cp_calendario_pers_dias_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_calendario_personalizado_widget.dart'
    show CpCalendarioPersonalizadoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CpCalendarioPersonalizadoModel
    extends FlutterFlowModel<CpCalendarioPersonalizadoWidget> {
  ///  Local state fields for this component.

  int varContador = 0;

  TblCalendarioPersonalizadoStruct? varTblCalendarioPersonalizadoAdd;
  void updateVarTblCalendarioPersonalizadoAddStruct(
      Function(TblCalendarioPersonalizadoStruct) updateFn) {
    updateFn(varTblCalendarioPersonalizadoAdd ??=
        TblCalendarioPersonalizadoStruct());
  }

  int varContadorDiasForaMes = 0;

  List<String> varListaDiasDisponiveis = [];
  void addToVarListaDiasDisponiveis(String item) =>
      varListaDiasDisponiveis.add(item);
  void removeFromVarListaDiasDisponiveis(String item) =>
      varListaDiasDisponiveis.remove(item);
  void removeAtIndexFromVarListaDiasDisponiveis(int index) =>
      varListaDiasDisponiveis.removeAt(index);
  void insertAtIndexInVarListaDiasDisponiveis(int index, String item) =>
      varListaDiasDisponiveis.insert(index, item);
  void updateVarListaDiasDisponiveisAtIndex(
          int index, Function(String) updateFn) =>
      varListaDiasDisponiveis[index] = updateFn(varListaDiasDisponiveis[index]);

  String varDiaMesAnoSelecionado = '0';

  int varIndexCarouselAnterior = 0;

  int varIndexCarouselAtual = 1;

  int? varContadorSemanas;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for cp_calendario_pers_dias component.
  late CpCalendarioPersDiasModel cpCalendarioPersDiasModel1;
  // Model for cp_calendario_pers_dias component.
  late CpCalendarioPersDiasModel cpCalendarioPersDiasModel2;
  // Model for cp_calendario_pers_dias component.
  late CpCalendarioPersDiasModel cpCalendarioPersDiasModel3;

  @override
  void initState(BuildContext context) {
    cpCalendarioPersDiasModel1 =
        createModel(context, () => CpCalendarioPersDiasModel());
    cpCalendarioPersDiasModel2 =
        createModel(context, () => CpCalendarioPersDiasModel());
    cpCalendarioPersDiasModel3 =
        createModel(context, () => CpCalendarioPersDiasModel());
  }

  @override
  void dispose() {
    cpCalendarioPersDiasModel1.dispose();
    cpCalendarioPersDiasModel2.dispose();
    cpCalendarioPersDiasModel3.dispose();
  }

  /// Action blocks.
  Future acAtualizarCalendarioSelecionado(BuildContext context) async {
    FFAppState().VarTblCalendarioPersonalizadoSelecionado = [];
    FFAppState().update(() {});
    varContador = 1;
    varTblCalendarioPersonalizadoAdd = null;
    varContadorDiasForaMes = 1;
    varContadorSemanas = 1;
    while (varContadorDiasForaMes <
        functions.fcRetornarIndexDiaSemana(
            functions.fcDiaSemanaPrimeiroDiaMesAno(
                functions.fcConverterStringPInteiro(
                    FFAppState().VarCalendarioMesSelecionado.toString()),
                functions.fcConverterStringPInteiro(
                    FFAppState().VarCalendarioAnoSelecionado.toString())))) {
      varTblCalendarioPersonalizadoAdd = null;
      updateVarTblCalendarioPersonalizadoAddStruct(
        (e) => e
          ..diaSemana = '0'
          ..dia = '0'
          ..data = functions.fcConverterStringPData('2000-01-01'),
      );
      FFAppState().addToVarTblCalendarioPersonalizadoSelecionado(
          varTblCalendarioPersonalizadoAdd!);
      varContadorDiasForaMes = varContadorDiasForaMes + 1;
    }
    while (varContador <=
        functions.fcUltimoDiaMesAno(FFAppState().VarCalendarioMesSelecionado,
            FFAppState().VarCalendarioAnoSelecionado)) {
      if ((varContador > 1) &&
          (functions.fcRetorDiaSemanaDeData(functions.fcConverterStringPData(
                  '${FFAppState().VarCalendarioAnoSelecionado.toString()}-${valueOrDefault<String>(
                formatNumber(
                  FFAppState().VarCalendarioMesSelecionado,
                  formatType: FormatType.custom,
                  format: '00',
                  locale: '',
                ),
                '00',
              )}-${formatNumber(
                varContador,
                formatType: FormatType.custom,
                format: '00',
                locale: '',
              )}')) ==
              'Sunday')) {
        varContadorSemanas = varContadorSemanas! + 1;
      }
      varTblCalendarioPersonalizadoAdd = null;
      updateVarTblCalendarioPersonalizadoAddStruct(
        (e) => e
          ..diaSemana = functions.fcRetorDiaSemanaDeData(
              functions.fcConverterStringPData(
                  '${FFAppState().VarCalendarioAnoSelecionado.toString()}-${formatNumber(
            FFAppState().VarCalendarioMesSelecionado,
            formatType: FormatType.custom,
            format: '00',
            locale: '',
          )}-${formatNumber(
            varContador,
            formatType: FormatType.custom,
            format: '00',
            locale: '',
          )}'))
          ..dia = varContador.toString()
          ..data = functions.fcConverterStringPData(
              '${FFAppState().VarCalendarioAnoSelecionado.toString()}-${formatNumber(
            FFAppState().VarCalendarioMesSelecionado,
            formatType: FormatType.custom,
            format: '00',
            locale: '',
          )}-${formatNumber(
            varContador,
            formatType: FormatType.custom,
            format: '00',
            locale: '',
          )}'),
      );
      FFAppState().addToVarTblCalendarioPersonalizadoSelecionado(
          varTblCalendarioPersonalizadoAdd!);
      varContador = varContador + 1;
    }
  }

  Future acVoltarCalendario(BuildContext context) async {
    if (FFAppState().VarCalendarioMesSelecionado == 1) {
      FFAppState().VarCalendarioMesSelecionado = 12;
      FFAppState().VarCalendarioAnoSelecionado =
          FFAppState().VarCalendarioAnoSelecionado + -1;
      FFAppState().update(() {});
    } else {
      FFAppState().VarCalendarioMesSelecionado =
          FFAppState().VarCalendarioMesSelecionado + -1;
      FFAppState().update(() {});
    }

    await acAtualizarCalendarioSelecionado(context);
    if (widget!.paramIDProfissional! > 0) {
      await action_blocks.acBlockAtualizarHorasDispProfissional(
        context,
        paramIDProfissionalAtzHrDipspProf: widget!.paramIDProfissional,
      );
      await action_blocks.acBlockAtualizarDiasDispProfissional(
        context,
        paramIDProfissionalAtzDiasDipspProf: widget!.paramIDProfissional,
        paramIDServico: widget!.paramIDServico,
      );
    }
    if (widget!.paramAtualizarEstabelecimento == true) {
      await action_blocks.acBlockAtualizarDiasDispEstabelecimento(
        context,
        paramIDServicoEst: widget!.paramIDServico,
      );
      await action_blocks.acBlockAtualizarHorasDispEstabelecimento(context);
    }
  }

  Future acAvancarCalendario(BuildContext context) async {
    if (FFAppState().VarCalendarioMesSelecionado == 12) {
      FFAppState().VarCalendarioMesSelecionado = 1;
      FFAppState().VarCalendarioAnoSelecionado =
          FFAppState().VarCalendarioAnoSelecionado + 1;
      FFAppState().update(() {});
    } else {
      FFAppState().VarCalendarioMesSelecionado =
          FFAppState().VarCalendarioMesSelecionado + 1;
      FFAppState().update(() {});
    }

    await acAtualizarCalendarioSelecionado(context);
    if (widget!.paramIDProfissional! > 0) {
      await action_blocks.acBlockAtualizarHorasDispProfissional(
        context,
        paramIDProfissionalAtzHrDipspProf: widget!.paramIDProfissional,
      );
      await action_blocks.acBlockAtualizarDiasDispProfissional(
        context,
        paramIDProfissionalAtzDiasDipspProf: widget!.paramIDProfissional,
        paramIDServico: widget!.paramIDServico,
      );
    }
    if (widget!.paramAtualizarEstabelecimento == true) {
      await action_blocks.acBlockAtualizarDiasDispEstabelecimento(
        context,
        paramIDServicoEst: widget!.paramIDServico,
      );
      await action_blocks.acBlockAtualizarHorasDispEstabelecimento(context);
    }
  }
}
