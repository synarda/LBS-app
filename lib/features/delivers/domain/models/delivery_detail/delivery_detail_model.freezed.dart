// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryDetailModel _$DeliveryDetailModelFromJson(Map<String, dynamic> json) {
  return _DeliveryDetailModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get piece => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDetailModelCopyWith<DeliveryDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailModelCopyWith<$Res> {
  factory $DeliveryDetailModelCopyWith(
          DeliveryDetailModel value, $Res Function(DeliveryDetailModel) then) =
      _$DeliveryDetailModelCopyWithImpl<$Res, DeliveryDetailModel>;
  @useResult
  $Res call({int id, String name, String imagePath, int piece});
}

/// @nodoc
class _$DeliveryDetailModelCopyWithImpl<$Res, $Val extends DeliveryDetailModel>
    implements $DeliveryDetailModelCopyWith<$Res> {
  _$DeliveryDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? piece = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryDetailModelImplCopyWith<$Res>
    implements $DeliveryDetailModelCopyWith<$Res> {
  factory _$$DeliveryDetailModelImplCopyWith(_$DeliveryDetailModelImpl value,
          $Res Function(_$DeliveryDetailModelImpl) then) =
      __$$DeliveryDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String imagePath, int piece});
}

/// @nodoc
class __$$DeliveryDetailModelImplCopyWithImpl<$Res>
    extends _$DeliveryDetailModelCopyWithImpl<$Res, _$DeliveryDetailModelImpl>
    implements _$$DeliveryDetailModelImplCopyWith<$Res> {
  __$$DeliveryDetailModelImplCopyWithImpl(_$DeliveryDetailModelImpl _value,
      $Res Function(_$DeliveryDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? piece = null,
  }) {
    return _then(_$DeliveryDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDetailModelImpl extends _DeliveryDetailModel {
  const _$DeliveryDetailModelImpl(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.piece})
      : super._();

  factory _$DeliveryDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final int piece;

  @override
  String toString() {
    return 'DeliveryDetailModel(id: $id, name: $name, imagePath: $imagePath, piece: $piece)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.piece, piece) || other.piece == piece));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imagePath, piece);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDetailModelImplCopyWith<_$DeliveryDetailModelImpl> get copyWith =>
      __$$DeliveryDetailModelImplCopyWithImpl<_$DeliveryDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDetailModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryDetailModel extends DeliveryDetailModel {
  const factory _DeliveryDetailModel(
      {required final int id,
      required final String name,
      required final String imagePath,
      required final int piece}) = _$DeliveryDetailModelImpl;
  const _DeliveryDetailModel._() : super._();

  factory _DeliveryDetailModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  int get piece;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDetailModelImplCopyWith<_$DeliveryDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
