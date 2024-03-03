import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_card_home_menu.dart';
import 'package:flutter/material.dart';
class SheetAdmin extends StatelessWidget {
  const SheetAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
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
                    "Tahap Administrasi",
                    style: dartTextColor.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    "Daftar menu tahap administrasi",
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
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Column(
                    children: [
                      // row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SubMenu(
                            imageUrl: 'assets/ic_sheet/tahapSps.png',
                            title: "Tahap",
                            color: dartTextColor,
                            subtitle: "SPS",
                            notif: '!',
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                           
                              imageUrl: 'assets/ic_sheet/tahapSpr.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "SPR",
                              
                              ),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                             
                              imageUrl: 'assets/ic_sheet/tahapPpjb.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "PPJB"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SubMenu(
                              imageUrl: 'assets/ic_sheet/document.png',
                              title: "Daftar",
                              color: secondaryColorText,
                              subtitle: "Dokumen"),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                              imageUrl: 'assets/ic_sheet/tahapSp3k.png',
                              title: "Tahap",
                              color: secondaryColorText,
                              subtitle: "SP3K"),
                          const SizedBox(
                            width: 15,
                          ),
                          SubMenu(
                              imageUrl: 'assets/ic_sheet/TahapAngsuran.png',
                              title: "Bayar",
                              color: secondaryColorText,
                              subtitle: "Angsuran")
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
