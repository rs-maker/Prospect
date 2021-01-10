import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

final locator = GetIt.instance;
@injectableInit
void setupLocator()=> $initGetIt(locator);

/*To avoid injectable package use instead:

void setupLocator(){
locator.registerLazySingleton(() => NavigationService());
.
.
.
}
* */