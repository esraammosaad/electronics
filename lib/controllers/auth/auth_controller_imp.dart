import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/auth/auth_controller.dart';
import 'package:my_app/core/class/failure.dart';
import 'package:my_app/core/services/api_service.dart';
import 'package:my_app/data/models/auth_model.dart';

class AuthControllerImp extends AuthController {
  bool isLoading = false;
  String ? errorMessage;


  @override
  Future<Either<Failure, Data>> userLogin(
      {required String email, required String password}) async {
    ApiService loginUser = Get.find();


    Map<String, dynamic>? data;

    try {
      data = await loginUser.login(email: email, password: password);

      Data userData = AuthModel.fromJson(data).data;

      return right(userData);
    } catch (e) {
      errorMessage=data!['message'] ?? data['error'][0]['msg'];
      debugPrint(data['message'] ?? data['error'][0]['msg']);

      return left(ServerFailure(
          errMessage: data['message'] ?? data['error'][0]['msg']));
    }
  }

  @override
  Future<Either<Failure, Data>> userRegister(
      {required String email,
      required String password,
      required String name,
      required String confirmPassword}) async {
    ApiService registerUser = Get.find();


    Map<String, dynamic>? data;

    try {
      data = await registerUser.register(email: email, password: password,confirmPassword: confirmPassword,userName: name);

      Data userData = AuthModel.fromJson(data).data;

      return right(userData);
    } catch (e) {
      errorMessage=data!['message'] ?? data['error'][0]['msg'];
      debugPrint(data['message'] ?? data['error'][0]['msg']);

      return left(ServerFailure(
          errMessage: data['message'] ?? data['error'][0]['msg']));
    }
  }
}
