part of '../../pages/deliver_detail_page.dart';

class DetailSliverAppbarWidget extends StatelessWidget {
  final DeliveryListModel delivery;

  const DetailSliverAppbarWidget({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.mainColorFirst,
      leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
            alertBottomSheet(context);
          },
          child: Container(
            padding: CustomPaddings.mediumAll,
            margin: CustomPaddings.smallAll,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.mainColorFirst),
            child: const Icon(
              Icons.chevron_left,
              size: 32,
              color: Colors.white,
            ),
          )),
      expandedHeight: 250.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          delivery.imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
