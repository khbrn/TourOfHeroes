import 'package:angular_router/angular_router.dart';

import '../hero_list/hero_list.template.dart' as hero_list_template;
import 'route_paths.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
  ];
}
