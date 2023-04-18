import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:dps_school/utils/extension_helper.dart';

class AttendanceController extends GetxController{

  RxString currentTime = "".obs;
  RxString currentDate = "".obs;

  @override
  void onInit() {
    super.onInit();

    var currentDt = DateTime.now();
    var formatTime = DateFormat("hh:mm:ss a").format(currentDt);
    currentTime.value = formatTime;
    var formatDate = DateFormat("DDD, dd MMMM yyy").format(currentDt);
    // var formatDate = DateFormat.yMMMMd().format(currentDt);
    currentDate.value = currentDt.convertDateToRequiredFormat;
  }
}