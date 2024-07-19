part of '../pages/home_page.dart';

class MapWidget extends ConsumerWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);
    final locationAsyncValue = ref.watch(locationProvider);

    return Stack(
      children: [
        const RawMapWidget(),
        DraggableWidget(
          bottomMargin: 80,
          topMargin: 80,
          verticalSpace: 30,
          intialVisibility: true,
          horizontalSpace: 20,
          shadowBorderRadius: 50,
          initialPosition: AnchoringPosition.bottomRight,
          child: GestureDetector(
            onTap: () => stationsBottomSheet(context),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: AppColors.mainColorFirst,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.map,
                  size: 32, color: AppColors.primaryColor),
            ),
          ),
        ),
        DraggableWidget(
          bottomMargin: 240,
          topMargin: 240,
          verticalSpace: 30,
          intialVisibility: true,
          horizontalSpace: 20,
          shadowBorderRadius: 50,
          initialPosition: AnchoringPosition.bottomRight,
          child: GestureDetector(
            onTap: () => navigation.findMyPosition(locationAsyncValue.value),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: AppColors.mainColorFirst,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.accessibility_new_rounded,
                  size: 32, color: AppColors.primaryColor),
            ),
          ),
        ),
        DraggableWidget(
          bottomMargin: 160,
          topMargin: 160,
          verticalSpace: 30,
          intialVisibility: true,
          horizontalSpace: 20,
          shadowBorderRadius: 50,
          initialPosition: AnchoringPosition.bottomRight,
          child: GestureDetector(
            onTap: () => navigation.moveRouteCenter(),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: AppColors.mainColorFirst,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.center_focus_strong_outlined,
                  size: 32, color: AppColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
