import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:expensetracker/domain/model/expense_add_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatelessWidget {
  ExpenseAddModel? model;
  // final HomeblocState state;
  CustomDatePicker({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? selectedDate;
    return BlocBuilder<HomeblocBloc, HomeblocState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            selectedDate = await _selectDate(context);
            if (selectedDate != null) {
              String formattedDate =
                  DateFormat('d MMMM, yyyy').format(selectedDate!);
              print(formattedDate); // Print the formatted date
              // Update your state or model here
              BlocProvider.of<HomeblocBloc>(context)
                  .add(DateEvent(formattedDate)); // Pass the formatted date
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.expensesModel?.dateTime == null
                      ? 'Select Date'
                      : state.expensesModel?.dateTime ?? "",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.calendar_today, color: Colors.grey.shade600),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 1),
    );
    return pickedDate;
  }
}
