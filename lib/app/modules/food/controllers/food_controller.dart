import 'package:get/get.dart';
import 'package:restaurant/app/data/food_provider.dart';

class FoodController extends GetxController {
  FoodProvider postsProvider = Get.find<FoodProvider>();
  var food = [].obs;
  var loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadPosts();
  }

  loadPosts() async {
    loading(true);
    food(await postsProvider.loadFood());
    loading(false);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
