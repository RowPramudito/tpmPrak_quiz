import 'package:flutter/material.dart';
import 'package:tmp_prak_quiz/game_store.dart';

class DetailPage extends StatefulWidget {
  final GameStore games;
  const DetailPage({Key? key, required this.games}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.games.name),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Image.network(
                        widget.games.imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  widget.games.name,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0, bottom: 5.0),
              child: Container(
                alignment: Alignment.topRight,
                child: Text(widget.games.price,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 10.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Text('About',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(widget.games.about,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Average Score'),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(widget.games.reviewAverage),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 2),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Text('Num. of Review'),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Text(widget.games.reviewCount),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Release date',
                      style: TextStyle(fontSize: 16)
                    ),
                    Text(widget.games.releaseDate,
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Tags',
                        style: TextStyle(fontSize: 16)
                    ),
                    Text(widget.games.tags.join(", "),
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black
                  ),
                  child: Text("Buy",
                    style: TextStyle(fontSize: 18, color: Colors.white)
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),]
      ),
    );
  }
}
