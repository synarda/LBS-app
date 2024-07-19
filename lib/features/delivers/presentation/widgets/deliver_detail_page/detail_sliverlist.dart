part of '../../pages/deliver_detail_page.dart';

class DetailSliverListWidget extends StatelessWidget {
  final DeliveryListModel delivery;

  const DetailSliverListWidget({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: CustomPaddings.largeAll,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              DetailPageInfoWidgets(delivery: delivery),
              CustomSpaces.extra3XLargeVertical,
              DetailPageDeliveryListWidget(delivery: delivery),
              SizedBox(height: 100)
            ],
          ),
        )
      ]),
    );
  }
}
