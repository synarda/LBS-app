part of '../../home/presentation/pages/home_page.dart';

class StationCardWidget extends StatelessWidget {
  final CalculationModel model;
  final int index;
  const StationCardWidget({
    super.key,
    required this.model,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: CustomPaddings.extraLargeAll,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          border: Border.all(width: 1, color: AppColors.mainColorFirst),
          borderRadius: BorderRadius.circular(10)),
      height: 80,
      child: Row(
        children: [
          Text(
            (index + 1).toString(),
            style:
                Styles.bigTitleStyle.copyWith(color: AppColors.mainColorFirst),
          ),
          CustomSpaces.mediumHorizontal,
          Text(model.text),
          const Spacer(),
          Row(
            children: [
              const Icon(Icons.timelapse,
                  size: 24, color: AppColors.mainColorFirst),
              CustomSpaces.mediumHorizontal,
              Text("${model.duration} min",
                  style: Styles.smallTextStyle
                      .copyWith(color: AppColors.mainColorFirst, fontSize: 10)),
            ],
          ),
          CustomSpaces.extraLargeHorizontal,
          Row(
            children: [
              const Icon(Icons.route,
                  size: 24, color: AppColors.mainColorFirst),
              CustomSpaces.mediumHorizontal,
              Text("${model.distance} km",
                  style: Styles.smallTextStyle
                      .copyWith(color: AppColors.mainColorFirst, fontSize: 10)),
            ],
          )
        ],
      ),
    );
  }
}
