import 'package:api_integration/app/app.locator.dart';
import 'package:api_integration/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DescViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final apiService = locator<ApiServices>();
  dynamic user;
  getUserById() async {
    user = await apiService.getUsersDataById();
    print(user);
    rebuildUi();
  }
}
