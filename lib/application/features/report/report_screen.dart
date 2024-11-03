import 'package:expensetracker/application/features/report/bloc/report_bloc.dart';
import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ReportBloc>(context)
        .add(ReportEvent.loadExpensesByCategory());

    return BlocConsumer<ReportBloc, ReportState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(initial: () {
          return Center(child: Text("no data available"));
        }, loading: () {
          return CircularProgressIndicator();
        }, expensesByCategoryLoaded: (value) {
          final xLabels =
              value.map((entry) => entry["category"] ?? "Unknown").toList();

          // Safely map bar groups, handling null amounts.
          final barGroups = value.asMap().entries.map((entry) {
            final index = entry.key;
            final data = entry.value;
            final amount =
                data["totalAmount"] ?? 0.0; // Default to 0 if amount is null

            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                    toY: amount.toDouble(), // Convert amount to double
                    color: const Color.fromARGB(255, 138, 241, 239)),
              ],
              showingTooltipIndicators: [0],
            );
          }).toList();
          return Scaffold(
            appBar: AppBar(
              title: const Text("Report"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: value.fold(
                      0,
                      (prev, item) => item["totalAmount"] > prev
                          ? item["totalAmount"]
                          : prev),
                  barGroups: barGroups,
                  titlesData: FlTitlesData(
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          if (value.toInt() < 0 ||
                              value.toInt() >= xLabels.length) {
                            return const SizedBox.shrink();
                          }
                          return Text(
                            xLabels[value.toInt()],
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          );
                        },
                      ),
                    ),
                  ),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          );
        }, error: (e) {
          return Text(e);
        });
      },
    );
  }
}
