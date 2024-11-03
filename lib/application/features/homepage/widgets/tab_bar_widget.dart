import 'package:expensetracker/application/features/homepage/bloc/homebloc_bloc.dart';
import 'package:expensetracker/application/features/homepage/bloc/homebloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class TabBarWidget extends StatelessWidget {
  final HomeblocState state;
  const TabBarWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "All",
      "Food",
      "Travel",
      "Movie",
      "Salary"
    ];
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: categories.map((category) {
          bool isSelected = category == state.selectedCategory;
          return GestureDetector(
            onTap: () {
              context.read<HomeblocBloc>().add(SelectCategoryEvent(category));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: isSelected ? Colors.black : white, width: 4),
                  ),
                ),
                child: Text(
                  category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
