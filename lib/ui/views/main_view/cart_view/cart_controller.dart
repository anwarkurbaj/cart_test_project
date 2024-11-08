import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/check_out_view/check_out_view.dart';

import 'package:get/get.dart';

class CartController extends GetxController {
  void placedOrder() {
    Get.off(CheckoutView());
  }

  void emptyCart() {
    cartService.clearCart();
    
  }
}
