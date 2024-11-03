import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:expensetracker/application/features/homepage/home_page.dart';
import 'package:expensetracker/application/features/homepage/widgets/bottomsheet_container.dart';
import 'package:expensetracker/application/features/homepage/widgets/commoncard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseTile extends StatelessWidget {
  HomeblocState state;
  ExpenseTile({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ...state.filteredExpensesList
                  ?.map((e) => Dismissible(
                        key: Key(e!.id
                            .toString()), // Unique key for each item (assuming `e.id` exists)
                        background:
                            editBackground(), // Background when swiping right for "Edit"
                        secondaryBackground:
                            deleteBackground(), // Background when swiping left for "Delete"
                        direction: DismissDirection
                            .horizontal, // Allow both left and right swipes
                        confirmDismiss: (direction) async {
                          if (direction == DismissDirection.startToEnd) {
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(IdEvent(e.id));
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(AmountEvent(e.amount));
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(CategoryEvent(e.category));
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(TypeEvent(e.type));
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(DateEvent(e.dateTime));
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
                            return false; // Prevent actual dismissal on edit action
                          } else if (direction == DismissDirection.endToStart) {
                            BlocProvider.of<HomeblocBloc>(context)
                                .add(IdEvent(e.id));
                            // Handle Delete action
                            print(e.id);
                            // Show confirmation dialog or delete item directly
                            return await showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Delete Confirmation"),
                                content: Text(
                                    "Are you sure you want to delete this item?"),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      BlocProvider.of<HomeblocBloc>(context)
                                          .add(DeleteExpense());
                                      Navigator.of(context).pop(true);
                                    },
                                    child: Text("Delete"),
                                  ),
                                ],
                              ),
                            );
                          }
                          return false;
                        },
                        child: CommoncardWidget(
                          title: e.category,
                          subTitle: e.dateTime,
                          leading: e.type == "Expense"
                              ? Icon(Icons.arrow_downward, color: Colors.red)
                              : Icon(Icons.arrow_upward, color: Colors.green),
                          trailing: "\$${e.amount}",
                          trailingColor:
                              e.type == "Expense" ? Colors.red : Colors.green,
                        ),
                      ))
                  .toList() ??
              []
        ]),
      ),
    );
  }
}

Widget editBackground() {
  return Container(
    color: Colors.blue,
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.edit, color: Colors.white),
        SizedBox(height: 4),
        Text("Edit", style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}

Widget deleteBackground() {
  return Container(
    color: Colors.red,
    alignment: Alignment.centerRight,
    padding: EdgeInsets.only(right: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.delete, color: Colors.white),
        SizedBox(height: 4),
        Text("Delete", style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}
