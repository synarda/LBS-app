import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculation_model.freezed.dart';

@freezed
class CalculationModel with _$CalculationModel {
  const CalculationModel._();
  const factory CalculationModel({
    required String text,
    required String distance,
    required String duration,
  }) = _CalculationModel;
}
