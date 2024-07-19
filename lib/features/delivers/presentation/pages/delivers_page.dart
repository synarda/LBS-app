import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wix_navigation/core/routing/app_router.gr.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/paddings.dart';
import 'package:wix_navigation/core/utils/space.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery_detail/delivery_detail_model.dart';
import 'package:wix_navigation/features/delivers/presentation/providers/delivers_provider.dart';
import 'package:wix_navigation/features/home/presentation/providers/navigation_provider.dart';
import 'package:wix_navigation/product/button.dart';
import 'package:wix_navigation/product/button_without_gradient.dart';
import 'package:wix_navigation/product/default_shadow.dart';
part '../widgets/deliver_page/delivery_list_item.dart';
part '../widgets/deliver_page/item_info_widgets.dart';
part '../widgets/deliver_page/delivery_products_list.dart';
part '../widgets/deliver_page/delivery_products_list_item.dart';
part '../widgets/deliver_page/item_top_widgets.dart';

class DeliverPage extends ConsumerWidget {
  const DeliverPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryProv = ref.watch(deliverPageProvider);
    final navigation = ref.watch(navigationProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            deliveryProv.reorderList(oldIndex, newIndex, context,
                deliveryProv.destinationList, deliveryProv.dummyDeliverList);
            navigation.stopStreamLocation();
          },
          padding: const EdgeInsets.only(top: 76, bottom: 80),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: deliveryProv.dummyDeliverList
              .map((e) => Align(
                  key: ValueKey(e.location),
                  alignment: Alignment.centerLeft,
                  child: DeliveryListItemWidget(
                    deliverItem: e,
                  )))
              .toList(),
        ),
      ),
    );
  }
}
