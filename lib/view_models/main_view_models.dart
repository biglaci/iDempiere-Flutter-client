//MARK: Hit API Using GetX

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/app_service.dart';
import '../../utilities/string_constant.dart';
import '../models/order_model.dart';
import '../screens/auth/login_page.dart';
import '../../models/product_type.dart';
import '../../models/menu_model.dart';
import '../utilities/local_storage.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  //MARK: grid
  ViewType viewType = ViewType.grid;
  int crossAxisCount = 2;
  double aspectRatio = 0.9;
  double spacing = 16;

  final resultFoods = <DataSubModel>[].obs;
  final LocalStorage _localStorage = LocalStorage();
  var orders = <Order>[].obs;

  //MARK: Total Item
  int totalOrders = 0;

  //MARK: Save logout
  Future<void> navigationLogout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(Texts.isLoginKey());

    // navigation back to root login
    if (!context.mounted) return;
    Get.offAll(() => const loginScreen());
  }

  // MARK: Init
  @override
  void onInit() {
    super.onInit();
    handleItemsList();
    fetchOrders();
  }

  /*
    MARK: Get List Items API
  */
  void handleItemsList() async {
    AppService().menuList(
      (items, status) async {
        if (status) {
          debugPrint('${items?.data?[1].imageUrl}success');

          if (items != null) {
            for (var element in items.data!) {
              resultFoods.add(element);
            }
          }
        } else {
          debugPrint('failed');
        }
      },
    );
  }

  /*
    MARK: Load local data share preference
  */

  void fetchOrders() async {
    orders.value = await _localStorage.getOrders();
  }

  /*
    MARK: detele local data share preference
  */

  void deleteOrder(int index) async {
    // orders.value = await _localStorage.deleteOrderAtIndex(index)
  }
}
