// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/paddings.dart';
import 'package:wix_navigation/core/utils/space.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/alert_bottomsheet/presentation/alert_bottomsheet.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery_detail/delivery_detail_model.dart';
import 'package:wix_navigation/features/delivers/presentation/providers/delivers_provider.dart';
import 'package:wix_navigation/features/home/presentation/providers/navigation_provider.dart';
import 'package:wix_navigation/product/button_without_gradient.dart';
part '../widgets/deliver_detail_page/delivery_list.dart';
part '../widgets/deliver_detail_page/float_buttons.dart';
part '../widgets/deliver_detail_page/info_widget.dart';
part '../widgets/deliver_detail_page/list_item.dart';
part '../widgets/deliver_detail_page/detail_sliverappbar.dart';
part '../widgets/deliver_detail_page/detail_sliverlist.dart';

@RoutePage()
class DeliverDetailPage extends StatelessWidget {
  final DeliveryListModel delivery;

  const DeliverDetailPage({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        alertBottomSheet(context);
        return true;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              CustomScrollView(
                slivers: <Widget>[
                  DetailSliverAppbarWidget(delivery: delivery),
                  DetailSliverListWidget(delivery: delivery)
                ],
              ),
              DetailPageFloatButtonsWidgets(delivery: delivery),
            ],
          )),
    );
  }
}
