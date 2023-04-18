import 'package:dps_school/routes/route_constants.dart';
import 'package:dps_school/ui/auth/screens/attendance_page.dart';
import 'package:dps_school/ui/auth/screens/passcode_page.dart';
import 'package:dps_school/ui/auth/screens/scan_qr_code_page.dart';
import 'package:dps_school/ui/splash/screens/splash_page.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getAppRoute(){
  return [
    GetPage(
      name: '/',
      page: () => SplashPage(),
    ),
    GetPage(
        name: attendanceScreen,
        page: () => AttendancePage(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: passcodeScreen,
        page: () => PasscodePage(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: scanQRScreen,
        page: () => const ScanQRCodePage(),
        transition: Transition.cupertino
    )
  ];
}