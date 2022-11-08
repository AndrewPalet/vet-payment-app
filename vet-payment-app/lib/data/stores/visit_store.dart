import 'package:app/app/app_router.gr.dart';
import 'package:app/ui/locator.dart';
import 'package:mobx/mobx.dart';
import 'package:app/data/services/user_data_service.dart';
import 'package:app/models/visit.dart';

part 'visit_store.g.dart';

class VisitStore = VisitController with _$VisitStore;

abstract class VisitController with Store {
  @observable
  bool isAuthenticated = false;

  @observable
  List<Visit> visits = [];

  @observable
  int chosenVisitCardIndex = 0;

  @observable
  int chosenVisitCardVisitId = 0;

  @action
  Future<void> login(String email) async {
    try {
      visits = await UserDataService().getUser(email);
      if (visits.isNotEmpty) {
        isAuthenticated = true;

        locator.get<AppRouter>().navigateNamed('/welcome-page');
      }
    } on Exception {
      rethrow;
    }
  }

  @action
  Future<void> payVisit() async {
    try {
      visits = await UserDataService().payVisit(chosenVisitCardVisitId);
    } on Exception {
      rethrow;
    }
  }

  @action
  void logout() {
    isAuthenticated = false;
    locator.get<AppRouter>().navigateNamed('/');
  }

  @action
  void updateValues(int index) {
    chosenVisitCardIndex = index;
    chosenVisitCardVisitId = visits[index].id;
  }
}
