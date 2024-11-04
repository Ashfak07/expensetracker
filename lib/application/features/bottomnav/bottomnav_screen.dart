import 'package:expensetracker/application/features/bottomnav/bloc/bottomnav_bloc.dart';
import 'package:expensetracker/application/features/homepage/home_page.dart';
import 'package:expensetracker/application/features/profile/profile_screen.dart';
import 'package:expensetracker/application/features/report/report_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Widget> screens = [HomeScreen(), ReportScreen(), ProfileScreen()];

class BottomnavScreen extends StatelessWidget {
  const BottomnavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomnavBloc, BottomnavState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: screens.elementAt(state.index),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 138, 241, 239),
            currentIndex: state.index,
            onTap: (index) {
              BlocProvider.of<BottomnavBloc>(context)
                  .add(requestNavigation(index: index));
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.show_chart_sharp),
                label: 'Report',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
