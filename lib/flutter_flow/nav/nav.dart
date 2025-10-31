import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? PgDashboardWidget() : PgLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? PgDashboardWidget() : PgLoginWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(
            cupom: params.getParam(
              'cupom',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PgCalendarioWidget.routeName,
          path: PgCalendarioWidget.routePath,
          builder: (context, params) => PgCalendarioWidget(),
        ),
        FFRoute(
          name: PgConsultarAgendamentoWidget.routeName,
          path: PgConsultarAgendamentoWidget.routePath,
          builder: (context, params) => PgConsultarAgendamentoWidget(),
        ),
        FFRoute(
          name: PgLoginWidget.routeName,
          path: PgLoginWidget.routePath,
          builder: (context, params) => PgLoginWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PgEstabelecimentoAdminWidget.routeName,
          path: PgEstabelecimentoAdminWidget.routePath,
          builder: (context, params) => PgEstabelecimentoAdminWidget(
            paramAdmin: params.getParam(
              'paramAdmin',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: PgEstabelecimentoCadWidget.routeName,
          path: PgEstabelecimentoCadWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgEstabelecimentoCadWidget(),
        ),
        FFRoute(
          name: PgDashboardWidget.routeName,
          path: PgDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgDashboardWidget(),
        ),
        FFRoute(
          name: PgListaProfissionaisWidget.routeName,
          path: PgListaProfissionaisWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgListaProfissionaisWidget(),
        ),
        FFRoute(
          name: PgListaServicosWidget.routeName,
          path: PgListaServicosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgListaServicosWidget(),
        ),
        FFRoute(
          name: PgConfiguracoesWidget.routeName,
          path: PgConfiguracoesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgConfiguracoesWidget(),
        ),
        FFRoute(
          name: PgListaUsuariosWidget.routeName,
          path: PgListaUsuariosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgListaUsuariosWidget(),
        ),
        FFRoute(
          name: PgAgendamentosCarrinhosWidget.routeName,
          path: PgAgendamentosCarrinhosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAgendamentosCarrinhosWidget(),
        ),
        FFRoute(
          name: PgListaProdutosWidget.routeName,
          path: PgListaProdutosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgListaProdutosWidget(),
        ),
        FFRoute(
          name: PgResetSenhaWidget.routeName,
          path: PgResetSenhaWidget.routePath,
          builder: (context, params) => PgResetSenhaWidget(),
        ),
        FFRoute(
          name: PgCadProfissionaisWidget.routeName,
          path: PgCadProfissionaisWidget.routePath,
          builder: (context, params) => PgCadProfissionaisWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramIDProfissional: params.getParam(
              'paramIDProfissional',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PgCadServicosWidget.routeName,
          path: PgCadServicosWidget.routePath,
          builder: (context, params) => PgCadServicosWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramIDServico: params.getParam(
              'paramIDServico',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PgCadTemasBlackgroundWidget.routeName,
          path: PgCadTemasBlackgroundWidget.routePath,
          builder: (context, params) => PgCadTemasBlackgroundWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramRowTblTemasBlackground:
                params.getParam<TblAppTemasBlackgroundRow>(
              'paramRowTblTemasBlackground',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PgTemasBlackgroundWidget.routeName,
          path: PgTemasBlackgroundWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgTemasBlackgroundWidget(),
        ),
        FFRoute(
          name: PgCadModelosBannersWidget.routeName,
          path: PgCadModelosBannersWidget.routePath,
          builder: (context, params) => PgCadModelosBannersWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramRowTblModelosBanners: params.getParam<TblAppModelosBannerRow>(
              'paramRowTblModelosBanners',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PgModelosBannersWidget.routeName,
          path: PgModelosBannersWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgModelosBannersWidget(),
        ),
        FFRoute(
          name: PgAgendamentoHistoricoWidget.routeName,
          path: PgAgendamentoHistoricoWidget.routePath,
          builder: (context, params) => PgAgendamentoHistoricoWidget(),
        ),
        FFRoute(
          name: PgFidelidadeWidget.routeName,
          path: PgFidelidadeWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgFidelidadeWidget(),
        ),
        FFRoute(
          name: PgAgendamentosDiariosWidget.routeName,
          path: PgAgendamentosDiariosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAgendamentosDiariosWidget(),
        ),
        FFRoute(
          name: PgAdminEstabelecimentosWidget.routeName,
          path: PgAdminEstabelecimentosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAdminEstabelecimentosWidget(),
        ),
        FFRoute(
          name: PgAfiliadosAdminWidget.routeName,
          path: PgAfiliadosAdminWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadosAdminWidget(),
        ),
        FFRoute(
          name: PgFinanceiroWidget.routeName,
          path: PgFinanceiroWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgFinanceiroWidget(),
        ),
        FFRoute(
          name: PgLogsErrosWidget.routeName,
          path: PgLogsErrosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgLogsErrosWidget(),
        ),
        FFRoute(
          name: PgLogsAtividadesWidget.routeName,
          path: PgLogsAtividadesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgLogsAtividadesWidget(),
        ),
        FFRoute(
          name: PgAtendimentosWidget.routeName,
          path: PgAtendimentosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAtendimentosWidget(),
        ),
        FFRoute(
          name: PgSegmentosWidget.routeName,
          path: PgSegmentosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgSegmentosWidget(),
        ),
        FFRoute(
          name: PgPlanosWidget.routeName,
          path: PgPlanosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgPlanosWidget(),
        ),
        FFRoute(
          name: PgConfigAdminWidget.routeName,
          path: PgConfigAdminWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgConfigAdminWidget(),
        ),
        FFRoute(
          name: PgUserAdminWidget.routeName,
          path: PgUserAdminWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgUserAdminWidget(),
        ),
        FFRoute(
          name: PgRelatoriosWidget.routeName,
          path: PgRelatoriosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgRelatoriosWidget(),
        ),
        FFRoute(
          name: PgCadPlanosPrecosWidget.routeName,
          path: PgCadPlanosPrecosWidget.routePath,
          builder: (context, params) => PgCadPlanosPrecosWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramTblPlanoPreco: params.getParam<ViewTblAppPlanosRow>(
              'paramTblPlanoPreco',
              ParamType.SupabaseRow,
            ),
            paramIDAfiliadoApp: params.getParam(
              'paramIDAfiliadoApp',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PgCadPlanosNomesWidget.routeName,
          path: PgCadPlanosNomesWidget.routePath,
          builder: (context, params) => PgCadPlanosNomesWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramTblPlanosNomes: params.getParam<ViewTblAppPlanosNomesRow>(
              'paramTblPlanosNomes',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PgCadPlanosPeriodosWidget.routeName,
          path: PgCadPlanosPeriodosWidget.routePath,
          builder: (context, params) => PgCadPlanosPeriodosWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramTblPlanosPeriodos: params.getParam<TblPlanosPeriodosRow>(
              'paramTblPlanosPeriodos',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PgFormasPagWidget.routeName,
          path: PgFormasPagWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgFormasPagWidget(),
        ),
        FFRoute(
          name: PgAfiliadosCadWidget.routeName,
          path: PgAfiliadosCadWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadosCadWidget(
            paramInscricao: params.getParam(
              'paramInscricao',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: DELETEPgAfiliadoDashboardWidget.routeName,
          path: DELETEPgAfiliadoDashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DELETEPgAfiliadoDashboardWidget(),
        ),
        FFRoute(
          name: PgAfiliadoIndicacoesWidget.routeName,
          path: PgAfiliadoIndicacoesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoIndicacoesWidget(),
        ),
        FFRoute(
          name: PgAfiliadoSubAfiliadosWidget.routeName,
          path: PgAfiliadoSubAfiliadosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoSubAfiliadosWidget(),
        ),
        FFRoute(
          name: PgAfiliadoComissoesWidget.routeName,
          path: PgAfiliadoComissoesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoComissoesWidget(),
        ),
        FFRoute(
          name: PgAfiliadoCuponsWidget.routeName,
          path: PgAfiliadoCuponsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoCuponsWidget(),
        ),
        FFRoute(
          name: PgAfiliadoRelatoriosWidget.routeName,
          path: PgAfiliadoRelatoriosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoRelatoriosWidget(),
        ),
        FFRoute(
          name: PgAfiliadoTreinamentoWidget.routeName,
          path: PgAfiliadoTreinamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoTreinamentoWidget(),
        ),
        FFRoute(
          name: PgAfiliadoGoogleMapsWidget.routeName,
          path: PgAfiliadoGoogleMapsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoGoogleMapsWidget(),
        ),
        FFRoute(
          name: DELETEPgAfiliadoApresentacaoWidget.routeName,
          path: DELETEPgAfiliadoApresentacaoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DELETEPgAfiliadoApresentacaoWidget(),
        ),
        FFRoute(
          name: DELETEPgAfiliadoAtivacaoWidget.routeName,
          path: DELETEPgAfiliadoAtivacaoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DELETEPgAfiliadoAtivacaoWidget(),
        ),
        FFRoute(
          name: PgCupomCadWidget.routeName,
          path: PgCupomCadWidget.routePath,
          builder: (context, params) => PgCupomCadWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramTblCupom: params.getParam<ViewTblAfiliadosCuponsAdminRow>(
              'paramTblCupom',
              ParamType.SupabaseRow,
            ),
            paramIDAfiliadoApp: params.getParam(
              'paramIDAfiliadoApp',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PgAdminCuponsPadroesWidget.routeName,
          path: PgAdminCuponsPadroesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAdminCuponsPadroesWidget(),
        ),
        FFRoute(
          name: Dashboard22Widget.routeName,
          path: Dashboard22Widget.routePath,
          builder: (context, params) => Dashboard22Widget(),
        ),
        FFRoute(
          name: Dashb25Widget.routeName,
          path: Dashb25Widget.routePath,
          builder: (context, params) => Dashb25Widget(),
        ),
        FFRoute(
          name: PgAfiliadoSaquesWidget.routeName,
          path: PgAfiliadoSaquesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoSaquesWidget(),
        ),
        FFRoute(
          name: PgAfiliadoAtividadesWidget.routeName,
          path: PgAfiliadoAtividadesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoAtividadesWidget(),
        ),
        FFRoute(
          name: PgAfiliadoPlanoWidget.routeName,
          path: PgAfiliadoPlanoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoPlanoWidget(),
        ),
        FFRoute(
          name: PgAfiliadoComissoesMensaisWidget.routeName,
          path: PgAfiliadoComissoesMensaisWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoComissoesMensaisWidget(),
        ),
        FFRoute(
          name: PgEstabelecimentoPlanoWidget.routeName,
          path: PgEstabelecimentoPlanoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgEstabelecimentoPlanoWidget(),
        ),
        FFRoute(
          name: PgModelosFotosWidget.routeName,
          path: PgModelosFotosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgModelosFotosWidget(),
        ),
        FFRoute(
          name: PgCadModelosFotosWidget.routeName,
          path: PgCadModelosFotosWidget.routePath,
          builder: (context, params) => PgCadModelosFotosWidget(
            paramCadastro: params.getParam(
              'paramCadastro',
              ParamType.bool,
            ),
            paramRowTblModelosFotos: params.getParam<TblModelosFotosRow>(
              'paramRowTblModelosFotos',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PgAdminPagSaquesWidget.routeName,
          path: PgAdminPagSaquesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAdminPagSaquesWidget(),
        ),
        FFRoute(
          name: PgHomeAssistenteCadWidget.routeName,
          path: PgHomeAssistenteCadWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgHomeAssistenteCadWidget(),
        ),
        FFRoute(
          name: PgBancosContasWidget.routeName,
          path: PgBancosContasWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgBancosContasWidget(),
        ),
        FFRoute(
          name: PgAdminEventosStripeWidget.routeName,
          path: PgAdminEventosStripeWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAdminEventosStripeWidget(),
        ),
        FFRoute(
          name: PgAfiliadoCpfWidget.routeName,
          path: PgAfiliadoCpfWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgAfiliadoCpfWidget(),
        ),
        FFRoute(
          name: PgNotificacoesWidget.routeName,
          path: PgNotificacoesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PgNotificacoesWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/AppAfiliado_(5).png',
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
