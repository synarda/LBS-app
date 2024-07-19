import 'package:flutter/material.dart';
import 'package:wix_navigation/core/utils/paddings.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.transparent),
        padding: CustomPaddings.smallAll,
        child: const Icon(Icons.error, color: Colors.red, size: 12),
      ),
    );
  }
}
