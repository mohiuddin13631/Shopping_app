import 'package:get/get.dart';

class SignUpController extends GetxController{
  var isProfilePathSet = false.obs;
  var profilePath = "".obs;

  void setProfileImagePath(String path){
    profilePath.value = path;
    isProfilePathSet.value = true;
  }
}