// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart'
    as _i6;
import 'package:wix_navigation/features/delivers/presentation/pages/deliver_detail_page.dart'
    as _i1;
import 'package:wix_navigation/features/home/presentation/pages/home_page.dart'
    as _i2;
import 'package:wix_navigation/features/stepper/presentation/pages/stepper_page.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DeliverDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DeliverDetailRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DeliverDetailPage(
          key: args.key,
          delivery: args.delivery,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    StepperRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StepperPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DeliverDetailPage]
class DeliverDetailRoute extends _i4.PageRouteInfo<DeliverDetailRouteArgs> {
  DeliverDetailRoute({
    _i5.Key? key,
    required _i6.DeliveryListModel delivery,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DeliverDetailRoute.name,
          args: DeliverDetailRouteArgs(
            key: key,
            delivery: delivery,
          ),
          initialChildren: children,
        );

  static const String name = 'DeliverDetailRoute';

  static const _i4.PageInfo<DeliverDetailRouteArgs> page =
      _i4.PageInfo<DeliverDetailRouteArgs>(name);
}

class DeliverDetailRouteArgs {
  const DeliverDetailRouteArgs({
    this.key,
    required this.delivery,
  });

  final _i5.Key? key;

  final _i6.DeliveryListModel delivery;

  @override
  String toString() {
    return 'DeliverDetailRouteArgs{key: $key, delivery: $delivery}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.StepperPage]
class StepperRoute extends _i4.PageRouteInfo<void> {
  const StepperRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StepperRoute.name,
          initialChildren: children,
        );

  static const String name = 'StepperRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
