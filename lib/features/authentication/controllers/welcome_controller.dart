import 'package:get/get.dart';
import 'package:login_signup/utils/routes/route_config.dart';

class WelcomeController extends GetxController{
  
onLoginPress(){
  Get.toNamed(Routes.login);
}

onSignupPress(){
  Get.toNamed(Routes.signup);
}

}