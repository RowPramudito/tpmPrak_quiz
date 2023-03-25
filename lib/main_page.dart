import 'package:flutter/material.dart';
import 'package:tmp_prak_quiz/detail_page.dart';
import 'package:tmp_prak_quiz/game_store.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemCount: gameList.length,
          itemBuilder: (context, index) {
            final GameStore games = gameList[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => DetailPage(games: games))
                  );
                },
                child: GridTile(
                  child: Image.network(
                    games.imageUrls[0],
                    fit: BoxFit.cover,
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(
                      games.name,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      games.price,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


