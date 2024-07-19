part of '../../pages/deliver_detail_page.dart';

class DetailPageFloatButtonsWidgets extends ConsumerWidget {
  final DeliveryListModel delivery;
  const DetailPageFloatButtonsWidgets({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryProvider = ref.watch(deliverPageProvider);
    final navigation = ref.watch(navigationProvider);
    final isAdded = deliveryProvider.destinationList.contains(delivery);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ThreeDButtonWithOutGradient(
              text: "Marketi Ara",
              onPressed: () => launchUrlString("tel://${delivery.phone}"),
              height: 60),
          CustomSpaces.largeHorizontal,
          ThreeDButtonWithOutGradient(
            color: isAdded ? Colors.red : Colors.green,
            text: isAdded ? "Rotadan Çıkar" : "Rotaya Ekle",
            onPressed: () {
              deliveryProvider.deliveryAddOrRemove(delivery, context);
              navigation.stopStreamLocation();
            },
            height: 60,
          ),
        ],
      ),
    );
  }
}
