import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../data/popular_tagline_words.dart';

class CustomTextFieldInputChip extends StatefulWidget {
  final TextEditingController textEditingController;
  final String labelText;

  const CustomTextFieldInputChip({
    Key? key,
    required this.textEditingController,
    required this.labelText,
  }) : super(key: key);

  @override
  State<CustomTextFieldInputChip> createState() =>
      _CustomTextFieldInputChipState();
}

class _CustomTextFieldInputChipState extends State<CustomTextFieldInputChip> {
  List<String> selectedChips = [];
  List<String> availableChips = [];
  Widget? hintTextChip;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            children: selectedChips.map((String chipLabel) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Chip(
                  backgroundColor: const Color(0xffD8D8D8),
                  label: Text(
                    chipLabel,
                    style: const TextStyle(
                      color: AssetsColors.kPrimaryTextColor,
                    ),
                  ),
                  deleteIcon: const FaIcon(
                    FontAwesomeIcons.xmark,
                    size: 17,
                    color: AssetsColors.kPrimaryTextColor,
                  ),
                  onDeleted: () {
                    setState(() {
                      selectedChips.remove(chipLabel);
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ),
        TextField(
          controller: widget.textEditingController,
          onChanged: (value) {
            setState(() {
              // Filter available chips based on user input
              availableChips = PopularTaglineWords.popularWords
                  .where((word) =>
                      word.toLowerCase().startsWith(value.toLowerCase()))
                  .toList();
              if (availableChips.isNotEmpty &&
                  widget.textEditingController.text.isNotEmpty) {
                hintTextChip = GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedChips.add(availableChips[0]);
                      widget.textEditingController.clear();
                      hintTextChip = null;
                    });
                  },
                  child: Chip(
                    label: Text(
                      availableChips.isNotEmpty ? availableChips[0] : '',
                    ),
                  ),
                );
              } else {
                hintTextChip = null;
              }
            });
          },
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              setState(() {
                selectedChips.add(value);
                widget.textEditingController.clear();
                hintTextChip = null;
              });
            }
          },
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: Styles.textStyleRegular14.copyWith(
              color: AssetsColors.kTextGrey,
              fontSize: 16,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AssetsColors.kTextGrey.shade300,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AssetsColors.kTextGrey.shade300,
              ),
            ),
            hintStyle: const TextStyle(
              color: AssetsColors.kTextGrey,
            ),
            suffixIcon: hintTextChip,
          ),
        )
      ],
    );
  }
}
