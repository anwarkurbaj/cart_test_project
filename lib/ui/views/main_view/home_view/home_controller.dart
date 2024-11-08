import 'package:cart_project/core/data/models/product_info.dart';
import 'package:cart_project/ui/shared/custom_widgets/custom_toast.dart';
import 'package:cart_project/ui/shared/utils.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isCheckedall = true.obs;
  RxBool isCheckedelctronics = false.obs;
  RxBool isCheckedjew = false.obs;
  RxBool isCheckedmenscllothes = false.obs;
  RxBool isCheckedwomenscllothes = false.obs;
  RxBool isloding = false.obs;
  RxList<ProductModel> allproductList = <ProductModel>[].obs;
  RxList<String> allcatigorylist = <String>[].obs;

  @override
  void onInit() {
    getAllProductcatigoryElctronic();
    changeValueelctronic();
    getAllProdect();
    changeValue();
  
    
    

    super.onInit();
  }

  void changeValue() {
    isCheckedall.value = true;
    isCheckedelctronics.value = false;
    isCheckedjew.value = false;
    isCheckedmenscllothes.value = false;
    isCheckedwomenscllothes.value = false;
  }

  void changeValuejew() {
    isloding.value=true;
    isCheckedall.value = false;
    isCheckedelctronics.value = false;
    isCheckedjew = true.obs;
    isCheckedmenscllothes.value = false;
    isCheckedwomenscllothes.value = false;
  }

  void changeValueelctronic() {
    isloding.value=true;
    isCheckedall.value = false;
    isCheckedelctronics.value = true;
    isCheckedjew.value = false;
    isCheckedmenscllothes.value = false;
    isCheckedwomenscllothes.value = false;
  }

  void changeValuemenscllothies() {
    isloding.value=true;
    isCheckedall.value = false;
    isCheckedelctronics.value = false;
    isCheckedjew.value = false;
    isCheckedmenscllothes.value = true;
    isCheckedwomenscllothes.value = false;
  }

  void changeValuewomenscllithes() {
    isloding.value=true;
    isCheckedall.value = false;
    isCheckedelctronics.value = false;
    isCheckedjew.value = false;
    isCheckedmenscllothes.value = false;
    isCheckedwomenscllothes.value = true;
  }

  void getAllProdect() {
    productRepository.getAllProduct().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.clear();
        allproductList.addAll(r);
      });
    });
  }

  void getAllProductcatigoryElctronic() {
    productRepository.getAllProductcatigoryElctronic().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.clear();
        allproductList.addAll(r);
      });
    });
  }

  void getalljewelary() {
    productRepository.getalljewelary().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.clear();
        allproductList.addAll(r);
      });
    });
  }

  void getallwomenscllothing() {
    productRepository.getallwomenscllothing().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.clear();
        allproductList.addAll(r);
      });
    });
  }

  void getallmenscllothing() {
    productRepository.getallmenscllothing().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.clear();
        allproductList.addAll(r);
      });
    });
  }

  void getallcatigory() {
    productRepository.getAllCategory().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        // allproductList.clear();
        allcatigorylist.addAll(r);
      });
    });
  }
}
