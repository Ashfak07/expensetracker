import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CommoncardWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? leading;
  final String? trailing;
  final double? cardHeight;
  final double? cardWidth;
  final Color? trailingColor;
  final Color? leadingColor;

  const CommoncardWidget(
      {super.key,
      this.leading,
      this.subTitle,
      this.title,
      this.trailing,
      this.cardHeight,
      this.trailingColor,
      this.leadingColor,
      this.cardWidth});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: leading ?? null,
        title: Text(
          title ?? "",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle ?? ""),
        trailing: Text(
          trailing ?? "",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: trailingColor),
        ),
        onTap: () {},
      ),
    ).center();
  }
}
