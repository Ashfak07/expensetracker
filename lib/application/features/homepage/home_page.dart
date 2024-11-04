import 'package:expensetracker/application/core/widgets/custom_textfiel.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:expensetracker/application/features/homepage/widgets/bottomsheet_container.dart';
import 'package:expensetracker/application/features/homepage/widgets/cardwidget.dart';
import 'package:expensetracker/application/features/homepage/widgets/expense_tile.dart';
import 'package:expensetracker/application/features/homepage/widgets/tab_bar_widget.dart';
import 'package:expensetracker/application/features/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeblocBloc, HomeblocState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomeblocInitial) {
          context.read<HomeblocBloc>().add(LoadInitialDataEvent());
          context.read<ProfileBloc>().add(LoadUserDataEvent());
        }

        return Scaffold(
          backgroundColor: white,
          resizeToAvoidBottomInset: true,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (BuildContext context) {
                  return BottomSheetContainer();
                },
              );
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi, ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w600)),
                      BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => Text("Loading..."),
                            loading: () => Text("Loading..."),
                            getUserCred: (user) {
                              return Text(
                                user.username![0].toUpperCase() +
                                    user.username!.substring(1),
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.w600),
                              );
                            },
                            error: (message) {
                              return Text(message).center();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  CardWidget(
                    balance: state.balance,
                    totalIncome: state.totalIncome,
                    totalExpense: state.totalExpense,
                  ),
                  SizedBox(height: 20),
                  Text("Transactions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  CustomTextField(
                    heigth: 40,
                    hintText: "serach",
                    prefixIcon: Icons.search_sharp,
                    onChanged: (query) {
                      BlocProvider.of<HomeblocBloc>(context)
                          .add(SearchExpensesEvent(query));
                    },
                  ),
                  SizedBox(height: 10),
                  TabBarWidget(
                    state: state,
                  ),
                  BlocBuilder<HomeblocBloc, HomeblocState>(
                    builder: (context, state) {
                      if (!state.hasData) {
                        return Container(
                            height: context.height() - 448,
                            child: Center(child: Text("No data available")));
                      }
                      return ExpenseTile(
                        state: state,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
