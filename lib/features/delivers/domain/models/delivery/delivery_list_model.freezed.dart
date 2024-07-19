// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryListModel _$DeliveryListModelFromJson(Map<String, dynamic> json) {
  return _DeliveryListModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryListModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get isDelivered => throw _privateConstructorUsedError;
  List<DeliveryDetailModel> get shoppingChartList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryListModelCopyWith<DeliveryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryListModelCopyWith<$Res> {
  factory $DeliveryListModelCopyWith(
          DeliveryListModel value, $Res Function(DeliveryListModel) then) =
      _$DeliveryListModelCopyWithImpl<$Res, DeliveryListModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imagePath,
      LatLng location,
      String address,
      String phone,
      bool isDelivered,
      List<DeliveryDetailModel> shoppingChartList});
}

/// @nodoc
class _$DeliveryListModelCopyWithImpl<$Res, $Val extends DeliveryListModel>
    implements $DeliveryListModelCopyWith<$Res> {
  _$DeliveryListModelCopyWithImpl(this._value, this._then);

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
    Object? location = null,
    Object? address = null,
    Object? phone = null,
    Object? isDelivered = null,
    Object? shoppingChartList = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      shoppingChartList: null == shoppingChartList
          ? _value.shoppingChartList
          : shoppingChartList // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryListModelImplCopyWith<$Res>
    implements $DeliveryListModelCopyWith<$Res> {
  factory _$$DeliveryListModelImplCopyWith(_$DeliveryListModelImpl value,
          $Res Function(_$DeliveryListModelImpl) then) =
      __$$DeliveryListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imagePath,
      LatLng location,
      String address,
      String phone,
      bool isDelivered,
      List<DeliveryDetailModel> shoppingChartList});
}

/// @nodoc
class __$$DeliveryListModelImplCopyWithImpl<$Res>
    extends _$DeliveryListModelCopyWithImpl<$Res, _$DeliveryListModelImpl>
    implements _$$DeliveryListModelImplCopyWith<$Res> {
  __$$DeliveryListModelImplCopyWithImpl(_$DeliveryListModelImpl _value,
      $Res Function(_$DeliveryListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? location = null,
    Object? address = null,
    Object? phone = null,
    Object? isDelivered = null,
    Object? shoppingChartList = null,
  }) {
    return _then(_$DeliveryListModelImpl(
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
      shoppingChartList: null == shoppingChartList
          ? _value._shoppingChartList
          : shoppingChartList // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryListModelImpl extends _DeliveryListModel {
  const _$DeliveryListModelImpl(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.location,
      required this.address,
      required this.phone,
      required this.isDelivered,
      required final List<DeliveryDetailModel> shoppingChartList})
      : _shoppingChartList = shoppingChartList,
        super._();

  factory _$DeliveryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryListModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final LatLng location;
  @override
  final String address;
  @override
  final String phone;
  @override
  final bool isDelivered;
  final List<DeliveryDetailModel> _shoppingChartList;
  @override
  List<DeliveryDetailModel> get shoppingChartList {
    if (_shoppingChartList is EqualUnmodifiableListView)
      return _shoppingChartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingChartList);
  }

  @override
  String toString() {
    return 'DeliveryListModel(id: $id, name: $name, imagePath: $imagePath, location: $location, address: $address, phone: $phone, isDelivered: $isDelivered, shoppingChartList: $shoppingChartList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isDelivered, isDelivered) ||
                other.isDelivered == isDelivered) &&
            const DeepCollectionEquality()
                .equals(other._shoppingChartList, _shoppingChartList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imagePath,
      location,
      address,
      phone,
      isDelivered,
      const DeepCollectionEquality().hash(_shoppingChartList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryListModelImplCopyWith<_$DeliveryListModelImpl> get copyWith =>
      __$$DeliveryListModelImplCopyWithImpl<_$DeliveryListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryListModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryListModel extends DeliveryListModel {
  const factory _DeliveryListModel(
          {required final int id,
          required final String name,
          required final String imagePath,
          required final LatLng location,
          required final String address,
          required final String phone,
          required final bool isDelivered,
          required final List<DeliveryDetailModel> shoppingChartList}) =
      _$DeliveryListModelImpl;
  const _DeliveryListModel._() : super._();

  factory _DeliveryListModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryListModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  LatLng get location;
  @override
  String get address;
  @override
  String get phone;
  @override
  bool get isDelivered;
  @override
  List<DeliveryDetailModel> get shoppingChartList;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryListModelImplCopyWith<_$DeliveryListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
