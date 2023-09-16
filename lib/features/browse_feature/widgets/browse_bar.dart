import 'package:flutter/material.dart';
import 'package:tradly_app/core/utils/colors.dart';
import 'package:tradly_app/core/widgets/search_text_field.dart';
import 'package:tradly_app/features/browse_feature/widgets/browse_botton.dart';

class BrowseBar extends StatelessWidget {
  const BrowseBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height *0.15,
        color: AssetsColors.kSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Spacer(),
              SearchTextField(
                hint: 'Search Product',
              ),
              const Spacer(),
              Row(
                children: [
                  BrowseButton(
                    title: 'Sort by',
                    icon: const Icon(
                      Icons.sort_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  BrowseButton(
                    title: 'Location',
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  BrowseButton(
                    title: 'Category',
                    icon: const Icon(
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