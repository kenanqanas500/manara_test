import 'package:flutter/material.dart';
import 'package:manara_test/app/global/custom/textfields/general_text_field.dart';
import 'package:manara_test/core/enum/text_form_field_type.dart';
import 'package:manara_test/core/translation/app_texts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.type});
  final TextFormFieldType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TextFormFieldType.search:
        return SearchField();
      case TextFormFieldType.edit:
        return EditField();
    }
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralTextField(
      hintText: AppTexts.shipNameOrNumberForSeach,
    );
  }
}

class EditField extends StatelessWidget {
  const EditField({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralTextField(
      hintText: AppTexts.editShipTime,
    );
  }
}
