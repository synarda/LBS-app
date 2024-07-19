part of '../pages/home_page.dart';

class CustomBottomNavigationWidget extends ConsumerWidget {
  final PageController pageController;

  const CustomBottomNavigationWidget({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final navigation = ref.watch(navigationProvider);

    return Container(
      width: screenSize.width,
      height: 60,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.mainColorFirst,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavigationItemWidget(
              toIndex: 0,
              icon: Icons.list,
              func: () => navigation.stopStreamLocation()),
          BottomNavigationItemWidget(toIndex: 1, icon: Icons.map),
          BottomNavigationItemWidget(toIndex: 2, icon: Icons.people),
        ],
      ),
    );
  }
}
