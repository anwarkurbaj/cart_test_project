import 'package:cart_project/core/services/connectivity_service.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';


class MyAppController extends GetxController {
  @override
  void onInit() async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    connectivityService.connectivityStatusController
        .add(connectivityService.getStauts(result));

    connectivityService.connectivityStatusController.stream.listen((event) {
      isOnline = event == ConnectivityStatus.ONLINE;
    });

    super.onInit();
  }
}
