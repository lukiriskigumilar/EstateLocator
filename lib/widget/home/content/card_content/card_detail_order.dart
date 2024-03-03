import 'package:dotted_line/dotted_line.dart';
import 'package:estatelocator/theme/theme.dart';
import 'package:flutter/material.dart';

class CardDetailOrder extends StatelessWidget {
  final String idOrder;
  final String nameHome;
  final String imageHome;
  final String location;
  final String date;
  final String time;
  final String homePrice ;
  final bool isLatePayment;
  final String latePaymentAmount ;
  final String latePaymentDays ;

  const CardDetailOrder({
    super.key, 
    required this.idOrder,
    required this.nameHome,
    required this.imageHome,
    required this.location,
    required this.date,
    required this.time,
     required this.homePrice,
     this.isLatePayment = false,
     this.latePaymentAmount= "0",
     this.latePaymentDays =  "0",
     
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10, right: 5),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(children: [
              Container(
                width: 360,
                height: 185,
                decoration: BoxDecoration(
                  color: baseWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                           idOrder,
                            style: dartTextColor.copyWith(
                                fontSize: 12, fontWeight: reguler),
                          ),
                          Container(
                            width: 63,
                            height: 19,
                            decoration: BoxDecoration(
                                color: baseGreen,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6,
                              ),
                              child: Text(
                                "Komersil",
                                style: whiteColorText.copyWith(
                                    fontSize: 12, fontWeight: reguler),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image:  DecorationImage(
                                    image: AssetImage(imageHome))),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                  'assets/ic/house-2.png',
                                    width: 14,
                                    height: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    nameHome,
                                    style: dartTextColor.copyWith(
                                        fontSize: 12, fontWeight: reguler),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/ic/location.png',
                                    width: 14,
                                    height: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    location,
                                    style: dartTextColor.copyWith(
                                        fontSize: 12, fontWeight: reguler),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/ic/calenderr.png',
                                    width: 14,
                                    height: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "$date, $time",
                                    style: dartTextColor.copyWith(
                                        fontSize: 12, fontWeight: reguler),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: "Rp ",
                                      style: dartTextColor.copyWith(
                                          fontSize: 12, fontWeight: reguler),
                                      children: [
                                        TextSpan(
                                            text: homePrice.toString(),
                                            style: dartTextColor.copyWith(
                                                fontSize: 14,
                                                fontWeight: bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (isLatePayment == true)
                      const DottedLine(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor:
                            Colors.grey, // Change to the desired gray color
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                        if (isLatePayment == true)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/ic/frame.png',
                                width: 14,
                                height: 14,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: " Denda Rp ",
                                  style: dartTextColor.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                  children: [
                                    TextSpan(
                                        text: latePaymentAmount.toString(),
                                        style: dartTextColor.copyWith(
                                            fontSize: 14, fontWeight: bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                            if (isLatePayment == true)
                          Row(
                            children: [
                              Container(
                                width: 110,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: darkGreen,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 6,
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/ic/danger.png',
                                          width: 14,
                                          height: 14,
                                        ),
                                        Text(
                                          " Terlambat $latePaymentDays Hari",
                                          style: whiteColorText.copyWith(
                                              fontSize: 10,
                                              fontWeight: reguler),
                                        ),
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ]),
    );
  }
}