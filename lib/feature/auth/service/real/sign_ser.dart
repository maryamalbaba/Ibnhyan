import 'package:dio/dio.dart';
import 'package:ibnhyanfinal/core/Error/failure.dart';
import 'package:ibnhyanfinal/core/Models/Error.dart';
import 'package:ibnhyanfinal/core/Models/Result.dart';
import 'package:ibnhyanfinal/core/Models/Success.dart';
import 'package:ibnhyanfinal/core/api/api_consumer.dart';
import 'package:ibnhyanfinal/core/api/dio_consumer.dart';
import 'package:ibnhyanfinal/core/config/sharedpref.dart';
import 'package:ibnhyanfinal/core/resourses/api_manager.dart';
import 'package:ibnhyanfinal/feature/auth/model/response_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/Error/noInternet.dart';

class Auth {
  DioConsumer api = DioConsumer(dio: Dio());
  Future<Result> sign(user_request) async {
    try {
      Response response =
          await api.post(user_sign_url, data: user_request.toMap());
      if (response.statusCode == 200) {
        print(response.data);

        user_response res =
            user_response.fromMap(response.data["data"]["user"]);
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString("token", response.data["data"]["token"]);
        return res;
      }
      if (response.statusCode == 401) {
        wronginputFailure res_wrong_input =
            await wronginputFailure.fromMap(response.data["message"]);

        return res_wrong_input;
      } else {
        return offlineException(errors: "no internet");
      }
    } catch (e) {
      ErrorModel exception_res = ErrorModel(errors: "some thing went wrong");
      return exception_res;
    }
  }
}
