import 'package:angular/angular.dart';

import 'src/hero_list/hero_list.dart';
import 'src/services/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [HeroList],
  providers: [ClassProvider(HeroService)],
)
class AppComponent{
  final title = 'Tour of Heroes';
}