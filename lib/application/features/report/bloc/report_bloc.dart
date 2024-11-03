import 'package:bloc/bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/domain/model/expense_add_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nb_utils/nb_utils.dart';

part 'report_bloc.freezed.dart';
part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc() : super(_Initial()) {
    on<ReportEvent>((event, emit) {});
    on<LoadExpensesByCategory>(_loadExpensesByCategory);
  }
  Future<void> _loadExpensesByCategory(
    LoadExpensesByCategory event,
    Emitter<ReportState> emit,
  ) async {
    emit(const ReportState.loading());

    try {
      final expenseData = await sqfliteHelper.getData("expense");

      List<ExpenseAddModel> expenses =
          expenseData.map((e) => ExpenseAddModel.fromJson(e)).toList();
      if (expenses.isEmpty) {
        emit(ReportState.initial()); // Emit no data state
        return; // Exit early
      }
      final expensesByCategoryMap = <String, double>{};
      for (var expense in expenses) {
        if (expense.type == "Expense") {
          String category = expense.category ?? "";
          String amount = expense.amount ?? "";
          expensesByCategoryMap.update(
            category,
            (value) => value + amount.toInt(),
            ifAbsent: () => amount.toDouble(),
          );
        }
      }
      List<Map<String, dynamic>> expensesByCategory =
          expensesByCategoryMap.entries
              .map((entry) => {
                    "category": entry.key,
                    "totalAmount": entry.value,
                  })
              .toList();
      print(expensesByCategory);
      emit(ReportState.expensesByCategoryLoaded(expensesByCategory));
    } catch (e) {
      emit(ReportState.error("Failed to load expense data."));
    }
  }
}
