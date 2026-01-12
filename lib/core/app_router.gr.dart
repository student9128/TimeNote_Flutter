// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:timenote_flutter/feature/countdown_edit_page.dart' as _i1;
import 'package:timenote_flutter/feature/home_page.dart' as _i2;
import 'package:timenote_flutter/feature/mine_page.dart' as _i4;
import 'package:timenote_flutter/main.dart' as _i3;

/// generated route for
/// [_i1.CountdownEditPage]
class CountdownEditRoute extends _i5.PageRouteInfo<void> {
  const CountdownEditRoute({List<_i5.PageRouteInfo>? children})
    : super(CountdownEditRoute.name, initialChildren: children);

  static const String name = 'CountdownEditRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.CountdownEditPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}

/// generated route for
/// [_i4.MinePage]
class MineRoute extends _i5.PageRouteInfo<void> {
  const MineRoute({List<_i5.PageRouteInfo>? children})
    : super(MineRoute.name, initialChildren: children);

  static const String name = 'MineRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.MinePage();
    },
  );
}
