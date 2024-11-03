// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseAddModel _$ExpenseAddModelFromJson(Map<String, dynamic> json) {
  return _ExpenseAddModel.fromJson(json);
}

/// @nodoc
mixin _$ExpenseAddModel {
  int? get id => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this ExpenseAddModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseAddModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseAddModelCopyWith<ExpenseAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseAddModelCopyWith<$Res> {
  factory $ExpenseAddModelCopyWith(
          ExpenseAddModel value, $Res Function(ExpenseAddModel) then) =
      _$ExpenseAddModelCopyWithImpl<$Res, ExpenseAddModel>;
  @useResult
  $Res call(
      {int? id,
      String? amount,
      String? category,
      String? dateTime,
      String? type});
}

/// @nodoc
class _$ExpenseAddModelCopyWithImpl<$Res, $Val extends ExpenseAddModel>
    implements $ExpenseAddModelCopyWith<$Res> {
  _$ExpenseAddModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseAddModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseAddModelImplCopyWith<$Res>
    implements $ExpenseAddModelCopyWith<$Res> {
  factory _$$ExpenseAddModelImplCopyWith(_$ExpenseAddModelImpl value,
          $Res Function(_$ExpenseAddModelImpl) then) =
      __$$ExpenseAddModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? amount,
      String? category,
      String? dateTime,
      String? type});
}

/// @nodoc
class __$$ExpenseAddModelImplCopyWithImpl<$Res>
    extends _$ExpenseAddModelCopyWithImpl<$Res, _$ExpenseAddModelImpl>
    implements _$$ExpenseAddModelImplCopyWith<$Res> {
  __$$ExpenseAddModelImplCopyWithImpl(
      _$ExpenseAddModelImpl _value, $Res Function(_$ExpenseAddModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseAddModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ExpenseAddModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseAddModelImpl implements _ExpenseAddModel {
  const _$ExpenseAddModelImpl(
      {this.id, this.amount, this.category, this.dateTime, this.type});

  factory _$ExpenseAddModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseAddModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? amount;
  @override
  final String? category;
  @override
  final String? dateTime;
  @override
  final String? type;

  @override
  String toString() {
    return 'ExpenseAddModel(id: $id, amount: $amount, category: $category, dateTime: $dateTime, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseAddModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, category, dateTime, type);

  /// Create a copy of ExpenseAddModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseAddModelImplCopyWith<_$ExpenseAddModelImpl> get copyWith =>
      __$$ExpenseAddModelImplCopyWithImpl<_$ExpenseAddModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseAddModelImplToJson(
      this,
    );
  }
}

abstract class _ExpenseAddModel implements ExpenseAddModel {
  const factory _ExpenseAddModel(
      {final int? id,
      final String? amount,
      final String? category,
      final String? dateTime,
      final String? type}) = _$ExpenseAddModelImpl;

  factory _ExpenseAddModel.fromJson(Map<String, dynamic> json) =
      _$ExpenseAddModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get amount;
  @override
  String? get category;
  @override
  String? get dateTime;
  @override
  String? get type;

  /// Create a copy of ExpenseAddModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseAddModelImplCopyWith<_$ExpenseAddModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
