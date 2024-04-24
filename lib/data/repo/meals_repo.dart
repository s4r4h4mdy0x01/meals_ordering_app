import 'package:meals_ordering_app/data/api/meals_api.dart';
import 'package:meals_ordering_app/data/models/meals_models.dart';

class MealsRepo {
  final MealsApi mealsApi;

  MealsRepo({required this.mealsApi});
  Future<List<MealsModel>> getAllMeals() async {
    List<MealsModel> meals = await mealsApi.getAllMeals();
    return meals
        .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
