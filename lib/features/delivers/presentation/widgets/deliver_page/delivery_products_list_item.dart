part of '../../pages/delivers_page.dart';

class DeliveryProductsListItemWidget extends StatelessWidget {
  final DeliveryDetailModel model;
  const DeliveryProductsListItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.network(model.imagePath, fit: BoxFit.cover)),
          Positioned(
            bottom: 4,
            right: 6,
            child: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.green),
              child: Text(
                model.piece.toString(),
                style: Styles.smallTextStyle
                    .copyWith(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
