import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_card_home_menu.dart';
import 'package:flutter/material.dart';

class AkadSerahTerimaSheet extends StatelessWidget {
  const AkadSerahTerimaSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 428,
        height: 371,
        decoration: BoxDecoration(
            color: baseWhite, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 5,
                    decoration: BoxDecoration(
                        color: gray300,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tahap akad & Serah Terima",
                    style: dartTextColor.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    "Daftar menu tahap akad & serah terima",
                    style: secondaryColorText.copyWith(
                        fontSize: 12, fontWeight: reguler),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              // garis pemisah
              Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(color: gray300),
              ),

              //
              Padding(
                 padding: const EdgeInsets.only(top: 20, left: 50, right: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SubMenu(
                          imageUrl: 'assets/ic_sheet/akad.png',
                          title: "Tahap",
                          color: secondaryColorText,
                          subtitle: "Akad",
                          notif: "!",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SubMenu(
                            imageUrl: 'assets/ic_sheet/kunci.png',
                            title: "Tahap",
                            color: secondaryColorText,
                            subtitle: "Serah Terima \nBangunan"),
                        const SizedBox(
                          width: 15,
                        ),
                        SubMenu(
                            imageUrl: 'assets/ic_sheet/legalitas.png',
                            title: "Tahap",
                            color: secondaryColorText,
                            subtitle: "Serah Terima Legalitas")
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        SubMenu(
                            imageUrl: 'assets/ic_sheet/warning.png',
                            title: "Daftar",
                            color: secondaryColorText,
                            subtitle: "Komplain"),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
