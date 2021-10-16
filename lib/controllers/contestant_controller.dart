import 'package:get/get.dart';
import 'package:manasa/models/contestant_response.dart';
import 'package:manasa/services/contestant_services.dart';

class ContestantListController extends GetxController{
  var contestantList = List<ContestantList>().obs;
  var isLoading = false.obs;

  @override
  void onInit(){
    fetchEvents();
    super.onInit();
  }
  void fetchEvents() async {
    isLoading.value = true;
    var contestantLists = await ContestantService.fetchEvents();
    if (contestantLists != null){
      isLoading.value = false;
      contestantList.value = contestantLists;
    }
  }
}