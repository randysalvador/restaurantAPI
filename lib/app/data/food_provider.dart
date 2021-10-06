import 'package:get/get.dart';

class FoodProvider extends GetConnect {
  @override
  void onInit() {
    // httpClient.baseUrl = 'https://tellurium.behuns.com/api/food_types/';
  }

  Future loadFood() async {
    var response = await get("https://tellurium.behuns.com/api/food_types/");
    print(response.body);
    return response.body;
  }
}
