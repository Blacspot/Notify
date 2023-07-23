import 'package:get/get.dart';
import 'package:notify/db/dbhelper.dart';
import 'package:notify/models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }
}
