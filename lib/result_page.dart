import 'package:flutter/material.dart';
import 'main.dart';
import 'player.dart';

List<DataRow> playerList = [];

class ResultPage extends StatelessWidget {
  ResultPage({required this.score, required this.name});
  final int score;
  final String name;

  @override
  Widget build(BuildContext context) {
    playerList.add(DataRow(cells:<DataCell>[DataCell(Text('$name')), DataCell(Text('$score'))]));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "The scoreboard",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    'Name',
                  )
                ),
                DataColumn(
                    label: Text(
                      'Score',
                    )
                )
              ],
              rows: playerList,
            )
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstScreen()));
            },
            child: Expanded(
              child: Container(
                child: const Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueGrey,
                height: 50.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
