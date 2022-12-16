import 'package:flutter/material.dart';

class LableBuilder extends StatelessWidget {
  final String lable;
  const LableBuilder({
    Key? key,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w700,
          ),
    );
  }
}
