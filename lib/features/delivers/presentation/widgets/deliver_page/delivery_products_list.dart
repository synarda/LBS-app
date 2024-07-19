part of '../../pages/delivers_page.dart';

class DeliveryProductsListWidget extends StatelessWidget {
  final List<DeliveryDetailModel> list;
  final bool isSelected;
  const DeliveryProductsListWidget({
    super.key,
    required this.list,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: isSelected ? 1 : 0,
      child: Visibility(
        visible: isSelected ? true : false,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return DeliveryProductsListItemWidget(model: item);
            }),
      ),
    );
  }
}
