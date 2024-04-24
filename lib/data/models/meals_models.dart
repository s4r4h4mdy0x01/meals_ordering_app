class MealsModel {
  late int id;
  late String name;
  late String description;
  late int price;
  late int categoryId;
  MealsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    categoryId = json['categoryId'];
  }
}



