import 'package:bloc/bloc.dart';
import 'package:expensetracker/domain/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(_Initial()) {
    on<ProfileEvent>((event, emit) {});
    on<LoadUserDataEvent>(_loadUserData);
  }
  Future<void> _loadUserData(
      LoadUserDataEvent event, Emitter<ProfileState> emit) async {
    try {
      final userBox = await Hive.box('userBooxxx');
      var currentUser = userBox.get('currentUser');
      if (currentUser != null) {
        UserModel model = UserModel();
        model = model.copyWith(
            mobile: currentUser["mobile"], username: currentUser["username"]);
        emit(ProfileState.getUserCred(model));
      } else {
        emit(ProfileState.error("User not found"));
      }
    } catch (error) {
      emit(ProfileState.error("Failed to load user data: $error"));
    }
  }
}
