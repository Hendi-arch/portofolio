// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../ui/landing/landing_view.dart';

class Routes {
  static const String landingView = '/';
  static const all = <String>{
    landingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.landingView, page: LandingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LandingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LandingView(),
        settings: data,
      );
    },
  };
}
