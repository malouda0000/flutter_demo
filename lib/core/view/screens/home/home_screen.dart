import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/view/screens/home/widgets/items_card.dart';
import 'package:flutter_demo/core/view/screens/home/widgets/search_feiald.dart';
import 'package:flutter_demo/core/view/screens/home/widgets/title_cabsol.dart';
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
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  CustomAppBar(),
                  emptySpace,
                  SearchFeiald(),
                  emptySpace,
                  emptySpace,
                  CategoresSwitcher(),
                  emptySpace,
                  emptySpace,
                  HomeBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: .8,
        ),
        itemCount: vigataList.length,
        itemBuilder: (context, index) {
          return ItemCard(
            img: vigataList[index],
          );
        });
  }
}

class CategoresSwitcher extends StatelessWidget {
  const CategoresSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            Expanded(child: TitleCabsol(isActive: true, theTitle: 'العروض')),
            Expanded(child: TitleCabsol(isActive: false, theTitle: 'الطلبات')),
            Expanded(child: TitleCabsol(isActive: false, theTitle: 'الموردين')),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // custom appbar
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
    );
  }
}
