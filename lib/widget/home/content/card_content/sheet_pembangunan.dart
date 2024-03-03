import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_card_home_menu.dart';
import 'package:flutter/material.dart';


class SheetPembangunan extends StatelessWidget {
  const SheetPembangunan({super.key});

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
                    "Tahap Pembangunan",
                    style: dartTextColor.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    "Daftar menu tahap pembangunan rumah",
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
                      // row 1
                      Row(
                        
                        children: [
                          SubMenu(
                            pembangunan: true,
                              imageUrl: 'assets/ic_sheet/100p.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "Persiapan"),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                            pembangunan: true,
                              imageUrl: 'assets/ic_sheet/20.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "Pondasi & Struktur"),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                            pembangunan: true,
                              imageUrl: 'assets/ic_sheet/30.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "Rumah Unfinished")
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),

                      Row(
                        
                        children: [
                          SubMenu(
                            pembangunan: true,
                              imageUrl: 'assets/ic_sheet/40.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "Finishing & Interior"),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                            pembangunan: true,
                              imageUrl: 'assets/ic_sheet/0p.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "Pembersihan")
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
