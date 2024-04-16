import 'package:get/get.dart';
import 'package:connect_gym/presentation/login_page/model/user_model.dart';

class UserController extends GetxController{

  var userModel = UserModel(email: '', password: '').obs;
  var passObscure = true.obs;
  var showBorderRemember = false.obs;
  var showBorderForgot = false.obs;
  void setEmail(String value) => userModel.value.email = value;
  void setPassword(String value) => userModel.value.password = value;
  void toggleObscure() => passObscure.value = !passObscure.value;
  void showborderRemember() => showBorderRemember.value = !showBorderRemember.value;
  void showborderForgot() => showBorderForgot.value = !showBorderForgot.value;
  void clear() {
    userModel.value.email = '';
    userModel.value.password = '';
  }
}


