import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CardWidget extends StatelessWidget {
  final int? balance;
  final int? totalIncome;
  final int? totalExpense;
  const CardWidget(
      {super.key, this.balance, this.totalIncome, this.totalExpense});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Container(
          width: context.width(),
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 138, 241, 239),
                const Color.fromARGB(255, 212, 213, 215)
              ])),
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18, color: black),
                  ),
                  Text(
                    "\$${balance}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, color: black),
                  ),
                  10.height,
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                          ),
                          Text("Income")
                        ],
                      ),
                      Text(
                        "\$${totalIncome}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold, color: black),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.red,
                      ),
                      Text("Expense")
                    ],
                  ),
                  Text(
                    "\$${totalExpense}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold, color: black),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
