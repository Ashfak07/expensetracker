part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;
  const factory ReportState.expensesByCategoryLoaded(
      List<Map<String, dynamic>> value) = ExpensesByCategoryLoaded;
  const factory ReportState.error(String message) = _Error;
}
