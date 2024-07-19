part of '../pages/home_page.dart';

class CustomMarkerWidget extends ConsumerWidget {
  final DeliveryListModel model;
  const CustomMarkerWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => context.router.push(DeliverDetailRoute(
        delivery: model,
      )),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            model.imagePath,
            height: 20,
            width: 20,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
