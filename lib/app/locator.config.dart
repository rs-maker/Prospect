// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../pages/homepage.dart';
import '../ui/views/home/home_view.dart';
import '../pages/second_page.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<HomePage>(() => HomePage());
  gh.factory<HomeView>(() => HomeView());
  gh.factory<SecondPage>(() => SecondPage());
  return get;
}
