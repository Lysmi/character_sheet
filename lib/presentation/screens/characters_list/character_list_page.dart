import 'package:character_sheet/core/errors/database_error.dart';
import 'package:character_sheet/core/errors/error.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/characters_list/widgets/character_item.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants.dart';
import '../../provider_models/character_list_provider_model.dart';
import '../character_stats/character_stats_page.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterListProviderModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "D&D characters",
              style: headerTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: currTheme.mainColor,
          toolbarHeight: toolbarHeight,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.topCenter,
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                children: [
                  Consumer<CharacterListProviderModel>(
                    builder: (context, charactersProvider, child) => FutureBuilder(
                      future: charactersProvider.getAllCharacter(),
                      builder: (context, AsyncSnapshot<List<CharacterEntity>> snapshot) {
                        if (snapshot.hasData) {
                          return snapshot.data?.isNotEmpty ?? false
                              ? Expanded(
                                  child: ListView.builder(
                                    itemCount: snapshot.data?.length,
                                    itemBuilder: (BuildContext context, int index) => Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                                      child: CharacterItem(snapshot.data![index]),
                                    ),
                                  ),
                                )
                              : const Text("Not have characters");
                        } else if (snapshot.hasError) {
                          if (snapshot.error is! AppError) {
                            return const Text('Error: unexpected error');
                          }
                          if (snapshot.error is DatabaseError) {
                            return Text(
                              'DatabaseError: ${(snapshot.error as DatabaseError).message}',
                            );
                          } else {
                            return Text(
                              'AppError: ${(snapshot.error as AppError).message}',
                            );
                          }
                        } else {
                          return const Text('Awaiting..');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Consumer<CharacterListProviderModel>(
          builder: (context, charactersProvider, child) => FloatingActionButton(
            onPressed: () async {
              CharacterEntity newCharacter = await charactersProvider.addCharacter();
              Route characterStatsRoute = MaterialPageRoute(
                  builder: (context) => CharacterStats(characterEntity: (newCharacter)));
              Navigator.push(context, characterStatsRoute);
            },
            backgroundColor: currTheme.greenDarkColor,
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
