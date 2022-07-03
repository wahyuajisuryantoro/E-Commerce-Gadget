import 'package:get/get.dart';
import 'package:tokoonline/data/controller/poular_product_controller.dart';
import 'package:tokoonline/utility/app_constant.dart';
import '../data/api/api_client.dart';
import '../data/repository/popular_product_repo.dart';

Future<void> init()async{
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}