import 'package:bot_toast/bot_toast.dart';
import 'package:cart_project/app/my_app_controller.dart';
import 'package:cart_project/core/data/repository/shared_prefrence_repository.dart';
import 'package:cart_project/core/services/connectivity_service.dart';
import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/login_view/login_view.dart';
import 'package:cart_project/ui/views/main_view/allprodect_view/allprodect_view.dart';
import 'package:cart_project/ui/views/main_view/cart_view/cart_view.dart';
import 'package:cart_project/ui/views/main_view/home_view/home_view.dart';
import 'package:cart_project/ui/views/main_view/main_view.dart';

import 'package:cart_project/ui/views/splash_view/splash_view.dart';
import 'package:cart_project/ui/views/wxample_view/example_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyAppController controller = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (BuildContext context) =>
          connectivityService.connectivityStatusController.stream,
      initialData: ConnectivityStatus.ONLINE,
      child: GetMaterialApp(
        locale: getLocal(),
        translations: AppTranslation(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(), //1. call BotToastInit
        navigatorObservers: [BotToastNavigatorObserver()],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginView()
      ),
    );
  }
}

Locale getLocal() {
  String langCode = SharedPrefrenceRepository().getAppLanguge();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('fr', 'FR');
}



//Get.toNamed('/details');