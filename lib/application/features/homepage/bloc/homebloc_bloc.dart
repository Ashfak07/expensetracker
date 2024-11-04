import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expensetracker/application/core/services/sqflite_services.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:expensetracker/domain/model/expense_add_model.dart';
import 'package:meta/meta.dart';
import 'package:nb_utils/nb_utils.dart';

part 'homebloc_event.dart';

final sqfliteHelper = SqfliteHelper();

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial()) {
    on<AmountEvent>(_amountEvent);
    on<CategoryEvent>(_categoryEvent);
    on<TypeEvent>(_typeEvent);
    on<DateEvent>(_dateEvent);
    on<SaveExpenseEvent>(_saveExpense);
    on<DeleteExpense>(deleteExpense);
    on<LoadInitialDataEvent>(_loadInitialData);
    on<EditExpense>(updateExpense);
    on<IdEvent>(_idEvent);
    on<SelectCategoryEvent>(_selectCategory);
    on<SearchExpensesEvent>(_searchExpenses);
  }
  void _loadInitialData(
      LoadInitialDataEvent event, Emitter<HomeblocState> emit) async {
    await _updateExpensesListAndBalance(emit);
    await getIncomeAmount(emit);
    await getExpenseAmount(emit);
  }

  void _amountEvent(AmountEvent event, Emitter<HomeblocState> emit) {
    final updatedModel = state.expensesModel?.copyWith(amount: event.amount);
    print("New amount set: ${updatedModel?.amount}");
    emit(state.copyWith(expensesModel: updatedModel));
    print("Current state after amount update: ${updatedModel}");
  }

  void _idEvent(IdEvent event, Emitter<HomeblocState> emit) {
    final updatedModel = state.expensesModel?.copyWith(id: event.id);
    print("New amount set: ${updatedModel?.amount}");
    emit(state.copyWith(expensesModel: updatedModel));
    print("Current state after amount update: ${updatedModel}");
  }

  void _categoryEvent(CategoryEvent event, Emitter<HomeblocState> emit) {
    print("Selected category: ${event.category}");
    final updatedModel =
        state.expensesModel?.copyWith(category: event.category);
    emit(state.copyWith(expensesModel: updatedModel));
    print("Updated category: ${updatedModel?.category}");
  }

  void _typeEvent(TypeEvent event, Emitter<HomeblocState> emit) {
    if (state.expensesModel != null) {
      final updatedModel = state.expensesModel?.copyWith(type: event.type);
      emit(state.copyWith(expensesModel: updatedModel));
    } else {
      print("No existing expense model to update.");
    }
  }

  void _dateEvent(DateEvent event, Emitter<HomeblocState> emit) {
    if (state.expensesModel != null) {
      final updatedModel = state.expensesModel?.copyWith(dateTime: event.date);
      emit(state.copyWith(expensesModel: updatedModel));
    } else {
      print("No existing expense model to update.");
    }
  }

  Future<void> _saveExpense(
      SaveExpenseEvent event, Emitter<HomeblocState> emit) async {
    Map<String, String> expenseTableSchema = {
      'id': 'INTEGER PRIMARY KEY AUTOINCREMENT',
      'amount': 'TEXT',
      'category': 'TEXT',
      'dateTime': 'TEXT',
      'type': 'TEXT',
    };
    await sqfliteHelper.createTable("expense", expenseTableSchema);
    await sqfliteHelper.insertExpense("expense", state.expensesModel!.toJson());
    await _updateExpensesListAndBalance(emit);
    await getIncomeAmount(emit);
    await getExpenseAmount(emit);
  }

  void _searchExpenses(SearchExpensesEvent event, Emitter<HomeblocState> emit) {
    final currentExpenses = state.expensesList ?? [];

    if (event.query.isEmpty) {
      emit(state.copyWith(
          filteredExpensesList: currentExpenses,
          hasData: currentExpenses.isNotEmpty));
    } else {
      final filteredExpenses = currentExpenses.where((expense) {
        return expense!.category!
                .toLowerCase()
                .contains(event.query.toLowerCase()) ||
            expense.type!.toLowerCase().contains(event.query.toLowerCase());
      }).toList();
      emit(state.copyWith(
          filteredExpensesList: filteredExpenses,
          hasData: filteredExpenses.isNotEmpty));
    }
  }

  void _selectCategory(
      SelectCategoryEvent event, Emitter<HomeblocState> emit) async {
    var expensesList = await sqfliteHelper.getData("expense");
    List<ExpenseAddModel> expensesModelList =
        expensesList.map((json) => ExpenseAddModel.fromJson(json)).toList();
    final filteredExpenses = expensesModelList
        .where((expense) => expense.category == event.category)
        .toList();
    emit(state.copyWith(
      filteredExpensesList:
          event.category == "All" ? expensesModelList : filteredExpenses,
      expensesList:
          event.category == "All" ? expensesModelList : filteredExpenses,
      selectedCategory: event.category,
      hasData: event.category == "All"
          ? expensesModelList.isNotEmpty
          : filteredExpenses.isNotEmpty,
    ));
  }

  Future<void> updateExpense(
      EditExpense event, Emitter<HomeblocState> emit) async {
    sqfliteHelper.editTable(
        "expense", state.expensesModel!.toJson(), state.expensesModel!.id!);
    await _updateExpensesListAndBalance(emit);
    await getIncomeAmount(emit);
    await getExpenseAmount(emit);
  }

  Future<void> deleteExpense(
      DeleteExpense event, Emitter<HomeblocState> emit) async {
    sqfliteHelper.deleteRow("expense", state.expensesModel!.id!);
    await _updateExpensesListAndBalance(emit);
    await getIncomeAmount(emit);
    await getExpenseAmount(emit);
  }

  Future<void> _updateExpensesListAndBalance(
      Emitter<HomeblocState> emit) async {
    var expensesList = await sqfliteHelper.getData("expense");
    List<ExpenseAddModel> expensesModelList =
        expensesList.map((json) => ExpenseAddModel.fromJson(json)).toList();
    int balanceAmount = expensesModelList.fold(0, (total, model) {
      int amount = model.amount.toInt();
      return model.type == "Income" ? total + amount : total - amount;
    });
    emit(state.copyWith(
      expensesList: expensesModelList,
      filteredExpensesList: expensesModelList,
      expensesModel: ExpenseAddModel(),
      balance: balanceAmount,
      hasData: expensesModelList.isNotEmpty,
    ));
  }

  Future<void> getIncomeAmount(Emitter<HomeblocState> emit) async {
    var expensesList = await sqfliteHelper.getData("expense");
    List<ExpenseAddModel> expensesModelList =
        expensesList.map((json) => ExpenseAddModel.fromJson(json)).toList();
    int totalIncome = expensesModelList.fold(0, (sum, e) {
      return e.type == "Income" ? sum + e.amount.toInt() : sum;
    });
    emit(state.copyWith(totalIncome: totalIncome));
  }

  Future<void> getExpenseAmount(Emitter<HomeblocState> emit) async {
    var expensesList = await sqfliteHelper.getData("expense");
    List<ExpenseAddModel> expensesModelList =
        expensesList.map((json) => ExpenseAddModel.fromJson(json)).toList();
    int totalExpense = expensesModelList.fold(0, (sum, e) {
      return e.type == "Expense" ? sum + e.amount.toInt() : sum;
    });
    emit(state.copyWith(totalExpense: totalExpense));
  }
}
