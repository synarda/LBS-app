part of '../../pages/delivers_page.dart';

class ItemInfoWidgets extends StatelessWidget {
  const ItemInfoWidgets({
    super.key,
    required this.phone,
    required this.address,
    required this.isSelected,
  });
  final String phone;
  final String address;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: isSelected ? 1 : 0,
      child: Visibility(
        visible: isSelected ? true : false,
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  size: 24,
                  color: Colors.white,
                ),
                CustomSpaces.largeHorizontal,
                Text(phone,
                    style: Styles.smallTextStyle
                        .copyWith(color: Colors.white.withOpacity(0.6)))
              ],
            ),
            CustomSpaces.mediumVertical,
            Row(
              children: [
                const Icon(
                  Icons.map,
                  size: 24,
                  color: Colors.white,
                ),
                CustomSpaces.largeHorizontal,
                Flexible(
                  child: Text(
                    address,
                    style: Styles.smallTextStyle
                        .copyWith(color: Colors.white.withOpacity(0.6)),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
