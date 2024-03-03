import 'package:estatelocator/theme/theme.dart';
import 'package:estatelocator/widget/home/content/card_content/card_detail_order.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideDetailOrder extends StatefulWidget {
  const SlideDetailOrder({Key? key}) : super(key: key);

  @override
  State<SlideDetailOrder> createState() => _SlideDetailOrderState();
}

class _SlideDetailOrderState extends State<SlideDetailOrder> {
  int _currentIndex = 0;

  List<Widget> items = [
    CardDetailOrder(
      idOrder: "#881726478123", 
      nameHome: "Candra Bhirawa", 
      imageHome: 'assets/homeOrder.png', 
      location: "Lotus, Kavling A1, Blok B No. 4", 
      date: "25/11/2022", 
      time: "09:00",
      homePrice: "850.000.000"
    ),
    CardDetailOrder(
      idOrder: "#881726478124", 
      nameHome: "Bukit Raya Residance", 
      imageHome: 'assets/Image.png', 
      location: "Jaguar, Kavling A1, Blok D No. 4", 
      date: "25/12/2023", 
      time: "09:00",
      homePrice: "985.799.300",
      isLatePayment: true,
      latePaymentAmount: "8.550.000",
      latePaymentDays: "7",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildDots() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item) {
          int index = items.indexOf(item);
          return Container(
          width: 19,
                    height: 3,
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: _currentIndex == index ? darkGreen : Colors.grey,
            ),
          );
        }).toList(),
      );
    }

    return Column(
      children: [
        CarouselSlider(
          items: items.map((item) {
            return Container(
            
              child: Center(
                child: item, // Use the CardDetailOrder widget directly
              ),
            );
          }).toList(),
          options: CarouselOptions(
             enlargeCenterPage: true,
          
          
         
          enableInfiniteScroll: true,
 
          viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            
            },
            // Add other options as needed
          ),
        ),
        buildDots(),
      ],
    );
  }
}
