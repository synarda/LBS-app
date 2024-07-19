part of '../../pages/delivers_page.dart';

class ItemTopWidgets extends ConsumerWidget {
  final DeliveryListModel model;
  const ItemTopWidgets({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final deliveryProvider = ref.watch(deliverPageProvider);

    final isAdded = deliveryProvider.destinationList.contains(model);
    return Row(
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(model.imagePath,
                    fit: BoxFit.cover, height: 50, width: 50)),
            CustomSpaces.largeHorizontal,
            SizedBox(
              width: 100,
              child: Text(
                model.name,
                overflow: TextOverflow.ellipsis,
                style: Styles.bigTextStyle
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const Spacer(),
        ThreeDButtonWithOutGradient(
            color: isAdded ? Colors.red : Colors.green,
            text: isAdded ? "Rotadan Çıkar" : "Rotaya Ekle",
            onPressed: () {
              deliveryProvider.deliveryAddOrRemove(model, context);
            },
            height: 40,
            fontsize: 8,
            width: screenSize.width / 4.5),
        ThreeDButton(
            height: 40,
            width: screenSize.width / 5,
            fontsize: 8,
            onPressed: () =>
                context.router.push(DeliverDetailRoute(delivery: model)),
            text: "Detay"),
      ],
    );
  }
}
