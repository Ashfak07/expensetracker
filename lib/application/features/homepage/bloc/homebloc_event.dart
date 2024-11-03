part of 'homebloc_bloc.dart';

@immutable
abstract class HomeblocEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AmountEvent extends HomeblocEvent {
  final String? amount;
  AmountEvent(this.amount);
}

class IdEvent extends HomeblocEvent {
  final int? id;
  IdEvent(this.id);
}

class CategoryEvent extends HomeblocEvent {
  final String? category;
  CategoryEvent(this.category);
}

class SearchExpensesEvent extends HomeblocEvent {
  final String query;

  SearchExpensesEvent(this.query);

  @override
  List<Object> get props => [query];
}

class TypeEvent extends HomeblocEvent {
  final String? type;
  TypeEvent(this.type);
}

class DateEvent extends HomeblocEvent {
  final String? date;
  DateEvent(this.date);
}

class SaveExpenseEvent extends HomeblocEvent {}

class GetExpenseEvent extends HomeblocEvent {}

class GetBalanceAmountEvent extends HomeblocEvent {
  final int? balance;
  GetBalanceAmountEvent({this.balance});
}

class LoadInitialDataEvent extends HomeblocEvent {}

class EditExpense extends HomeblocEvent {}

class DeleteExpense extends HomeblocEvent {}

class SelectCategoryEvent extends HomeblocEvent {
  final String category;

  SelectCategoryEvent(this.category);

  @override
  List<Object?> get props => [category];
}
