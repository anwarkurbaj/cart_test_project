import 'dart:convert';

import 'package:cart_project/core/data/models/cart_model.dart';
import 'package:cart_project/core/data/models/token_info.dart';
import 'package:cart_project/core/enums/data_type.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPrefrenceRepository {
  SharedPreferences pref = Get.find<SharedPreferences>();

  //!--- Keys
  String PREF_FIRST_LUNCH = 'first_lunch';
  String PREF_IS_LOGGED = 'is_logged';
  String PREF_LOGGIN_INFO = 'loggin_info';
  String PREF_TOKEN_INFO = 'token_info';
  String PREF_APP_LANG = 'app_language';
  String PREF_CART_LIST = 'cart_list';

  //* --- ----

  void setLoggedIn(bool value) {
    setPrefrnce(type: DataType.BOOL, key: PREF_IS_LOGGED, value: value);
  }

  bool getLoggedIn() {
    if (pref.containsKey(PREF_IS_LOGGED))
      return getPrefrnce(PREF_IS_LOGGED);
    else
      return false;
  }

  void setFirstLunch(bool value) {
    setPrefrnce(
      type: DataType.BOOL,
      key: PREF_FIRST_LUNCH,
      value: value,
    );
  }

  bool getFirstLunch() {
    if (pref.containsKey(PREF_FIRST_LUNCH))
      return getPrefrnce(PREF_FIRST_LUNCH);
    else
      return true;
  }

  void setLogginInfo(List<String> value) {
    setPrefrnce(type: DataType.LISTSTRING, key: PREF_LOGGIN_INFO, value: value);
  }

  List<String> getLogginInfo() {
    if (pref.containsKey(PREF_LOGGIN_INFO)) {
      List<Object?> list = getPrefrnce(PREF_LOGGIN_INFO);
      List<String> result = [];

      list.forEach((element) {
        result.add(element.toString());
      });

      return result;
    } else
      return [];
  }

  TokenInfo getTokenInfo() {
    return TokenInfo.fromJson(jsonDecode(getPrefrnce(PREF_TOKEN_INFO)));

    //!--- get String from shared
    ////* getPrefrnce(PREF_TOKEN_INFO)
    //!--- String to json using jsonDecode
    ////*jsonDecode
    //!-- create token info mode from josn
    ////*TokenInfo.fromJson
  }

  void setTokenInfo(TokenInfo info) {
    setPrefrnce(
        type: DataType.STRING,
        key: PREF_TOKEN_INFO,
        value: jsonEncode(info.toJson()));

    // //!--- info to json
    //* Map<String, dynamic> infoMap = info.toJson();
    // //!-- json to string using jsonEncode
    //* String strInfo = jsonEncode(infoMap);
    // //!-- Save string in shared
    //* setPrefrnce(type: DataType.STRING, key: PREF_TOKEN_INFO, value: strInfo);
  }

  void setAppLnaguage(String code) {
    setPrefrnce(type: DataType.STRING, key: PREF_APP_LANG, value: code);
  }

  String getAppLanguge() {
    if (pref.containsKey(PREF_APP_LANG)) {
      return getPrefrnce(PREF_APP_LANG);
    } else {
      return 'en';
    }
  }

  void setCartList(List<CartModel> list) {
    setPrefrnce(
        type: DataType.STRING,
        key: PREF_CART_LIST,
        value: CartModel.encode(list));
  }

  List<CartModel> getCartList() {
    if (pref.containsKey(PREF_CART_LIST)) {
      return CartModel.decode(getPrefrnce(PREF_CART_LIST));
    } else {
      return [];
    }
  }

  setPrefrnce({
    required DataType type,
    required String key,
    required dynamic value,
  }) async {
    switch (type) {
      case DataType.STRING:
        await pref.setString(key, value);
        break;
      case DataType.INT:
        await pref.setInt(key, value);
        break;
      case DataType.BOOL:
        await pref.setBool(key, value);
        break;
      case DataType.DOUBLE:
        await pref.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await pref.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrnce(String key) {
    return pref.get(key);
  }
}
