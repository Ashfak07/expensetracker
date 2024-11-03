import 'package:expensetracker/application/features/auth/bloc/auth_bloc.dart';
import 'package:expensetracker/application/features/auth/login_screen.dart';
import 'package:expensetracker/application/features/bottomnav/bottomnav_screen.dart';
import 'package:expensetracker/application/features/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(ProfileEvent.loadUserDataEvent());
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return SizedBox();
            },
            loading: () =>
                Center(child: CircularProgressIndicator()), // Loading indicator
            getUserCred: (user) {
              return Column(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 166, 250, 232),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.map(
                          usersLoaded: (val) {},
                          idle: (value) {},
                          initial: (_) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          authenticated: (_) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomnavScreen()),
                            );
                          },
                          userAdded: (user) {
                            return user;
                          },
                          error: (errorState) {},
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    BlocProvider.of<AuthBloc>(context)
                                        .add(AuthEvent.logOut());
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()),
                                    );
                                  },
                                  child: Icon(Icons.logout),
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: white,
                            radius: 40,
                            child: Icon(
                              Icons.person,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            user.username ?? "No username",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 6),
                          Text(
                            user.mobile ??
                                "No phone number", // Assuming you have this field
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ).center(),
                  ),
                ],
              );
            },
            error: (message) => Center(
                child: Column(
              children: [
                Text(message),
              ],
            )),
          );
        },
      ),
    );
  }
}
