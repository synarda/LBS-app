import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wix_navigation/core/dummy_datas.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';

class DeliverPageStateProvider extends ChangeNotifier {
  List<DeliveryListModel> dummyDeliverList = List.from(deliverList);
  List<DeliveryListModel> destinationList = List.from(deliverList);
  int? selectItemId;

  //Item Open or Close
  void selectItem(int id, BuildContext context) {
    if (selectItemId == id) {
      selectItemId = -1;
    } else {
      selectItemId = id;
    }
    notifyListeners();
  }

  //Delivery Add or Remove from route
  void deliveryAddOrRemove(DeliveryListModel delivery, BuildContext context) {
    if (destinationList.contains(delivery)) {
      destinationList.remove(delivery);
    } else {
      destinationList.add(delivery);
    }
    notifyListeners();
  }

  //Reorder Route
  void reorderList(int oldIndex, int newIndex, BuildContext context,
      List<DeliveryListModel> list1, List<DeliveryListModel> list2) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = list1.removeAt(oldIndex);
    list1.insert(newIndex, item);
    //second List Reorder
    final item2 = list2.removeAt(oldIndex);
    list2.insert(newIndex, item2);
    notifyListeners();
  }
}

final deliverPageProvider =
    ChangeNotifierProvider((ref) => DeliverPageStateProvider());
