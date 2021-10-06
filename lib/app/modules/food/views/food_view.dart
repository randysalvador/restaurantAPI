import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/app/modules/food/widgets/recipe_card.dart';
import '../controllers/food_controller.dart';

class FoodView extends GetView<FoodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavBar(),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Text(
                'Tipos de Comida',
                style: GoogleFonts.poppins(),
              ),
              Icon(Icons.restaurant_menu),
            ],
          ),
        ),
        body: Obx(() {
          if (controller.loading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (controller.food.isEmpty) {
            return Center(
              child: Text("No posts found!"),
            );
          }
          return ListView.builder(
            itemCount: controller.food.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return RecipeCard(
                name: controller.food[index]["name"],
                thumbnailUrl:
                    'https://source.unsplash.com/random/?${controller.food[index]["name"]}',
              );
            },
          );
        }));
  }
}
