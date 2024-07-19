part of '../pages/home_page.dart';

class StartRouteButtonWidget extends ConsumerWidget {
  final Position position;
  const StartRouteButtonWidget({
    super.key,
    required this.position,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);
    final deliveryProvider = ref.watch(deliverPageProvider);
    return navigation.calculateIsStart
        ? const OnTheRoadWidget()
        : ThreeDButtonWithOutGradient(
            width: 100,
            color: Colors.green,
            text: "Başlat",
            onPressed: () {
              navigation.getRoute(
                deliveryProvider.destinationList,
                LatLng(position.latitude, position.longitude),
              );
              navigation.startStreamLocation(position);
              navigation.updateNotification(
                  position, deliveryProvider.destinationList.first.location);
            });
  }
}
