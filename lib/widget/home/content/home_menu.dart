import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/home_menu_card.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_adminstrasi.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_akad.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_pembangunan.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_pemesanan.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            //Pemesanan Menu
            MenuCard(
              judul: "Pemesanan",
              mainColor: darkGreen,
              subColor: moreDarkGreen     ,
              imagePercent: 'assets/ic/100.png',
              imageUrl: 'assets/menu1.png',
              text: whiteColorText,
              widhtCircle: 130, 
              heightCircle: 170, 
              topRight: 15,
              bottomRight: 15,
              topLeft: 100, 
              bottomLeft: 100, 
              ontap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SheetPemesanan();
                    });
              },
            ),

            const SizedBox(
              width: 15,
            ),

            //adminstrasi menu
            MenuCard(
                judul: "Adminstrasi",
                mainColor: baseWhite,
                subColor: Colors.grey.shade100,
                imagePercent: 'assets/ic/50.png',
                imageUrl: 'assets/menu2.png',
                text: dartTextColor,
                widhtCircle: 200, 
                heightCircle: 110, 
                topRight: 20, 
                bottomRight: 0, 
                topLeft: 90,
                bottomLeft: 0,
                ontap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const SheetAdmin();
                      });
                })
          ])),
      const SizedBox(
        height: 15,
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            //Pembangunan Menu
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SheetPembangunan();
                    });
              },
              child: Stack(
                children: [
                  MenuCard(
                      judul: "Pembangunan",
                      mainColor: baseWhite,
                      subColor: Colors.grey.shade100,
                      imagePercent: 'assets/ic/0.png',
                      imageUrl: 'assets/menu3.png',
                      text: secondaryColorText,
                       widhtCircle: 200, 
                heightCircle: 110, 
                topRight: 20, 
                bottomRight: 0, 
                topLeft: 90,
                bottomLeft: 0,
                      ontap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const SheetPembangunan();
                            });
                      }),
                  Positioned.fill(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.5)),
                  ))
                ],
              ),
            ),

            const SizedBox(
              width: 15,
            ),

            //Akad & Serah terima menu
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const AkadSerahTerimaSheet();
                    });
              },
              child: Stack(
                children: [
                  MenuCard(
                      judul: "Akad & Serah Terima",
                      mainColor: baseWhite,
                      subColor: Colors.grey.shade100,
                      imagePercent: 'assets/ic/0.png',
                      imageUrl: 'assets/doormenu.png',
                      text: secondaryColorText,
                       widhtCircle: 200, 
                heightCircle: 110, 
                topRight: 20, 
                bottomRight: 0, 
                topLeft: 90,
                bottomLeft: 0,
                      ontap: () {}),
                  Positioned.fill(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.5)),
                  ))
                ],
              ),
            )
          ]))
    ]);
  }
}
