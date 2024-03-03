import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/sheet_card_home_menu.dart';
import 'package:flutter/material.dart';

class SheetPemesanan extends StatelessWidget {
  const SheetPemesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: 243,
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
                    "Tahap Pemesanan",
                    style: dartTextColor.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  Text(
                    "Daftar menu tahap pemesanan",
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
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    
                child:
                    // row 1
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SubMenu(
                      imageUrl: 'assets/ic_sheet/dollars.png',
                      title: "Booking",
                      color: dartTextColor,
                      subtitle: "Fee",
                      notif: '3',
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SubMenu(
                        imageUrl: "assets/ic_sheet/wallet.png",
                        title: "Pesanan",
                        color: secondaryColorText,
                        subtitle: "Belum Bayar"),
                    const SizedBox(
                      width: 15,
                    ),
                    SubMenu(
                        imageUrl: "assets/ic_sheet/riwayat.png",
                        title: "Riwayat",
                        color: secondaryColorText,
                        subtitle: "Pemesanan")
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
