import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

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
          appStateNotifier.loggedIn ? HomepageWidget() : FristpageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomepageWidget() : FristpageWidget(),
        ),
        FFRoute(
          name: FristpageWidget.routeName,
          path: FristpageWidget.routePath,
          builder: (context, params) => FristpageWidget(),
        ),
        FFRoute(
          name: LoginSignupWidget.routeName,
          path: LoginSignupWidget.routePath,
          builder: (context, params) => LoginSignupWidget(
            tabopen: params.getParam(
              'tabopen',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: HomepageWidget.routeName,
          path: HomepageWidget.routePath,
          builder: (context, params) => HomepageWidget(),
        ),
        FFRoute(
          name: ChemistrypageWidget.routeName,
          path: ChemistrypageWidget.routePath,
          builder: (context, params) => ChemistrypageWidget(),
        ),
        FFRoute(
          name: PhysicsPageWidget.routeName,
          path: PhysicsPageWidget.routePath,
          builder: (context, params) => PhysicsPageWidget(),
        ),
        FFRoute(
          name: MathPageWidget.routeName,
          path: MathPageWidget.routePath,
          builder: (context, params) => MathPageWidget(),
        ),
        FFRoute(
          name: Chemistry1Widget.routeName,
          path: Chemistry1Widget.routePath,
          builder: (context, params) => Chemistry1Widget(),
        ),
        FFRoute(
          name: BiologypageWidget.routeName,
          path: BiologypageWidget.routePath,
          builder: (context, params) => BiologypageWidget(),
        ),
        FFRoute(
          name: Physics1Widget.routeName,
          path: Physics1Widget.routePath,
          builder: (context, params) => Physics1Widget(),
        ),
        FFRoute(
          name: Math1Widget.routeName,
          path: Math1Widget.routePath,
          builder: (context, params) => Math1Widget(),
        ),
        FFRoute(
          name: Biology1Widget.routeName,
          path: Biology1Widget.routePath,
          builder: (context, params) => Biology1Widget(),
        ),
        FFRoute(
          name: ScoreWidget.routeName,
          path: ScoreWidget.routePath,
          builder: (context, params) => ScoreWidget(),
        ),
        FFRoute(
          name: Physics2Widget.routeName,
          path: Physics2Widget.routePath,
          builder: (context, params) => Physics2Widget(),
        ),
        FFRoute(
          name: Physics3Widget.routeName,
          path: Physics3Widget.routePath,
          builder: (context, params) => Physics3Widget(),
        ),
        FFRoute(
          name: Physics4Widget.routeName,
          path: Physics4Widget.routePath,
          builder: (context, params) => Physics4Widget(),
        ),
        FFRoute(
          name: Physics5Widget.routeName,
          path: Physics5Widget.routePath,
          builder: (context, params) => Physics5Widget(),
        ),
        FFRoute(
          name: Physics6Widget.routeName,
          path: Physics6Widget.routePath,
          builder: (context, params) => Physics6Widget(),
        ),
        FFRoute(
          name: Physics7Widget.routeName,
          path: Physics7Widget.routePath,
          builder: (context, params) => Physics7Widget(),
        ),
        FFRoute(
          name: Physics8Widget.routeName,
          path: Physics8Widget.routePath,
          builder: (context, params) => Physics8Widget(),
        ),
        FFRoute(
          name: Physics9Widget.routeName,
          path: Physics9Widget.routePath,
          builder: (context, params) => Physics9Widget(),
        ),
        FFRoute(
          name: Physics10Widget.routeName,
          path: Physics10Widget.routePath,
          builder: (context, params) => Physics10Widget(),
        ),
        FFRoute(
          name: Math2Widget.routeName,
          path: Math2Widget.routePath,
          builder: (context, params) => Math2Widget(),
        ),
        FFRoute(
          name: Math3Widget.routeName,
          path: Math3Widget.routePath,
          builder: (context, params) => Math3Widget(),
        ),
        FFRoute(
          name: Math4Widget.routeName,
          path: Math4Widget.routePath,
          builder: (context, params) => Math4Widget(),
        ),
        FFRoute(
          name: Math5Widget.routeName,
          path: Math5Widget.routePath,
          builder: (context, params) => Math5Widget(),
        ),
        FFRoute(
          name: Math6Widget.routeName,
          path: Math6Widget.routePath,
          builder: (context, params) => Math6Widget(),
        ),
        FFRoute(
          name: Math7Widget.routeName,
          path: Math7Widget.routePath,
          builder: (context, params) => Math7Widget(),
        ),
        FFRoute(
          name: Math8Widget.routeName,
          path: Math8Widget.routePath,
          builder: (context, params) => Math8Widget(),
        ),
        FFRoute(
          name: Math9Widget.routeName,
          path: Math9Widget.routePath,
          builder: (context, params) => Math9Widget(),
        ),
        FFRoute(
          name: Math10Widget.routeName,
          path: Math10Widget.routePath,
          builder: (context, params) => Math10Widget(),
        ),
        FFRoute(
          name: Math11Widget.routeName,
          path: Math11Widget.routePath,
          builder: (context, params) => Math11Widget(),
        ),
        FFRoute(
          name: Math12Widget.routeName,
          path: Math12Widget.routePath,
          builder: (context, params) => Math12Widget(),
        ),
        FFRoute(
          name: Math13Widget.routeName,
          path: Math13Widget.routePath,
          builder: (context, params) => Math13Widget(),
        ),
        FFRoute(
          name: Math14Widget.routeName,
          path: Math14Widget.routePath,
          builder: (context, params) => Math14Widget(),
        ),
        FFRoute(
          name: Math15Widget.routeName,
          path: Math15Widget.routePath,
          builder: (context, params) => Math15Widget(),
        ),
        FFRoute(
          name: Math16Widget.routeName,
          path: Math16Widget.routePath,
          builder: (context, params) => Math16Widget(),
        ),
        FFRoute(
          name: Math17Widget.routeName,
          path: Math17Widget.routePath,
          builder: (context, params) => Math17Widget(),
        ),
        FFRoute(
          name: Chemistry2Widget.routeName,
          path: Chemistry2Widget.routePath,
          builder: (context, params) => Chemistry2Widget(),
        ),
        FFRoute(
          name: Chemistry3Widget.routeName,
          path: Chemistry3Widget.routePath,
          builder: (context, params) => Chemistry3Widget(),
        ),
        FFRoute(
          name: Chemistry4Widget.routeName,
          path: Chemistry4Widget.routePath,
          builder: (context, params) => Chemistry4Widget(),
        ),
        FFRoute(
          name: Chemistry5Widget.routeName,
          path: Chemistry5Widget.routePath,
          builder: (context, params) => Chemistry5Widget(),
        ),
        FFRoute(
          name: Chemistry6Widget.routeName,
          path: Chemistry6Widget.routePath,
          builder: (context, params) => Chemistry6Widget(),
        ),
        FFRoute(
          name: Chemistry7Widget.routeName,
          path: Chemistry7Widget.routePath,
          builder: (context, params) => Chemistry7Widget(),
        ),
        FFRoute(
          name: Chemistry8Widget.routeName,
          path: Chemistry8Widget.routePath,
          builder: (context, params) => Chemistry8Widget(),
        ),
        FFRoute(
          name: Chemistry9Widget.routeName,
          path: Chemistry9Widget.routePath,
          builder: (context, params) => Chemistry9Widget(),
        ),
        FFRoute(
          name: Chemistry10Widget.routeName,
          path: Chemistry10Widget.routePath,
          builder: (context, params) => Chemistry10Widget(),
        ),
        FFRoute(
          name: Chemistry11Widget.routeName,
          path: Chemistry11Widget.routePath,
          builder: (context, params) => Chemistry11Widget(),
        ),
        FFRoute(
          name: Biology2Widget.routeName,
          path: Biology2Widget.routePath,
          builder: (context, params) => Biology2Widget(),
        ),
        FFRoute(
          name: Biology3Widget.routeName,
          path: Biology3Widget.routePath,
          builder: (context, params) => Biology3Widget(),
        ),
        FFRoute(
          name: Biology4Widget.routeName,
          path: Biology4Widget.routePath,
          builder: (context, params) => Biology4Widget(),
        ),
        FFRoute(
          name: Biology5Widget.routeName,
          path: Biology5Widget.routePath,
          builder: (context, params) => Biology5Widget(),
        ),
        FFRoute(
          name: Biology6Widget.routeName,
          path: Biology6Widget.routePath,
          builder: (context, params) => Biology6Widget(),
        ),
        FFRoute(
          name: Biology7Widget.routeName,
          path: Biology7Widget.routePath,
          builder: (context, params) => Biology7Widget(),
        ),
        FFRoute(
          name: Biology8Widget.routeName,
          path: Biology8Widget.routePath,
          builder: (context, params) => Biology8Widget(),
        ),
        FFRoute(
          name: Biology9Widget.routeName,
          path: Biology9Widget.routePath,
          builder: (context, params) => Biology9Widget(),
        ),
        FFRoute(
          name: Biology10Widget.routeName,
          path: Biology10Widget.routePath,
          builder: (context, params) => Biology10Widget(),
        ),
        FFRoute(
          name: Biology11Widget.routeName,
          path: Biology11Widget.routePath,
          builder: (context, params) => Biology11Widget(),
        ),
        FFRoute(
          name: SettingsPageWidget.routeName,
          path: SettingsPageWidget.routePath,
          builder: (context, params) => SettingsPageWidget(),
        ),
        FFRoute(
          name: PlayingPolicyWidget.routeName,
          path: PlayingPolicyWidget.routePath,
          builder: (context, params) => PlayingPolicyWidget(),
        ),
        FFRoute(
          name: ContactUsWidget.routeName,
          path: ContactUsWidget.routePath,
          builder: (context, params) => ContactUsWidget(),
        ),
        FFRoute(
          name: WhoAreWeWidget.routeName,
          path: WhoAreWeWidget.routePath,
          builder: (context, params) => WhoAreWeWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
    List<String>? collectionNamePath,
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
      collectionNamePath: collectionNamePath,
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
            return '/fristpage';
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
                  color: Color(0xFFC6E4FF),
                  child: Image.asset(
                    'assets/images/welecoming.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
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
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
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
