part of '../../pages/deliver_detail_page.dart';

class DetailPageInfoWidgets extends StatelessWidget {
  final DeliveryListModel delivery;

  const DetailPageInfoWidgets({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.phone,
              size: 24,
              color: Colors.black,
            ),
            CustomSpaces.largeHorizontal,
            Text(delivery.phone,
                style: Styles.smallTextStyle
                    .copyWith(color: Colors.black.withOpacity(0.6)))
          ],
        ),
        CustomSpaces.mediumVertical,
        Row(
          children: [
            const Icon(
              Icons.map,
              size: 24,
              color: Colors.black,
            ),
            CustomSpaces.largeHorizontal,
            Flexible(
              child: Text(
                delivery.address,
                style: Styles.smallTextStyle
                    .copyWith(color: Colors.black.withOpacity(0.6)),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ],
    );
  }
}
