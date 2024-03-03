import 'package:estatelocator/theme/theme.dart';
import 'package:flutter/material.dart';


class MenuCard extends StatelessWidget {
  final String judul ;
  final Color mainColor;
  final Color subColor ;
  final String imagePercent;
  final String imageUrl;
  final TextStyle text;
  final VoidCallback ontap;
  final double widhtCircle;
  final double heightCircle;
  final double topRight;
  final double bottomRight;
  final double topLeft;
  final double bottomLeft;

  const MenuCard({super.key , 
    required this.judul,
    required this.mainColor,
    required this.subColor, 
    required this.imagePercent, 
    required this.imageUrl, 
    required this.text,
    required this.ontap,
    required this.widhtCircle, 
    required this.heightCircle, 
    required this.topRight, 
    required this.bottomRight, 
    required this.topLeft, 
    required this.bottomLeft

    
    
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
          width: 174,
          height: 165,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(13), 
           boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Shadow color
        spreadRadius: 3, // Spread radius
        blurRadius: 5, // Blur radius
        offset: const Offset(3, 3), // Offset in x and y directions
      ),
       
    ],
          ),
         
          child: Stack(
            children: [
              Align(
            alignment: Alignment.bottomRight,
            child: Container(
                decoration: BoxDecoration(
                  color:subColor,
                  borderRadius:  BorderRadius.only(
                      topRight: Radius.circular(topRight),
                      bottomRight: Radius.circular(bottomLeft),
                      topLeft: Radius.circular(topLeft),
                      bottomLeft: Radius.circular(bottomLeft))),
              height: heightCircle,
              width: widhtCircle,
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Tahap", style: text.copyWith(fontSize: 12, fontWeight: light),), 
                      Text(judul, style: text.copyWith(fontSize: 14, fontWeight: medium),), 
                    
                      Column(
                        children: [
                          Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10 ,),
                              child: Image.asset(imagePercent , width: 35, height: 35,),
                            ), 
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Image.asset(imageUrl , width: 135, height:120, fit: BoxFit.contain,),
                            )),
                            
                          ],
                        ),
                        ],
                      )
                      
                    ],
                ),
              )
            ],
          )
          
          
        ),
    );
  }
}