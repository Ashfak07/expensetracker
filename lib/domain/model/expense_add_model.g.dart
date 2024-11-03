// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseAddModelImpl _$$ExpenseAddModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseAddModelImpl(
      id: (json['id'] as num?)?.toInt(),
      amount: json['amount'] as String?,
      category: json['category'] as String?,
      dateTime: json['dateTime'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ExpenseAddModelImplToJson(
        _$ExpenseAddModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'category': instance.category,
      'dateTime': instance.dateTime,
      'type': instance.type,
    };
