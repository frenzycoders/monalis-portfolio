import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:monalisa/models/portfolio_model.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;
  RxBool isError = false.obs;
  String errorMessage = '';

  Rx<PortfolioModel> portfolioModel = PortfolioModel().obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading.value = true;

      var response = await http.get(
        Uri.parse(
            'https://portfolio.booringcodes.in/api/main/get-portfolio/6386f4327ddf0b732078dc46'),
      );
      if (response.statusCode == 200) {
        portfolioModel.value =
            PortfolioModel.fromJson(json.decode(response.body));
      } else {
        isLoading.value = false;
        isError.value = true;
        errorMessage = json.decode(response.body)['message'];
      }
    } finally {
      isLoading.value = false;
    }
  }
}
