import 'package:expensetracker/application/core/services/sqflite_services.dart';
import 'package:expensetracker/application/features/auth/bloc/auth_bloc.dart';
import 'package:expensetracker/application/features/auth/login_screen.dart';
import 'package:expensetracker/application/features/bottomnav/bloc/bottomnav_bloc.dart';
import 'package:expensetracker/application/features/bottomnav/bottomnav_screen.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/profile/bloc/profile_bloc.dart';
import 'package:expensetracker/application/features/report/bloc/report_bloc.dart';
import 'package:expensetracker/domain/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userBooxxx');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomnavBloc(),
        ),
        BlocProvider(
          create: (context) => HomeblocBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider(
          create: (context) => ReportBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ExpenseTracker',
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 138, 241, 239),
          ),
          useMaterial3: true,
        ),
        home: _getInitialScreen(),
      ),
    );
  }
}

Widget _getInitialScreen() {
  final userBox = Hive.box('userBooxxx');
  final currentUser = userBox.get('currentUser');

  if (currentUser != null) {
    return BottomnavScreen();
  } else {
    return LoginScreen();
  }
}
