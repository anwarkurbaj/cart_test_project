
import 'package:cart_project/core/data/models/product_info.dart';
import 'package:cart_project/core/data/repository/prodect_repositry.dart';
import 'package:cart_project/ui/shared/custom_widgets/custom_toast.dart';
import 'package:cart_project/ui/shared/utils.dart';



import 'package:get/get.dart';



class ALLProductsController extends GetxController {
  RxList<ProductModel> allproductList = <ProductModel>[].obs;
  RxList<ProductModel> allprodectlistsearch = <ProductModel>[].obs;
  
  // RxInt count = 0.obs;

  @override
  void onInit() {
    getAllProdcut();
    allprodectlistsearch.value=allproductList;
    super.onInit();
  }

  void getAllProdcut() {
    productRepository.getAllProduct().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        allproductList.addAll(r);
      });
    });
  }

 void search(String query) {
  List<ProductModel> result=[];
  if (query.isEmpty) {
    result=allproductList;
  } else {
  result=allproductList.where((p0) => p0.title!.toLowerCase().contains(query.toLowerCase())).toList();
  }
  allprodectlistsearch.value=result;
}
  }

