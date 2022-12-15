import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/view/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class SearchFeiald extends StatelessWidget {
  const SearchFeiald({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: theSmallPadding,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.kLightGreenBorder),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          SvgPicture.asset(
            AppImages.searchSvg,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              textDirection: TextDirection.rtl,
              // validator: theValidator,
              // onSubmitted: ,
              // key: theKey,
              controller: serchTextEditingController,
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                // fillColor: AppColor.kPrimaryColor.withOpacity(.2),
                hintTextDirection: TextDirection.rtl,

                border: InputBorder.none,
                hintText: 'ابحث عن طلبك',
                hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColor.kLightTextColor,
                    ),
                // hintStyle: TextStyle(
                //   color: Colors.black,
                // ),
              ),
            ),
          ),
          const Spacer(),
          const Spacer(),
          // Spacer(),
        ],
      ),
    );
  }
}
