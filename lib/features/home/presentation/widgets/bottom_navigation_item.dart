part of '../pages/home_page.dart';

class BottomNavigationItemWidget extends ConsumerWidget {
  final int toIndex;
  final IconData icon;
  final VoidCallback? func;
  const BottomNavigationItemWidget({
    super.key,
    required this.toIndex,
    required this.icon,
    this.func,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch<PageStateProvider>(pageProvider);
    final isCurrent = pageState.pageIndex == toIndex;
    return GestureDetector(
      onTap: () async {
        pageState.pageAnimate(toIndex);
        func?.call();
      },
      child: Container(
        padding: EdgeInsets.all(isCurrent ? 0 : 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isCurrent ? Colors.white : Colors.transparent),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            size: isCurrent ? 40 : 30,
            color: !isCurrent ? Colors.white : AppColors.mainColorFirst,
          ),
        ),
      ),
    );
  }
}
