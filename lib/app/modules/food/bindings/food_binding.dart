import 'package:get/get.dart';
import 'package:restaurant/app/data/food_provider.dart';

import '../controllers/food_controller.dart';

class FoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodController>(
      () => FoodController(),
    );
    Get.lazyPut<FoodProvider>(
      () => FoodProvider(),
    );
  }
}
