import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_list/hero_list.dart';
import 'src/services/hero_service.dart';
import 'src/router/routes.dart';


@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [HeroList, routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [Routes],
)
class AppComponent{
  final title = 'Tour of Heroes';
}
