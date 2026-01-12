import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter{
  
  @override
  RouteType get defaultRouteType => RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRoute.page, initial: true,children: [
      AutoRoute(page: HomeRoute.page, initial: true),
      AutoRoute(page: MineRoute.page),
    ]),
    AutoRoute(page: CountdownEditRoute.page)
    ];

}