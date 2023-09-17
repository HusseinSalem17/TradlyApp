import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../data/popular_tagline_words.dart';

class CustomTextFieldInputChip extends StatefulWidget {
  const CustomTextFieldInputChip({Key? key}) : super(key: key);

  @override
  State<CustomTextFieldInputChip> createState() =>
      _CustomTextFieldInputChipState();
}

class _CustomTextFieldInputChipState extends State<CustomTextFieldInputChip> {
  final TextEditingController _textEditingController = TextEditingController();
  List<String> selectedChips = [];
  List<String> availableChips = [];
  Widget? hintTextChip;

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
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
          controller: _textEditingController,
          onChanged: (value) {
            setState(() {
              // Filter available chips based on user input
              availableChips = PopularTaglineWords.popularWords
                  .where((word) =>
                      word.toLowerCase().startsWith(value.toLowerCase()))
                  .toList();
              if (availableChips.isNotEmpty &&
                  _textEditingController.text.isNotEmpty) {
                hintTextChip = GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedChips.add(availableChips[0]);
                      _textEditingController.clear();
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
                _textEditingController.clear();
                hintTextChip = null;
              });
            }
          },
          decoration: InputDecoration(
            labelText: 'Tagline',
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
