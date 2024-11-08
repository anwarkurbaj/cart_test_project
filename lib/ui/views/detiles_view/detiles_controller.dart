import 'package:cart_project/core/data/models/product_info.dart';

import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  ProductDetailsController(this.productInfo);
  ProductModel? productInfo;
  RxInt countq = 0.obs;
  @override
  void onInit() {
    changeqty(countq);
    super.onInit();
  }
}

RxInt changeqty(RxInt countq) {
  return countq++;
}
