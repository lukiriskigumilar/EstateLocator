import 'package:carousel_slider/carousel_slider.dart'; // Import the carousel_slider package
import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/header/header_card/offering_card.dart';
import 'package:flutter/material.dart';

class bannerSlide extends StatelessWidget {
  const bannerSlide ({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 25),
      child: CarouselSlider( // Wrap your Row with CarouselSlider widget
        options: CarouselOptions(
          height: 155, // Adjust the height as needed
          enlargeCenterPage: true,
          
          
         
          enableInfiniteScroll: true,
 
          viewportFraction: 1,
        ),
        items: [
          OfferingCard(
            color: darkGreen,
            diskon: "20%",
            nameHouse: "American House",
            imageUrl: 'assets/home1.png',
            startDate: "19 Nov 2023",
            endDate: "15 Des 2023",
          ),
          OfferingCard(
                    color: baseGreen,
                    diskon: "50%",
                    nameHouse: "GreenHouse",
                    imageUrl: "assets/home2.png",
                    startDate: "20 Nov 2023",
                    endDate: "15 Feb 2024"),
          OfferingCard(
                    color: baseRed,
                    diskon: "80%",
                    nameHouse: "minimalistHouse",
                    imageUrl: "assets/home3.png",
                    startDate: "15 Des 2023",
                    endDate: "12 Mei 2024")
          
        ],
      ),
    );
  }
}
