import 'package:flutter/material.dart';
import 'package:jackson_website/client/backend_client.dart';
import 'package:jackson_website/constants/constants.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SummonerLookupScreen extends StatelessWidget {
  const SummonerLookupScreen({super.key});

  FormGroup buildForm() => fb.group(<String, Object>{
        'name': FormControl<String>(value: ''),
        'tag': FormControl<String>(value: ''),
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4A15B),
      body: ReactiveFormBuilder(
          form: buildForm,
          builder: (context, form, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.4,
                  MediaQuery.of(context).size.width * 0.4,
                  MediaQuery.of(context).size.width * 0.4,
                  MediaQuery.of(context).size.width * 0.4,
                ),
                child: Column(
                  children: [
                    ReactiveTextField<String>(
                      formControlName: 'name',
                      decoration: InputDecoration(labelText: 'Name', labelStyle: googleFontStyle, contentPadding: const EdgeInsets.symmetric(vertical: 8)),
                    ),
                    ReactiveTextField<String>(
                      minLines: 1,
                      maxLines: 10,
                      formControlName: 'tag',
                      decoration: InputDecoration(labelText: 'Tag', labelStyle: googleFontStyle),
                    ),
                    seperation,
                    seperation,
                    seperation,
                    TextButton(
                        onPressed: () async {
                          BackendClient client = BackendClient();
                          dynamic result = await client.getData(
                            uri: 'https://platform_id.api.riotgames.com',
                            path: '/lol/match/v5/matches/by-puuid/GtgBmKju4NlOHFPYThD3nUvQn7Ywnl9N8S60-qFAWCG3ARFOTZTNq7slFspuXDM9lF6Q0x-1LSiQYg/ids',
                          );
                          print('jackson $result');
                          print(result);
                        },
                        child: Text(
                          'Search Match History',
                          style: googleFontStyle.copyWith(color: white),
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
