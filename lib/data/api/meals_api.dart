import 'package:dio/dio.dart';
import 'package:meals_ordering_app/core/cont.dart';
import 'package:meals_ordering_app/data/models/meals_models.dart';

class MealsApi {
  late Dio dio;
  MealsApi() {
    BaseOptions options = BaseOptions(
      baseUrl: ConstApiString.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }
  Future<List<MealsModel>> getAllMeals() async {
    try {
      Response response = await dio.get(
        'Meals/',
      );
      print(response.data);
      return response.data;
    } catch (e) {
      print(e.toString());
      return []; 
    }
  }
}
