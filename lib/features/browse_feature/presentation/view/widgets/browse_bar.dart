import 'package:flutter/material.dart';

import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/search_text_field.dart';
import 'package:tradly_app/features/browse_feature/presentation/view/widgets/browse_botton.dart';

class BrowseBar extends StatefulWidget {
  const BrowseBar({
    super.key,
  });
  //final void Function(String?) onChange;

  @override
  State<BrowseBar> createState() => _BrowseBarState();
}

class _BrowseBarState extends State<BrowseBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.15,
        color: AssetsColors.kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Spacer(),
              SearchTextField(hint: 'Search Product', onchange: (value) {}),
              const Spacer(),
              const Row(
                children: [
                  BrowseButton(
                    title: 'Sort by',
                    icon: Icon(
                      Icons.sort_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  BrowseButton(
                    title: 'Location',
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  BrowseButton(
                    title: 'Category',
                    icon: Icon(
                      Icons.list_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
