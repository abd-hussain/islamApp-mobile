import 'package:flutter/material.dart';
import 'package:islam_app/models/app_model/language.dart';
import 'package:islam_app/screens/initial/widgets/i_list_of_languages_tile.dart';
import 'package:islam_app/utils/constants/app_constant.dart';

class ListOfLanguagesView extends StatelessWidget {
  const ListOfLanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<LanguageModel> languages = AppConstant.languages;
    return Expanded(
      child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return ListOfLanguageTile(language: languages[index]);
          }),
    );
  }
}
