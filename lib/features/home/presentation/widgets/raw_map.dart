part of '../pages/home_page.dart';

class RawMapWidget extends ConsumerWidget {
  const RawMapWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsyncValue = ref.watch(locationProvider);
    final navigation = ref.watch(navigationProvider);
    final deliveryListProvider = ref.watch(deliverPageProvider);

    return locationAsyncValue.when(
      data: (position) {
        if (position == null) {
          return const Center(child: DeliveryLottieWidget());
        }
        return FlutterMap(
          mapController: navigation.mapController,
          options: MapOptions(
              initialCenter: LatLng(position.latitude, position.longitude)),
          children: [
            TileLayer(
                urlTemplate: mapImagePath, userAgentPackageName: packageName),
            MarkerLayer(markers: [
              Marker(
                  point: LatLng(position.latitude, position.longitude),
                  child: MyPositionWidget()),
              ...deliveryListProvider.destinationList.map((e) => Marker(
                  width: 85,
                  height: 85,
                  point: LatLng(e.location.latitude, e.location.longitude),
                  child: CustomMarkerWidget(model: e))),
            ]),
            PolylineLayer(
              polylines: [
                Polyline(
                  points: navigation.routeCoords,
                  color: AppColors.mainColorFirst,
                  strokeWidth: 4.0,
                ),
              ],
            ),
          ],
        );
      },
      loading: () => const Center(child: DeliveryLottieWidget()),
      error: (error, stack) => const CustomErrorWidget(),
    );
  }
}
