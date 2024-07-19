part of '../../pages/deliver_detail_page.dart';

class ListDetailWidget extends StatelessWidget {
  final DeliveryDetailModel model;
  const ListDetailWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: CustomPaddings.mediumVertical,
      padding: CustomPaddings.largeAll,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.5, color: Colors.black),
      ),
      height: 70,
      width: screenSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.network(model.imagePath, fit: BoxFit.cover)),
              ),
              CustomSpaces.largeHorizontal,
              Text(
                model.name.toString(),
                style: Styles.smallTextStyle.copyWith(color: Colors.black),
              ),
            ],
          ),
          Text(
            model.piece.toString(),
            style: Styles.mediumTextStyle.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
