part of 'bottomnav_bloc.dart';

class BottomnavState extends Equatable {
  final int index;

  const BottomnavState({required this.index});

  @override
  List<Object> get props => [index];
}

class BottomnavInitial extends BottomnavState {
  BottomnavInitial() : super(index: 0);
}
