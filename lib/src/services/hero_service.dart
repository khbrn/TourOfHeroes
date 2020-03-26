import 'dart:async';

import '../utils/hero.dart';
import '../utils/mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAllHeroes() async => mockHeroes;

  Future<List<Hero>> getAllSlowly() {
  return Future.delayed(Duration(seconds: 4), getAllHeroes);
}
}
