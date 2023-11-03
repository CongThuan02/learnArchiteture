// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:learn_clearn_code/presentation/pages/login/login.dart' as _i4;
import 'package:learn_clearn_code/presentation/pages/login/login_screen.dart'
    as _i3;
import 'package:learn_clearn_code/presentation/pages/onboard/onboard_import.dart'
    as _i2;
import 'package:learn_clearn_code/presentation/pages/splash/splash_imports.dart'
    as _i1;

abstract class $AppRoute extends _i5.RootStackRouter {
  $AppRoute({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
      );
    },
    OnboradRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Onborad(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
      );
    },
  };
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Onborad]
class OnboradRoute extends _i5.PageRouteInfo<void> {
  const OnboradRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboradRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboradRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
