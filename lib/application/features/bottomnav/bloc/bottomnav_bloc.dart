import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottomnav_event.dart';
part 'bottomnav_state.dart';

class BottomnavBloc extends Bloc<BottomnavEvent, BottomnavState> {
  BottomnavBloc() : super(BottomnavInitial()) {
    on<requestNavigation>((event, emit) {
      emit(BottomnavState(index: event.index ?? 0));
    });
  }
}
