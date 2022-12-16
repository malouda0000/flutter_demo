import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/constants.dart';

class ItemCard extends StatelessWidget {
  final String img;
  const ItemCard({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // width: 40,
      // height: 180,
      decoration: BoxDecoration(
          // color: Colors.indigo,
          borderRadius: BorderRadius.circular(
            theSmallPadding,
          ),
          border: Border.all(
            color: AppColor.kPrimaryColor,
          )),

      child: Expanded(
          child: Column(
        children: [
          // SvgPicture.asset(
          //   AppImages.menuSvg,
          // ),

          Image.asset(
            img,
            // width: 50,
            // height: 50,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: AppColor.kPrimaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.add,
                    // size: 16,
                  )),
            ],
          )
        ],
      )),
    );
  }
}
