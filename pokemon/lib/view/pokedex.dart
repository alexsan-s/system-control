import 'package:flutter/material.dart';
import 'package:pokemon/server/settingAPI.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: requestAPI('ability/'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Card();
            case ConnectionState.waiting:
              return const Card();
            case ConnectionState.active:
              return const Card();
            case ConnectionState.done:
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: snapshot.data['results'].length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Text(snapshot.data['results'][index]['name']),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
