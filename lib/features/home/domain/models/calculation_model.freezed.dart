// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalculationModel {
  String get text => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculationModelCopyWith<CalculationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationModelCopyWith<$Res> {
  factory $CalculationModelCopyWith(
          CalculationModel value, $Res Function(CalculationModel) then) =
      _$CalculationModelCopyWithImpl<$Res, CalculationModel>;
  @useResult
  $Res call({String text, String distance, String duration});
}

/// @nodoc
class _$CalculationModelCopyWithImpl<$Res, $Val extends CalculationModel>
    implements $CalculationModelCopyWith<$Res> {
  _$CalculationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculationModelImplCopyWith<$Res>
    implements $CalculationModelCopyWith<$Res> {
  factory _$$CalculationModelImplCopyWith(_$CalculationModelImpl value,
          $Res Function(_$CalculationModelImpl) then) =
      __$$CalculationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String distance, String duration});
}

/// @nodoc
class __$$CalculationModelImplCopyWithImpl<$Res>
    extends _$CalculationModelCopyWithImpl<$Res, _$CalculationModelImpl>
    implements _$$CalculationModelImplCopyWith<$Res> {
  __$$CalculationModelImplCopyWithImpl(_$CalculationModelImpl _value,
      $Res Function(_$CalculationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_$CalculationModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculationModelImpl extends _CalculationModel {
  const _$CalculationModelImpl(
      {required this.text, required this.distance, required this.duration})
      : super._();

  @override
  final String text;
  @override
  final String distance;
  @override
  final String duration;

  @override
  String toString() {
    return 'CalculationModel(text: $text, distance: $distance, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, distance, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationModelImplCopyWith<_$CalculationModelImpl> get copyWith =>
      __$$CalculationModelImplCopyWithImpl<_$CalculationModelImpl>(
          this, _$identity);
}

abstract class _CalculationModel extends CalculationModel {
  const factory _CalculationModel(
      {required final String text,
      required final String distance,
      required final String duration}) = _$CalculationModelImpl;
  const _CalculationModel._() : super._();

  @override
  String get text;
  @override
  String get distance;
  @override
  String get duration;
  @override
  @JsonKey(ignore: true)
  _$$CalculationModelImplCopyWith<_$CalculationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
