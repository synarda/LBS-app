import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wix_navigation/core/routing/app_router.gr.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/delivers/presentation/providers/delivers_provider.dart';
import 'package:wix_navigation/product/my_position.dart';

@RoutePage()
class StepperPage extends ConsumerWidget {
  const StepperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryProvider = ref.watch(deliverPageProvider);
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.only(
                top: 80, bottom: 100, left: 24, right: 24),
            child: AnotherStepper(
              scrollPhysics: const BouncingScrollPhysics(),
              stepperList: [
                StepperData(iconWidget: MyPositionWidget()),
                ...deliveryProvider.destinationList.map((e) => StepperData(
                    title: StepperText(
                      e.name,
                      textStyle: Styles.bigTitleStyle
                          .copyWith(color: AppColors.mainColorFirst),
                    ),
                    subtitle: StepperText(e.address),
                    iconWidget: GestureDetector(
                      onTap: () => context.router.push(DeliverDetailRoute(
                        delivery: e,
                      )),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(e.imagePath, fit: BoxFit.cover)),
                    )))
              ],
              stepperDirection: Axis.vertical,
              iconWidth: 60,
              iconHeight: 60,
              activeBarColor: AppColors.mainColorFirst,
              inActiveBarColor: Colors.grey,
              inverted: false,
              verticalGap: 50,
              activeIndex: 1,
              barThickness: 6,
            )),
      ],
    );
  }
}
