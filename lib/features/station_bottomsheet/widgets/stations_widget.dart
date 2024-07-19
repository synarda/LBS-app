part of '../presentation/stations_bottomsheet.dart';

class StationsWidget extends ConsumerWidget {
  const StationsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: navigation.calculationsList.length,
      itemBuilder: (context, index) {
        final model = navigation.calculationsList[index];
        return StationCardWidget(model: model, index: index);
      },
    );
  }
}
