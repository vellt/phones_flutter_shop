import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:phones_flutter_shop/models/phone.dart';

class ShopViewController extends GetxController {
  List<Phone> phones = [];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    var response = await http.get(
      Uri.parse("http://localhost:3000/phones"),
    );
    print(response.body);
    List<dynamic> jsonResponse = json.decode(response.body);
    phones = jsonResponse.map((data) => Phone.fromJson(data)).toList();
    update();
  }
}
