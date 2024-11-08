import 'package:cart_project/core/data/models/common_response.dart';
import 'package:cart_project/core/data/models/product_info.dart';
import 'package:cart_project/core/enums/request_type.dart';
import 'package:cart_project/core/utils/network_util.dart';
import 'package:dartz/dartz.dart';



class ProductRepository {
  Future<Either<String, List<ProductModel>>> getAllProduct({ int? prodId}
      ) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route:  'products'
             
            
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
  Future<Either<String, List<ProductModel>>> getAllProductcatigoryElctronic(
      ) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route:  'products/category/electronics'
             
            
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
   Future<Either<String, List<ProductModel>>> getalljewelary(
      ) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route:  'products/category/jewelery'
             
            
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
  Future<Either<String, List<ProductModel>>> getallmenscllothing(
      ) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route:  "products/category/men's clothing",
             
            
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
  Future<Either<String, List<ProductModel>>> getallwomenscllothing(
      ) async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route:  "products/category/women's clothing",
             
            
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ProductModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ProductModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }


  Future<Either<String, List<String>>> getAllCategory() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'products/categories',
      ).then((value) {
        CommonResponse<List<String>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<String> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(element.toString());
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
