import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phones_flutter_shop/controllers/shop_view_controller.dart';

class ShopView extends StatelessWidget {
  ShopViewController controller = Get.put(ShopViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Telók"),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemCount: controller.phones.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              controller.phones[i].imageURL,
                              width: 250,
                            ),
                          ),
                          Text(controller.phones[i].type),
                          Text("Ára: ${controller.phones[i].price}"),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
