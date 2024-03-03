import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/home_menu.dart';
import 'package:estatelocator/widget/home/content/slide_detail_order.dart';
import 'package:estatelocator/widget/home/header/header_card/offering_card.dart';
import 'package:estatelocator/widget/home/header/slider_carousel.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
bool isExploring = false;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40, right: 25),
          child: Row(
            children: [
              Image.asset(
                'assets/Profile.png',
                width: 60,
                height: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Temukan \nHunian Impian",
                    style: dartTextColor.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                      height: 1.1, 
                      
                      
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Agen Properti Terbaik",
                    style: secondaryColorText.copyWith(
                        fontSize: 12, fontWeight: reguler),
                  )
                ],
              ),
              const Spacer(),
              Stack(
                children: [
                  badges.Badge(
                    badgeContent: const Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    ),
                    badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 8,
                            )
                          ]),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/ic/Bell.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

 Widget cardSlide() {
      return Container(
          padding: const EdgeInsets.only(top: 30, right: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OfferingCard(
                  color: darkGreen,
                  diskon: "20%",
                  nameHouse: "American House",
                  imageUrl: 'assets/home1.png',
                  startDate: "19 Nov 2023",
                  endDate: "15 Des 2023",
                ),
                const SizedBox(
                  width: 15,
                ),
                OfferingCard(
                    color: baseGreen,
                    diskon: "50%",
                    nameHouse: "GreenHouse",
                    imageUrl: "assets/home2.png",
                    startDate: "20 Nov 2023",
                    endDate: "15 Feb 2024"),
                const SizedBox(
                  width: 15,
                ),
                OfferingCard(
                    color: baseRed,
                    diskon: "80%",
                    nameHouse: "minimalistHouse",
                    imageUrl: "assets/home3.png",
                    startDate: "15 Des 2023",
                    endDate: "12 Mei 2024")
              ],
            ),
          ));
    }
  Widget title() {
        return Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pesanan Terbaru",
                  style:
                      dartTextColor.copyWith(fontSize: 18, fontWeight: medium)),
              Text(
                "Daftar pesanan terbaru anda",
                style: secondaryColorText.copyWith(
                    fontSize: 12, fontWeight: reguler),
              )
            ],
          ),
        );
      }
   
      Widget emptyOrderText() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Pesanan Kosong",
              style: dartTextColor.copyWith(fontSize: 18, fontWeight: medium)),
          Text(
            "Ayo tambahkan pesanan baru",
            style:
                secondaryColorText.copyWith(fontSize: 12, fontWeight: reguler),
          )
        ],
      );
    }
     emptyImageOrder() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Fly.png',
                width: 242,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 15),
                child: Image.asset(
                  "assets/NoOrder.png",
                  width: 318,
                  height: 196,
                ),
              )
            ],
          )
        ],
      );
    }

     Widget bottomEksplor() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExploring = !isExploring;
            });
          },
          child: Container(
            width: 196,
            height: 50,
            decoration: BoxDecoration(
              color: darkGreen,
              borderRadius: BorderRadius.circular(39),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Image.asset(
                    'assets/ic/Search.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Eksplor Properti",
                    style: whiteColorText.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

      Widget progresIndicatorLine() {
      return Padding(
        padding: const EdgeInsets.only(right: 25, top: 20),
        child: Container(
          width: 378,
          height: 58,
          decoration: BoxDecoration(
              color: baseWhite, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // pemesanan
                    Image.asset(
                      'assets/ic/circleoke.png',
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Container(
                      width: 55,
                      height: 2,
                      decoration: BoxDecoration(color: darkGreen),
                    ),
                    const SizedBox(
                      width: 2,
                    ),

                    //administrasi
                    Image.asset(
                      'assets/ic/circleoke.png',
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Container(
                      width: 55,
                      height: 2,
                      decoration: BoxDecoration(color: darkGreen),
                    ),
                    const SizedBox(
                      width: 2,
                    ),

                    //Pembangunan
                    Image.asset(
                      'assets/ic/clock.png',
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Image.asset(
                      'assets/ic/line.png',
                      width: 55,
                      height: 2,
                    ),
                    const SizedBox(
                      width: 2,
                    ),

                    //serah terima
                    Image.asset(
                      'assets/ic/cd.png',
                      width: 16,
                      height: 17,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Image.asset(
                      'assets/ic/line.png',
                      width: 55,
                      height: 2,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pemesanan",
                        style: dartTextColor.copyWith(
                            fontSize: 10, fontWeight: reguler),
                      ),
                      Text(
                        "Administrasi",
                        style: dartTextColor.copyWith(
                            fontSize: 10, fontWeight: reguler),
                      ),
                      Text(
                        "Pembangunan",
                        style: dartTextColor.copyWith(
                            fontSize: 10, fontWeight: reguler),
                      ),
                      Text(
                        "Serah Terima",
                        style: secondaryColorText.copyWith(
                            fontSize: 10, fontWeight: reguler),
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

    Widget tittleMenu() {
      return Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Menu",
                  style:
                      dartTextColor.copyWith(fontSize: 18, fontWeight: medium),
                ),
                Text(
                  "Daftar menu transaksi",
                  style: secondaryColorText.copyWith(
                      fontSize: 12, fontWeight: reguler),
                )
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/ic/Category.png',
              width: 17,
              height: 17,
            )
          ],
        ),
      );
    }
   


    Widget exploreContent() {
      if (isExploring) {
        // If exploring, show fillorder and fillimage widgets
        return  Column(
          children: [
          progresIndicatorLine(),
            const SizedBox(height: 20),
            const SlideDetailOrder(),
            const SizedBox(height: 25),
            tittleMenu(),
            const SizedBox(height: 20),
            const HomeMenu(),
          ],
        );
      } else {
        // Otherwise, show the default content
        return Column(
          children: [
            emptyImageOrder(),
            emptyOrderText()
          
          ],
        );
      }
    }
  
      Widget tittleExplore() {
      return Padding(
        padding: const EdgeInsets.only(top: 30, right: 30),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pesanan Terbaru",
                  style:
                      dartTextColor.copyWith(fontSize: 18, fontWeight: medium),
                ),
                Text(
                  "Daftar pesanan terbaru anda",
                  style: secondaryColorText.copyWith(
                      fontSize: 12, fontWeight: reguler),
                )
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/ic/Right.png',
              width: 24,
              height: 24,
            )
          ],
        ),
      );
    }
    
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 60),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              header(),
           bannerSlide(),
              isExploring ? tittleExplore() : title(),
             
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( right: 15),
                          child: exploreContent(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (!isExploring) bottomEksplor(),
                      ],
                    )),
            ]),
          ),
        ],
      ),
    );
  }
}
