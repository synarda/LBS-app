part of '../pages/home_page.dart';

class HomeTopLeftWidget extends StatelessWidget {
  const HomeTopLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: CustomPaddings.largeHorizontal,
      height: 50,
      decoration: BoxDecoration(
          boxShadow: defaultShadow,
          borderRadius: BorderRadius.circular(20),
          color: AppColors.mainColorFirst),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagesAppLogo,
            height: 40,
            width: 40,
          ),
          CustomSpaces.extraLargeHorizontal,
          Text("GeoWix",
              style: Styles.mediumTextStyle.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
