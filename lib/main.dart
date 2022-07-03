import 'package:flutter/material.dart';
import 'package:tokoonline/data/api/api_client.dart';
import 'package:tokoonline/data/controller/poular_product_controller.dart';
import 'package:tokoonline/page/hal_register.dart';

import 'package:tokoonline/page/login_page.dart';
import 'package:get/get.dart';
import 'package:tokoonline/model/models.dart';
import 'package:tokoonline/page/splash_screen.dart';
import 'helper/despendencies.dart' as dep;
import 'main_page/hal_detail.dart';
part 'page/hal_welcome.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    
    );
  }
}