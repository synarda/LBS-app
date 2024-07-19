import 'package:auto_route/auto_route.dart';
import 'package:draggable_widget/draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/core/routing/app_router.gr.dart';
import 'package:wix_navigation/features/station_bottomsheet/presentation/stations_bottomsheet.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';
import 'package:wix_navigation/features/delivers/presentation/providers/delivers_provider.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/features/home/presentation/providers/navigation_provider.dart';
import 'package:wix_navigation/features/stepper/presentation/pages/stepper_page.dart';
import 'package:wix_navigation/product/button_without_gradient.dart';
import 'package:wix_navigation/product/default_shadow.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/paddings.dart';
import 'package:wix_navigation/core/utils/space.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/delivers/presentation/pages/delivers_page.dart';
import 'package:wix_navigation/features/home/presentation/providers/location_provider.dart';
import 'package:wix_navigation/features/home/presentation/providers/page_provider.dart';
import 'package:wix_navigation/product/error_widget.dart';
import 'package:wix_navigation/product/lottie_delivery.dart';
import 'package:wix_navigation/product/my_position.dart';
import 'package:wix_navigation/product/on_the_road_widget.dart';
import 'package:wix_navigation/product/small_waiting_widget.dart';

part '../widgets/start_route_button.dart';
part '../widgets/custom_home_appbar.dart';
part '../widgets/top_left.dart';
part '../widgets/map.dart';
part '../widgets/bottom_navigation_item.dart';
part '../widgets/custom_marker.dart';
part '../widgets/raw_map.dart';
part '../../../station_bottomsheet/widgets/station_card.dart';
part '../widgets/custom_bottom_navigation.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageProvider);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageState.pageController,
            onPageChanged: (int index) {
              pageState.changePage(index);
            },
            children: const [DeliverPage(), MapWidget(), StepperPage()],
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: CustomHomeAppbarWidget(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationWidget(
              pageController: pageState.pageController,
            ),
          ),
        ],
      ),
    );
  }
}
