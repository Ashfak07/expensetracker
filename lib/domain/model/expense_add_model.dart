import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_add_model.freezed.dart';
part 'expense_add_model.g.dart';

@freezed
class ExpenseAddModel with _$ExpenseAddModel {
  const factory ExpenseAddModel({
    int? id,
    String? amount,
    String? category,
    String? dateTime,
    String? type,
  }) = _ExpenseAddModel;

  factory ExpenseAddModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseAddModelFromJson(json);
}
