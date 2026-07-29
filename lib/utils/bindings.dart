import 'package:get/get.dart';

import '../repo/database.dart';
import '../screens/calculator_screen/calculator_controller.dart';
import '../screens/dashboard_screen/dashboard_controller.dart';
import '../screens/history_screen/history_controller.dart';
import '../screens/settings_screen/settings_controller.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(SettingsController(Get.find<DatabaseRepository>()));
    Get.put(HistoryController(Get.find<DatabaseRepository>()));
    Get.put(CalculatorController());
  }
}
