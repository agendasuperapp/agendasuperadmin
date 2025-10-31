import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'cp_estabelec_cad_hr_atendimentos_widget.dart'
    show CpEstabelecCadHrAtendimentosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CpEstabelecCadHrAtendimentosModel
    extends FlutterFlowModel<CpEstabelecCadHrAtendimentosWidget> {
  ///  Local state fields for this component.

  bool varFechaIntervalo = false;

  bool varLojaFechada = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldHora1Inicio widget.
  FocusNode? textFieldHora1InicioFocusNode;
  TextEditingController? textFieldHora1InicioTextController;
  late MaskTextInputFormatter textFieldHora1InicioMask;
  String? Function(BuildContext, String?)?
      textFieldHora1InicioTextControllerValidator;
  // State field(s) for TextFieldHora1FimInicioIntervalo widget.
  FocusNode? textFieldHora1FimInicioIntervaloFocusNode;
  TextEditingController? textFieldHora1FimInicioIntervaloTextController;
  late MaskTextInputFormatter textFieldHora1FimInicioIntervaloMask;
  String? Function(BuildContext, String?)?
      textFieldHora1FimInicioIntervaloTextControllerValidator;
  // State field(s) for TextFieldHora2InicioFimIntervalo widget.
  FocusNode? textFieldHora2InicioFimIntervaloFocusNode;
  TextEditingController? textFieldHora2InicioFimIntervaloTextController;
  late MaskTextInputFormatter textFieldHora2InicioFimIntervaloMask;
  String? Function(BuildContext, String?)?
      textFieldHora2InicioFimIntervaloTextControllerValidator;
  // State field(s) for TextFieldHora2Fim widget.
  FocusNode? textFieldHora2FimFocusNode;
  TextEditingController? textFieldHora2FimTextController;
  late MaskTextInputFormatter textFieldHora2FimMask;
  String? Function(BuildContext, String?)?
      textFieldHora2FimTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldHora1InicioFocusNode?.dispose();
    textFieldHora1InicioTextController?.dispose();

    textFieldHora1FimInicioIntervaloFocusNode?.dispose();
    textFieldHora1FimInicioIntervaloTextController?.dispose();

    textFieldHora2InicioFimIntervaloFocusNode?.dispose();
    textFieldHora2InicioFimIntervaloTextController?.dispose();

    textFieldHora2FimFocusNode?.dispose();
    textFieldHora2FimTextController?.dispose();
  }

  /// Action blocks.
  Future<bool> acSalvarHorario(BuildContext context) async {
    if (!varLojaFechada) {
      if (textFieldHora1InicioTextController.text == '') {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem: 'Informe o horário de início de expediente',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (functions.fcCountCaracteres(textFieldHora1InicioTextController.text) <
          5) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem:
              'Horário de início de expediente inválido, digite os 4 números',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (functions.fcConverterStringPInteiro(
              functions.fcRemoverCaracteresELetrasString(
                  textFieldHora1InicioTextController.text)) >
          2359) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem: 'Horário de início de expediente inválido',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (varFechaIntervalo) {
        if (textFieldHora1FimInicioIntervaloTextController.text == '') {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem: 'Informe o horário de início  do  intervalo',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcCountCaracteres(
                textFieldHora1FimInicioIntervaloTextController.text) <
            5) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem:
                'Horário de início de intervalo inválido, digite os 4 números',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora1FimInicioIntervaloTextController.text)) >
            2359) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem: 'Horário de início de intervalo inválido',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora1FimInicioIntervaloTextController.text)) <
            functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora1InicioTextController.text))) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem:
                'Horário de início de intervalo deve ser maior que o início do expediente',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (textFieldHora2InicioFimIntervaloTextController.text == '') {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem: 'Informe o horário de fim  de  intervalo',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcCountCaracteres(
                textFieldHora2InicioFimIntervaloTextController.text) <
            5) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem:
                'Horário de fim de intervalo inválido, digite os 4 números',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora2InicioFimIntervaloTextController.text)) >
            2359) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem: 'Horário de fim de intervalo inválido',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
        if (functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora2InicioFimIntervaloTextController.text)) <
            functions.fcConverterStringPInteiro(
                functions.fcRemoverCaracteresELetrasString(
                    textFieldHora1FimInicioIntervaloTextController.text))) {
          await action_blocks.acMensagemDialog(
            context,
            paramTitulo: 'Atenção!',
            paramMensagem:
                'Horário de fim de intervalo deve ser maior que o início do intervalo',
            paramVerCarrinho: false,
            paramTipo: 'erro',
            paramPadrao: false,
          );
          return false;
        }
      }
      if (textFieldHora2FimTextController.text == '') {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem: 'Informe o horário de fim de expediente',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (functions.fcCountCaracteres(textFieldHora2FimTextController.text) <
          5) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem:
              'Horário de fim de expediente inválido, digite os 4 números',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (functions.fcConverterStringPInteiro(
              functions.fcRemoverCaracteresELetrasString(
                  textFieldHora2FimTextController.text)) >
          2359) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem: 'Horário de fim de expediente inválido',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (functions.fcConverterStringPInteiro(
              functions.fcRemoverCaracteresELetrasString(
                  textFieldHora2FimTextController.text)) <
          functions.fcConverterStringPInteiro(
              functions.fcRemoverCaracteresELetrasString(
                  textFieldHora1InicioTextController.text))) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem:
              'Horário de fim de expediente deve ser maior que o início do expediente',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
      if (varFechaIntervalo &&
          (functions.fcConverterStringPInteiro(
                  functions.fcRemoverCaracteresELetrasString(
                      textFieldHora2FimTextController.text)) <
              functions.fcConverterStringPInteiro(
                  functions.fcRemoverCaracteresELetrasString(
                      textFieldHora2InicioFimIntervaloTextController.text)))) {
        await action_blocks.acMensagemDialog(
          context,
          paramTitulo: 'Atenção!',
          paramMensagem:
              'Horário de fim de expediente deve ser maior que o fim do intervalo',
          paramVerCarrinho: false,
          paramTipo: 'erro',
          paramPadrao: false,
        );
        return false;
      }
    }
    await TblHorariosFuncionamentoTable().update(
      data: {
        'horario_1_inicio': textFieldHora1InicioTextController.text,
        'horario_2_inicio': textFieldHora2InicioFimIntervaloTextController.text,
        'fechado': varLojaFechada,
        'observacao': '',
        'horario_1_fim': textFieldHora1FimInicioIntervaloTextController.text,
        'horario_2_fim': textFieldHora2FimTextController.text,
      },
      matchingRows: (rows) => rows
          .eqOrNull(
            'id_estabelecimento',
            FFAppState().VarIDEstabelecimentoLogado,
          )
          .eqOrNull(
            'id',
            widget!.paramDiaSemana?.id,
          ),
    );
    await TblEstabelecimentoTable().update(
      data: {
        'data_ultima_atualizacao_hr_func':
            supaSerialize<DateTime>(getCurrentTimestamp),
      },
      matchingRows: (rows) => rows.eqOrNull(
        'id',
        FFAppState().VarIDEstabelecimentoLogado,
      ),
    );
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Horário de funcionamento salvo com sucesso...',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
        ),
        duration: Duration(milliseconds: 2000),
        backgroundColor: FlutterFlowTheme.of(context).secondary,
      ),
    );
    return true;
  }
}
