import 'package:estatelocator/cubit/page_cubit_cubit.dart';
import 'package:estatelocator/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigationItem({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    //print
    int stateValue = context.watch<PageCubit>().state;
    // ignore: avoid_print
    print('$stateValue');
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(imageUrl,
              width: 40,
              height: 40,
              color: context.read<PageCubit>().state == index
                  ? darkGreen
                  : gray400),
          Container(
            width: 30,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: context.read<PageCubit>().state == index
                ? Image.asset('assets/icon_navbottom/1.png')
                : const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
