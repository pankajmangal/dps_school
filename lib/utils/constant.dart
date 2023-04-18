import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dps_school/utils/color_helper.dart';
import 'package:dps_school/utils/gap_helper.dart';
import 'package:dps_school/utils/image_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

//Show custom dialog with error title or description....
Future<void> showMyDialog({context, title, msg, actions}) async {
  return Get.dialog(AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(msg),
          ],
        ),
      )),
  barrierDismissible: false);
}

void showImagePicker(BuildContext context) {
  Get.bottomSheet(
      Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36.0),
                topRight: Radius.circular(36.0)
            )
        ),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const VerticalGap(gap: 8.0),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                        color: cardThemeColor,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                ),
                const VerticalGap(gap: 44),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Image.asset(
                                gallImg,
                                width: 64,
                                height: 64,
                                fit: BoxFit.fill,
                              ),
                              const VerticalGap(gap: 12.0),
                              const Text(
                                "Gallery",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17,
                                    color: Colors.black,
                                fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          onTap: () async{
                            // await ImagePickerUtils().getImageFromGallery();
                            /*_profileController.imageFile = await ImagePickerUtils().getImageFromGallery();
                          _profileController.imagePath.value = _profileController.imageFile?.path??"";
                          _profileController.uploadUserOtherPhotos();
                          if (kDebugMode) {
                            print("path => ${_profileController.imageFile?.path}");
                          }*/
                            Get.back();
                          },
                        )),
                    Expanded(
                        child: InkWell(
                          child: Column(
                            children: [
                              Image.asset(
                                camImg,
                                width: 64,
                                height: 64,
                                fit: BoxFit.fill,
                              ),
                              const VerticalGap(gap: 12.0),
                              const Text(
                                "Camera",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          onTap: () async{
                            // await ImagePickerUtils().getImageFromCamera();
                            /*  _profileController.imageFile = await ImagePickerUtils().getImageFromCamera();
                          _profileController.imagePath.value = _profileController.imageFile?.path??"";
                          _profileController.uploadUserOtherPhotos();
                          if (kDebugMode) {
                            print("path => ${_profileController.imageFile?.path}");
                          }*/
                            Get.back();
                          },
                        ))
                  ],
                )
              ],
            )),
      ),
      isScrollControlled: true,
      useRootNavigator: true,
      isDismissible: true,
      enableDrag: true);
}

Widget getImageFromNetwork(String productImage, double width, double height){
  return Image.network(productImage,
    width: width, height: height, fit: BoxFit.cover,
    errorBuilder: (BuildContext context, Object exception,
        StackTrace? stackTrace) {
      return Image.asset(errorPlaceholderLogo, width: 64, height: 64,);
    },
    loadingBuilder: (BuildContext context, Widget child,
        ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) return child;
      return Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.2),
          highlightColor: Colors.grey.withOpacity(0.6),
          child: Image.asset(errorPlaceholderLogo,
            width: 64, height: 64,));
    },
  );
}

//Showing custom loader as per his/her wish....
Future<void> showLoader() async {
  return Get.dialog(const SizedBox(
    width: 64,
      height: 64,
      child: Center(child: CircularProgressIndicator(color: splashColor))),
      barrierDismissible: false);
}

//Check internet connectivity
Future<bool> check() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

//show custom bottom snackbar....
showBottomSnackBar(String title, String desc) => Get.snackbar(title, desc, snackPosition: SnackPosition.BOTTOM);

enum FieldName{NAME, EMAIL, PHONE, CITY, DISTRICT, LOCATION, PASSWORD}

const Map<FieldName, String> fieldNameValue = {
  FieldName.NAME: "fullName",
  FieldName.EMAIL: "email",
  FieldName.PHONE: "phone",
  FieldName.CITY: "city",
  FieldName.DISTRICT: "district",
  FieldName.LOCATION: "location",
  FieldName.PASSWORD: "password",
};

enum UserType { USER, PROMOTER }

const Map<UserType, int> UserTypeValue = {
  UserType.USER: 0,
  UserType.PROMOTER: 1,
};

enum LoginType { Email, Google, Apple }

const Map<LoginType, String> LoginTypeValue = {
  LoginType.Email: "email",
  LoginType.Google: "google",
  LoginType.Apple: "apple",
};