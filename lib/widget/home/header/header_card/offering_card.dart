import 'package:estatelocator/theme/theme.dart';
import 'package:flutter/material.dart';

class OfferingCard extends StatelessWidget {
  final Color color;
  final String diskon;
  final String nameHouse;
  final String imageUrl;
  final String startDate;
  final String endDate;

  const OfferingCard(
      {super.key,
      required this.color,
      required this.diskon,
      required this.nameHouse,
      required this.imageUrl,
      required this.startDate,
      required this.endDate});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 358,
        height: 155,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text.rich(
                    TextSpan(
                      text: diskon,
                      style: whiteColorText.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                      children: [
                        TextSpan(
                            text: ' Diskon',
                            style: whiteColorText.copyWith(
                                fontSize: 15, fontWeight: reguler)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    nameHouse,
                    style: whiteColorText.copyWith(
                        fontSize: 20, fontWeight: medium),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('assets/ic/Calendar.png', width: 12, height: 12,)
                          
                        ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Periode ",
                      style: whiteColorText.copyWith(
                          fontSize: 10, fontWeight: light),
                    ),
                    Text(
                      startDate,
                      style: whiteColorText.copyWith(
                          fontSize: 10, fontWeight: light),
                    ),
                    Text(
                      " s/d ",
                      style: whiteColorText.copyWith(
                          fontSize: 10, fontWeight: light),
                    ),
                    Text(
                      endDate,
                      overflow: TextOverflow.clip,
                      style: whiteColorText.copyWith(
                          fontSize: 10, fontWeight: light),
                    )
                  ],
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
               imageUrl,
                width: 140,
                height: 160,
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
