import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/characters_list/widgets/character_item.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_list_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterListProviderModel(),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            alignment: Alignment.topCenter,
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                Text(
                  "D&D characters",
                  style: headerTextStyle,
                ),
                Consumer<CharacterListProviderModel>(
                  builder: (context, charactersProvider, child) =>
                      FutureBuilder(
                    future: charactersProvider.getAllCharacter(),
                    builder: (context,
                        AsyncSnapshot<List<CharacterEntity>> snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data?.isNotEmpty ?? false
                            ? Expanded(
                              child: ListView.builder(
                                  itemCount: snapshot.data?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          CharacterItem(snapshot.data![index]),
                                ),
                            )
                            : const Text("Not have characters");
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
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
        floatingActionButton: Consumer<CharacterListProviderModel>(
          builder: (context, charactersProvider, child) => FloatingActionButton(
            onPressed: () => charactersProvider.addCharacter(),
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
