part of '../../pages/deliver_detail_page.dart';

class DetailPageDeliveryListWidget extends StatelessWidget {
  final DeliveryListModel delivery;
  const DetailPageDeliveryListWidget({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: delivery.shoppingChartList.length,
        itemBuilder: (context, index) {
          final item = delivery.shoppingChartList[index];
          return ListDetailWidget(model: item);
        });
  }
}
