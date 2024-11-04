import 'package:expensetracker/application/core/widgets/custom_button.dart';
import 'package:expensetracker/application/core/widgets/custom_textfiel.dart';
import 'package:expensetracker/application/features/auth/bloc/auth_bloc.dart';
import 'package:expensetracker/application/features/auth/login_screen.dart';
import 'package:expensetracker/domain/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import this for BlocProvider
import 'package:nb_utils/nb_utils.dart';

// ignore: must_be_immutable
class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  // Create an instance of UserModel
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background colored container
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              color: const Color.fromARGB(255, 138, 241, 239),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  150.height,
                  Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),

            // Positioned text fields
            Positioned(
              top: 250,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
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
                      const SizedBox(height: 10),
                      CustomTextField(
                        hintText: "Password",
                        prefixIcon: Icons.lock,
                        obscureText: true,
                        onChanged: (value) {
                          userModel = userModel.copyWith(password: value);
                        },
                      ),
                      10.height,
                      CustomTextField(
                        hintText: "Mobile",
                        prefixIcon: Icons.phone,
                        onChanged: (value) {
                          userModel = userModel.copyWith(mobile: value);
                        },
                      ),
                      10.height,
                      CustomButton(
                        color: const Color.fromARGB(255, 138, 241, 239),
                        label: "Sign up",
                        onPressed: () {
                          // Dispatch the register event when button is pressed
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.register(userModel));
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (route) => false,
                          );
                        },
                        width: context.width() - 190,
                        height: 40,
                      ),
                      6.height,
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                            (route) => false,
                          );
                        },
                        child: Text(
                          "Already have account? Sign in",
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
    );
  }
}
