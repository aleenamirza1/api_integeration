import 'package:api_integration/services/api_service.dart';
import 'package:api_integration/views/about/about_view.dart';
import 'package:api_integration/views/contact/contact_view.dart';
import 'package:api_integration/views/description/desc_view.dart';
import 'package:api_integration/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: AboutView),
    MaterialRoute(page: ContactView),
    MaterialRoute(page: DescView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: ApiServices),
  ],
)
class App {}
