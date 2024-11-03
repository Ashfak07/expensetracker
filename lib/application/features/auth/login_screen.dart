import 'package:expensetracker/application/core/widgets/custom_button.dart';
import 'package:expensetracker/application/core/widgets/custom_textfiel.dart';
import 'package:expensetracker/application/features/auth/bloc/auth_bloc.dart';
import 'package:expensetracker/application/features/auth/registration_screen.dart';
import 'package:expensetracker/application/features/bottomnav/bottomnav_screen.dart';
import 'package:expensetracker/domain/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  UserModel userModel = UserModel();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          userAdded: () {},
          usersLoaded: (users) {},
          authenticated: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => BottomnavScreen()),
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          idle: () {},
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Background colored container
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,

                // Height for the background container
                color: const Color.fromARGB(255, 138, 241, 239),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    150.height,
                    Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: white, fontWeight: FontWeight.w400),
                    ),
                  ],
                ), // Background color
              ),

              // Positioned text fields
              Positioned(
                top: 250,
                bottom: 0, // Adjust top position as needed
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 800,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        50.height,
                        CustomTextField(
                          hintText: "Username",
                          prefixIcon: Icons.person,
                          onChanged: (value) {
                            userModel = userModel.copyWith(username: value);
                          },
                        ),
                        const SizedBox(height: 10), // Space between text fields
                        CustomTextField(
                          hintText: "Password",
                          prefixIcon: Icons.lock,
                          obscureText: true,
                          onChanged: (value) {
                            userModel = userModel.copyWith(password: value);
                          },
                        ),
                        10.height,
                        CustomButton(
                          color: const Color.fromARGB(255, 138, 241, 239),
                          label: "Sign in",
                          onPressed: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.login(userModel));
                          },
                          width: context.width() - 190,
                          height: 40,
                        ),
                        6.height,
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => RegistrationScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Don't have Account Sing Up ",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  color: const Color.fromARGB(255, 99, 98, 98),
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
