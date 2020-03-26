import 'package:angular/angular.dart';

import '../utils/hero.dart';
import '../hero_component/hero_component.dart';
import '../services/hero_service.dart';

@Component(
  selector: 'hero-list',
  templateUrl: 'hero_list.html',
  styleUrls: ['hero_list.css'],
  directives: [coreDirectives,HeroComponent],
)
class HeroList implements OnInit {
  Hero selected;
  final HeroService _heroService;
  List <Hero> heroes;
  bool isDisplayed = false;

  HeroList(this._heroService);
  
  Future <void> _getHeroes() async => heroes = await _heroService.getAllHeroes();

  @override
  void ngOnInit() => _getHeroes();
 
  void onSelect(Hero hero) => selected = hero;
}
