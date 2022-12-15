import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/shared/title_builder.dart';
import 'package:flutter_demo/data/model/images_list.dart';
import 'package:flutter_svg/svg.dart';

TextEditingController? serchTextEditingController = TextEditingController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // emptySpace,
                      SvgPicture.asset(
                        AppImages.menuSvg,
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 30,
                        child: SvgPicture.asset(
                          AppImages.smallLogoSvg,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                  emptySpace,
                  // TheInputField(
                  //   theHient: 'ابحث عن طلبك...',
                  //   isPassword: false,
                  //   theInputType: TextInputType.text,
                  //   theBorderColor: AppColor.kLightGreenBorder,
                  //   theRadus: 30,
                  // ),
                  const _searchFeiald(),

                  emptySpace,
                  emptySpace,
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.kLightGreenBorder),
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Row(
                        // textDirection: TextDirection.rtl,
                        children: const [
                          Expanded(
                              child: _titleCabsol(
                                  isActive: true, theTitle: 'العروض')),
                          Expanded(
                              child: _titleCabsol(
                                  isActive: false, theTitle: 'الطلبات')),
                          Expanded(
                              child: _titleCabsol(
                                  isActive: false, theTitle: 'الموردين')),
                        ],
                      ),
                    ),
                  ),
                  emptySpace,
                  emptySpace,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: .8,
                      ),
                      itemCount: vigataList.length,
                      // scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _itemCard(
                          img: vigataList[index],
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _itemCard extends StatelessWidget {
  final String img;
  const _itemCard({
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

class _titleCabsol extends StatelessWidget {
  final bool isActive;
  final String theTitle;
  const _titleCabsol({
    Key? key,
    required this.isActive,
    required this.theTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: 15,
      // ),

      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive
            ? AppColor.kPrimaryColor
            : Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Expanded(
        child: TitleBuilder(
            isBold: true,
            theTitle: theTitle,
            textColor: isActive
                ? Theme.of(context).scaffoldBackgroundColor
                : Theme.of(context).textTheme.headline6!.color!),
      ),
    );
  }
}

class _searchFeiald extends StatelessWidget {
  const _searchFeiald({super.key});

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



                          // _titleCabsol(
                          //   isActive: true,
                          //   theTitle: 'العروض',
                          // ),
                          // _titleCabsol(
                          //   isActive: false,
                          //   theTitle: 'العروض',
                          // ),
                          // _titleCabsol(
                          //   isActive: false,
                          //   theTitle: 'العروض',
                          // ),