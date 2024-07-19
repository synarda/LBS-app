// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';

class ThreeDButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? fontsize;
  const ThreeDButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.fontsize,
  });

  @override
  _ThreeDButtonState createState() => _ThreeDButtonState();
}

class _ThreeDButtonState extends State<ThreeDButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
        onTapDown: (_) {
          _onTapDown();
        },
        onTapUp: (_) => _onTapUp(),
        onTapCancel: () => _onTapCancel(),
        onTap: widget.onPressed,
        child: Stack(
          children: [
            AnimatedContainer(
              height: widget.height ?? screenSize.height * 0.06,
              width: widget.width ?? screenSize.width / 2,
              duration: const Duration(milliseconds: 150),
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: 2, color: AppColors.mainColorFirst.withOpacity(0.5)),
                gradient: _isPressed
                    ? const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.mainColorFirst,
                          AppColors.mainColorSecond,
                        ],
                      )
                    : const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.mainColorSecond,
                          AppColors.mainColorFirst,
                        ],
                      ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 2,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: Text(widget.text,
                  style: Styles.smallTextStyle.copyWith(
                      color: Colors.white, fontSize: widget.fontsize ?? 12)),
            ),
          ],
        ));
  }

  void _onTapDown() {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp() {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }
}
