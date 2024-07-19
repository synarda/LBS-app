import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageStateProvider extends ChangeNotifier {
  final PageController pageController = PageController(initialPage: 1);
  int pageIndex = 1;

  void changePage(int index) {
    pageIndex = index;
    notifyListeners();
  }

  void pageAnimate(int toIndex) {
    pageController.animateToPage(
      toIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

final pageProvider = ChangeNotifierProvider((ref) => PageStateProvider());
