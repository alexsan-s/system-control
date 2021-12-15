import 'package:flutter/material.dart';
import 'package:pokemon/view/pokedex.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text("What Pokemon are you looking for"),
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: "Search Pokemon, Movie, Ability, etc",
                decoration: const InputDecoration(icon: Icon(Icons.search)),
              ),
            ),
            Wrap(
              children: [
                optionCategorie(context, "Pokemon", Colors.green.shade900),
                optionCategorie(context, "Moves", Colors.red.shade900),
                optionCategorie(context, "Abilites", Colors.blue.shade900),
                optionCategorie(context, "Itens", Colors.yellow.shade900),
                optionCategorie(context, "Locations", Colors.purple.shade900),
                optionCategorie(context, "Type Charts", Colors.brown.shade900),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget optionCategorie(BuildContext context, String categorie, Color color) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Pokedex()),
      ),
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width / 2,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      color,
                      Colors.white70,
                    ],
                  )),
              child: Text(
                categorie,
                style:
                    const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
              )),
        ),
      ),
    );
  }
}
