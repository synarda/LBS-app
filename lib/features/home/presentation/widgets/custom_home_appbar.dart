part of '../pages/home_page.dart';

class CustomHomeAppbarWidget extends ConsumerWidget {
  const CustomHomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(locationProvider);
    final page = ref.watch(pageProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Row(
        children: [
          const Flexible(flex: 2, child: HomeTopLeftWidget()),
          const Spacer(),
          page.pageIndex == 0
              ? const SizedBox()
              : locationAsyncValue.when(
                  data: (position) {
                    if (position == null) {
                      return const CustomErrorWidget();
                    }
                    return StartRouteButtonWidget(position: position);
                  },
                  loading: () => const SmallWaitingWidget(),
                  error: (e, stack) => const CustomErrorWidget(),
                ),
        ],
      ),
    );
  }
}
