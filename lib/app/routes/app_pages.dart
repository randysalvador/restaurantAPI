import 'package:get/get.dart';
import 'package:restaurant/app/modules/food/bindings/food_binding.dart';
import 'package:restaurant/app/modules/food/views/food_view.dart';

import 'package:restaurant/app/modules/home/bindings/home_binding.dart';
import 'package:restaurant/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FOOD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FOOD,
      page: () => FoodView(),
      binding: FoodBinding(),
    ),
  ];
}
