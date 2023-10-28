import 'package:get/get.dart';
import 'package:my_app/core/class/failure.dart';
import 'package:my_app/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthController extends GetxController{

 Future<Either<Failure,Data>> userLogin({required String email , required String password});
 Future<Either<Failure,Data>> userRegister({required String email , required String password,required String name,required String confirmPassword});



}