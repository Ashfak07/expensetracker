import 'package:equatable/equatable.dart';
import 'package:expensetracker/domain/model/expense_add_model.dart';
import 'package:flutter/material.dart';

@immutable
class HomeblocState extends Equatable {
  ExpenseAddModel? expensesModel;
  List<ExpenseAddModel?>? expensesList;
  List<ExpenseAddModel?>? filteredExpensesList;
  final int? balance;
  int? totalIncome;
  int? totalExpense;
  String? selectedCategory;
  bool hasData;

  HomeblocState(
      {this.expensesModel,
      this.expensesList,
      this.balance,
      this.totalIncome,
      this.totalExpense,
      this.filteredExpensesList,
      this.selectedCategory,
      this.hasData = false});

  @override
  List<Object?> get props => [
        expensesModel,
        expensesList,
        balance,
        totalIncome,
        totalExpense,
        selectedCategory,
        filteredExpensesList,
        hasData
      ];

  // Create a copyWith method to facilitate updating individual properties
  HomeblocState copyWith(
      {ExpenseAddModel? expensesModel,
      List<ExpenseAddModel?>? expensesList,
      int? balance,
      int? totalIncome,
      int? totalExpense,
      String? selectedCategory,
      List<ExpenseAddModel?>? filteredExpensesList,
      bool? hasData}) {
    return HomeblocState(
      expensesModel: expensesModel ?? this.expensesModel,
      expensesList: expensesList ?? this.expensesList,
      balance: balance ?? this.balance,
      totalIncome: totalIncome ?? this.totalIncome,
      totalExpense: totalExpense ?? this.totalExpense,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      filteredExpensesList: filteredExpensesList ?? this.filteredExpensesList,
      hasData: hasData ?? this.hasData,
    );
  }
}

class HomeblocInitial extends HomeblocState {
  HomeblocInitial()
      : super(
            expensesModel: ExpenseAddModel(),
            expensesList: [],
            balance: 0,
            totalIncome: 0,
            totalExpense: 0,
            selectedCategory: "All",
            filteredExpensesList: []);
}
