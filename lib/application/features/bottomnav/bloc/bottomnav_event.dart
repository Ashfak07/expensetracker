part of 'bottomnav_bloc.dart';

abstract class BottomnavEvent extends Equatable {
  const BottomnavEvent();

  @override
  List<Object?> get props => [];
}

class requestNavigation extends BottomnavEvent {
  final int? index;

  requestNavigation({required this.index});
  @override
  List<Object?> get props => [index];
}
