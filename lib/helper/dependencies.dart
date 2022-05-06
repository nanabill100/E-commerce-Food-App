import 'package:fooderlich_app2/controllers/popular_product_controller.dart';
import 'package:fooderlich_app2/data/api/api__client.dart';
import 'package:fooderlich_app2/data/repository/popular_products_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
