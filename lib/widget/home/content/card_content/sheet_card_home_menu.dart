import 'package:estatelocator/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class SubMenu extends StatelessWidget {
  final String? notif;
  final String imageUrl;
  final String title;
  final String subtitle;
  final TextStyle color;
  final bool pembangunan;

  const SubMenu({
    super.key,
    this.notif,
    required this.imageUrl,
    required this.title,
    required this.color,
    required this.subtitle,
    this.pembangunan = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: baseWhite,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Stack(
            // isi content container menu
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(90),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  height: 90,
                  width: 110,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        if (notif != null)
                          badges.Badge(
                            position: badges.BadgePosition.topEnd(
                              top: -10,
                              end: -7,
                            ),
                            badgeContent: Text(
                              notif!,
                              style: const TextStyle(color: Colors.white),
                            ),
                            badgeStyle:
                                const badges.BadgeStyle(badgeColor: Colors.red),
                            child: Image.asset(
                              imageUrl,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        if (notif == null)
                          Image.asset(
                            imageUrl,
                            width: 40,
                            height: 40,
                          ),
                      ],
                    ),
                    Text(
                      title,
                      style: color.copyWith(fontSize: 10, fontWeight: light),
                    ),
                    Text(
                      subtitle,
                      style: color.copyWith(fontSize: 9, fontWeight: bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        if (pembangunan == false && notif == null)
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white10.withOpacity(0.6),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(90),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            height: 90,
            width: 110,
          ))
      ],
    );
  }
}
