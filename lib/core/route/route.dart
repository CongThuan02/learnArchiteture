part of 'route_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRoute extends $AppRoute {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(
          page: OnboradRoute.page,
        ),
        AutoRoute(
          page: LoginScreenRoute.page,
        ),
        AutoRoute(page: LoginRoute.page),
      ];
}
