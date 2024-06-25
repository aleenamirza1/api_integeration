import 'package:api_integration/app/app.locator.dart';
import 'package:api_integration/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final apiService = locator<ApiServices>();
  List users = [];
  getUsers() async {
    users = await apiService.getUsersData();
    print(users);
    rebuildUi();
  }

  selectUser(id) {
    apiService.userId = id;
  }
}
