import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/language.dart';
import 'package:islam_app/screens/initial/bloc/initial_screen_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ListOfLanguageTile extends StatelessWidget {
  const ListOfLanguageTile({super.key, required this.language});

  final LanguageModel language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: () async {
          context
              .read<InitialScreenBloc>()
              .add(InitialScreenEvent.changeSelectedLanguage(type: language));
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 30,
                  child: CountryFlag.fromCountryCode(
                    language.code,
                    shape: const RoundedRectangle(4),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomText(
                    title: language.name,
                    fontSize: 16,
                    textColor: const Color(0xff034061),
                  ),
                ),
                BlocBuilder<InitialScreenBloc, InitialScreenState>(
                  buildWhen: (previous, current) {
                    return previous.selectedLanguage !=
                        current.selectedLanguage;
                  },
                  builder: (context, state) {
                    return Icon(
                      state.selectedLanguage?.code == language.code
                          ? Icons.check_box_outlined
                          : Icons.check_box_outline_blank_rounded,
                      size: 25,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
