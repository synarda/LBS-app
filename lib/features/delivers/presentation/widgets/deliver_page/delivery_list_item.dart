part of '../../pages/delivers_page.dart';

class DeliveryListItemWidget extends ConsumerWidget {
  final DeliveryListModel deliverItem;
  const DeliveryListItemWidget({
    super.key,
    required this.deliverItem,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(deliverPageProvider);
    final Size screenSize = MediaQuery.of(context).size;
    final isSelected = pageState.selectItemId == deliverItem.id;
    return GestureDetector(
      onTap: () => pageState.selectItem(deliverItem.id, context),
      child: Container(
        margin: CustomPaddings.smallAll,
        padding: CustomPaddings.largeAll,
        width: screenSize.width,
        alignment: isSelected ? Alignment.center : Alignment.center,
        decoration: BoxDecoration(
            boxShadow: defaultShadow,
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColorFirst.withOpacity(0.8)),
        child: Column(
          mainAxisAlignment:
              isSelected ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            ItemTopWidgets(model: deliverItem),
            CustomSpaces.mediumVertical,
            ItemInfoWidgets(
                address: deliverItem.address,
                phone: deliverItem.phone,
                isSelected: isSelected),
            DeliveryProductsListWidget(
                list: deliverItem.shoppingChartList, isSelected: isSelected)
          ],
        ),
      ),
    );
  }
}
