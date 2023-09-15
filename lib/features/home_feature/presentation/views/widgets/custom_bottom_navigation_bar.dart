import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../manager/home_cubit/home_cubit.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.house,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          label: 'Browse',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.store,
          ),
          label: 'Store',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.listCheck,
          ),
          label: 'Order History',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_3_sharp,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: BlocProvider.of<HomeCubit>(context).currentIndex,
      onTap: (index) {
        setState(() {
          BlocProvider.of<HomeCubit>(context).getCurrentIndex(index);
        });

      },
      fixedColor: AssetsColors.kSecondaryColor,
      type:BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }
}
