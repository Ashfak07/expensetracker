import 'package:expensetracker/application/core/widgets/custom_date_picker.dart';
import 'package:expensetracker/application/core/widgets/custom_dropdown.dart';
import 'package:expensetracker/application/core/widgets/custom_textfiel.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import '../home_page.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeblocBloc, HomeblocState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(16),
          width: context.width(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bottom Sheet Title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                BlocBuilder<HomeblocBloc, HomeblocState>(
                  builder: (context, state) {
                    List<String> types = [
                      "Food",
                      "Travel",
                      "Movie",
                      "Salary",
                    ];
                    return CustomDropdown(
                      hint: "Select Category",
                      value: state.expensesModel
                          ?.category, // Get current selected category
                      onChanged: (value) {
                        // Trigger category change event in bloc
                        BlocProvider.of<HomeblocBloc>(context)
                            .add(CategoryEvent(value));
                      },
                      items: types.map((category) {
                        return DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                    );
                  },
                ),
                10.height,
                BlocBuilder<HomeblocBloc, HomeblocState>(
                  builder: (context, state) {
                    return CustomTextField(
                      labelText: state.expensesModel?.amount,
                      hintText: "Amount",
                      onChanged: (value) {
                        BlocProvider.of<HomeblocBloc>(context)
                            .add(AmountEvent(value));
                      },
                    );
                  },
                ),
                10.height,
                BlocBuilder<HomeblocBloc, HomeblocState>(
                  builder: (context, state) {
                    List<String> types = ["Income", "Expense"];
                    return CustomDropdown(
                      hint: "Select Denomination Type",
                      value: state.expensesModel?.type,
                      onChanged: (value) {
                        BlocProvider.of<HomeblocBloc>(context)
                            .add(TypeEvent(value));
                      },
                      items: types.map((category) {
                        return DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                    );
                  },
                ),
                10.height,
                CustomDatePicker(),
                ElevatedButton(
                    onPressed: () {
                      if (state.expensesModel!.id == null ||
                          state.expensesModel!.id == "") {
                        BlocProvider.of<HomeblocBloc>(context)
                            .add(SaveExpenseEvent());
                      } else {
                        BlocProvider.of<HomeblocBloc>(context)
                            .add(EditExpense());
                      }
                    },
                    child: state.expensesModel!.id == null ||
                            state.expensesModel!.id == ""
                        ? Text("save")
                        : Text("Update"))
              ],
            ),
          ),
        );
      },
    );
  }
}
