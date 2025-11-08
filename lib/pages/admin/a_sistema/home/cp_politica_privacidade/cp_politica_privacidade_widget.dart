import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cp_politica_privacidade_model.dart';
export 'cp_politica_privacidade_model.dart';

class CpPoliticaPrivacidadeWidget extends StatefulWidget {
  const CpPoliticaPrivacidadeWidget({super.key});

  @override
  State<CpPoliticaPrivacidadeWidget> createState() =>
      _CpPoliticaPrivacidadeWidgetState();
}

class _CpPoliticaPrivacidadeWidgetState
    extends State<CpPoliticaPrivacidadeWidget> {
  late CpPoliticaPrivacidadeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CpPoliticaPrivacidadeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 28.0,
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Text(
                        'Política de Privacidade',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
              child: FlutterFlowWebView(
                content:
                    '<h1>Pol&iacute;tica de Privacidade</h1>\n\n<p>&Uacute;ltima atualiza&ccedil;&atilde;o: 08/11/2025</p>\n\n<p>Esta Pol&iacute;tica descreve como a Team Sistemas&nbsp;trata dados pessoais nos aplicativos e sites: <strong>Agenda Super</strong>, <strong>APP Afiliado</strong> e demais produtos relacionados (conjuntamente, &ldquo;Aplicativo&rdquo;). Ao usar o Aplicativo, voc&ecirc; concorda com os termos abaixo.</p>\n\n<h2>1. Controlador e contato</h2>\n\n<div class=\"box\">\n<p><strong>Controlador: Team Sistemas</strong></p>\n\n<p><strong>E-mail do DPO/Encarregado (LGPD): contatoteamsistemas@gmail.com</strong></p>\n\n<p><strong>Endere&ccedil;o:</strong> Bocai&uacute;va - MG</p>\n</div>\n\n<h2>2. Dados que coletamos</h2>\n\n<ul>\n\t<li><strong>Conta e perfil:</strong> nome, CPF/CNPJ (Quando fornecidos),&nbsp;e-mail, telefone, foto de perfil (se enviada), ID do usu&aacute;rio.</li>\n\t<li><strong>Assinaturas e faturamento:</strong> hist&oacute;rico de planos e pagamentos. <em>N&atilde;o armazenamos dados completos de cart&atilde;o</em>; o processamento &eacute; feito por terceiros (ex.: Stripe).</li>\n\t<li><strong>Uso do app:</strong>&nbsp;A&ccedil;&otilde;es necess&aacute;rias para operar recursos (ex.: cria&ccedil;&atilde;o/edi&ccedil;&atilde;o de itens, data/hora de acesso).</li>\n\t<li><strong>Arquivos enviados:</strong> imagens/documentos que voc&ecirc; optar por anexar.</li>\n\t<li><strong>Identificadores do dispositivo para notifica&ccedil;&otilde;es push</strong> (ex.: token de push/ID do dispositivo) &ndash; usados para enviar mensagens transacionais. &ldquo;As notifica&ccedil;&otilde;es s&atilde;o operadas pela OneSignal.&rdquo;</li>\n\t<li><strong>Logs e diagn&oacute;sticos:</strong> informa&ccedil;&otilde;es t&eacute;cnicas para suporte e seguran&ccedil;a (vers&atilde;o do app, modelo do dispositivo, sistema operacional, falhas).</li>\n</ul>\n\n<p><strong>N&atilde;o coletamos</strong> localiza&ccedil;&atilde;o precisa, contatos, SMS, calend&aacute;rio, microfone ou conte&uacute;do de chamadas.</p>\n\n<h2>3. Bases legais e finalidades</h2>\n\n<ul>\n\t<li><strong>Execu&ccedil;&atilde;o do contrato</strong>: criar/gerenciar sua conta, fornecer funcionalidades e suporte.</li>\n\t<li><strong>Interesse leg&iacute;timo</strong>: seguran&ccedil;a, preven&ccedil;&atilde;o a fraudes, melhoria do servi&ccedil;o, estat&iacute;sticas agregadas.</li>\n\t<li><strong>Obriga&ccedil;&atilde;o legal</strong>: registros fiscais/cont&aacute;beis de transa&ccedil;&otilde;es.</li>\n\t<li><strong>Consentimento</strong> (quando aplic&aacute;vel): notifica&ccedil;&otilde;es, uso de imagem/arquivos enviados, comunica&ccedil;&otilde;es de marketing (opt-in).</li>\n</ul>\n\n<h2>4. Compartilhamento com operadores (prestadores)</h2>\n\n<p>Compartilhamos dados apenas com <strong>operadores</strong> que processam informa&ccedil;&otilde;es em nosso nome, conforme instru&ccedil;&otilde;es contratuais:</p>\n\n<ul>\n\t<li><strong>Supabase</strong> (autentica&ccedil;&atilde;o, banco de dados e arquivos)</li>\n\t<li><strong>Stripe</strong> (pagamentos e assinaturas)</li>\n\t<li><strong>One Signal</strong> (notifica&ccedil;&otilde;es push &ndash; se habilitado)</li>\n\t<li>Provedores de hospedagem/CDN, e-mail transacional e monitoramento (conforme necessidade)</li>\n</ul>\n\n<p><em>N&atilde;o vendemos dados pessoais.</em></p>\n\n<h2>5. Seguran&ccedil;a</h2>\n\n<p>Empregamos medidas t&eacute;cnicas e organizacionais adequadas (criptografia em tr&acirc;nsito, controle de acesso, registro de auditoria, pol&iacute;ticas de backup). Nenhum m&eacute;todo &eacute; 100% seguro, mas buscamos continuamente reduzir riscos.</p>\n\n<h2>6. Reten&ccedil;&atilde;o</h2>\n\n<p>Guardamos dados enquanto sua conta estiver ativa e pelo tempo necess&aacute;rio para cumprir obriga&ccedil;&otilde;es legais e resolu&ccedil;&atilde;o de disputas. Voc&ecirc; pode solicitar exclus&atilde;o da conta e dados, observadas reten&ccedil;&otilde;es legais.</p>\n\n<h2>7. Seus direitos (LGPD)</h2>\n\n<ul>\n\t<li>Confirma&ccedil;&atilde;o de tratamento e acesso;</li>\n\t<li>Corre&ccedil;&atilde;o de dados incompletos/inexatos;</li>\n\t<li>Anonimiza&ccedil;&atilde;o, bloqueio ou elimina&ccedil;&atilde;o de dados desnecess&aacute;rios/excessivos;</li>\n\t<li>Portabilidade; informa&ccedil;&atilde;o sobre compartilhamento; revoga&ccedil;&atilde;o de consentimento; oposi&ccedil;&atilde;o quando cab&iacute;vel.</li>\n</ul>\n\n<p>Para exercer direitos, contate contatoteamsistems@gmail.com</p>\n\n<h2>8. Crian&ccedil;as e adolescentes</h2>\n\n<p>O Aplicativo n&atilde;o &eacute; direcionado a menores de 13 anos e n&atilde;o coletamos intencionalmente dados desse p&uacute;blico.</p>\n\n<h2>9. Transfer&ecirc;ncias internacionais</h2>\n\n<p>Prestadores podem operar em outros pa&iacute;ses. Garantimos salvaguardas contratuais adequadas e padr&otilde;es equivalentes de prote&ccedil;&atilde;o.</p>\n\n<h2>10. Cookies e tecnologias semelhantes (Web/PWA)</h2>\n\n<p>Podemos usar cookies essenciais para login/seguran&ccedil;a e prefer&ecirc;ncias. Cookies de marketing/analytics s&atilde;o utilizados apenas com consentimento, quando aplic&aacute;vel.</p>\n\n<h2>11. Altera&ccedil;&otilde;es</h2>\n\n<p>Atualizaremos esta Pol&iacute;tica quando necess&aacute;rio. Publicaremos a vers&atilde;o vigente com a <strong>data</strong> no topo.</p>\n\n<h2>12. Contato</h2>\n\n<p>D&uacute;vidas ou solicita&ccedil;&otilde;es:&nbsp;contatoteamsistems@gmail.com</p>\n',
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: true,
                horizontalScroll: true,
                html: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
