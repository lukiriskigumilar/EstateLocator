import 'package:estatelocator/cubit/page_cubit_cubit.dart';
import 'package:estatelocator/pages/building_page.dart';
import 'package:estatelocator/pages/cart_page.dart';
import 'package:estatelocator/pages/document_page.dart';
import 'package:estatelocator/pages/home_page.dart';
import 'package:estatelocator/pages/user_page.dart';
import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/navbottom/custom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigasiBottom extends StatelessWidget {
  const NavigasiBottom({super.key});
  

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const BuildingPage();
        case 2:
          return const DocumentPage();
        case 3:
          return const CartPage();
        case 4:
          return const UserPage();

        default:
          return const HomePage();
      }
    }
  
  Widget customBottomNavigator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: baseWhite,
          borderRadius: BorderRadius.circular(18),
        ),
        child: BlocBuilder<PageCubit, int>(
          builder: (context, currentIndex) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationItem(
                  index: 0,
                  imageUrl: currentIndex == 0
                      ? 'assets/icon_navbottom/Home_Filled.png'
                      : 'assets/icon_navbottom/home.png',
                ),
                CustomBottomNavigationItem(
                  index: 1,
                   imageUrl: currentIndex == 1
                      ? 'assets/icon_navbottom/Building_Filled.png'
                      : 'assets/icon_navbottom/Building_Broken.png',
                ),
                CustomBottomNavigationItem(
                  index: 2,
                  imageUrl: currentIndex == 2
                      ? 'assets/icon_navbottom/Document_Filled.png'
                      : 'assets/icon_navbottom/Document_Broken.png',
                ),
                CustomBottomNavigationItem(
                  index: 3,
                 imageUrl: currentIndex == 3
                      ? 'assets/icon_navbottom/Cart_Filled.png'
                      : 'assets/icon_navbottom/Cart_Broken.png',
                ),
                CustomBottomNavigationItem(
                  index: 4,
                  imageUrl: currentIndex == 4
                      ? 'assets/icon_navbottom/User_Filled.png'
                      : 'assets/icon_navbottom/User_Broken.png',
                ),
              ],
            );
          },
        ),
      ),
    );
  }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: baseWhite,
          body: Stack(
            children: [buildContent(currentIndex), customBottomNavigator()],
          ),
        );
      },
    );
  }
}
