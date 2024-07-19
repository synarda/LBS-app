// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';

class ThreeDButtonWithOutGradient extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? fontsize;
  final Color? color;
  final bool? isTouchable;
  const ThreeDButtonWithOutGradient({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.fontsize,
    this.color,
    this.isTouchable = true,
  });

  @override
  _ThreeDButtonWithOutGradientState createState() =>
      _ThreeDButtonWithOutGradientState();
}

class _ThreeDButtonWithOutGradientState
    extends State<ThreeDButtonWithOutGradient> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: widget.isTouchable ?? true ? widget.onPressed : null,
        child: Stack(
          children: [
            AnimatedContainer(
              height: widget.height ?? screenSize.height * 0.06,
              width: widget.width,
              duration: const Duration(milliseconds: 150),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2, color: AppColors.mainColorFirst.withOpacity(0.5)),
                color: widget.color ?? AppColors.mainColorFirst,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 2,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: Text(widget.text,
                  textAlign: TextAlign.center,
                  style: Styles.smallTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: widget.fontsize ?? 11,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ));
  }
}
