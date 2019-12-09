import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_station/models/line.dart';

class ListCards extends StatelessWidget {

  final List<Line> lines;
  final void Function(BuildContext, Line) callback;
  const ListCards(this.lines, this.callback);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16.0),
        itemCount: lines.length,
        itemBuilder: (context, index) {

          return Container(
            width: 350.0,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 10.0,
              child: Wrap(
                children: <Widget>[
                  Image.asset(lines[index].image),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text(lines[index].name),
                    subtitle: Text('${lines[index].stations.length} estações'),
                  ),
                  ButtonTheme.bar( // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Estações'),
                          onPressed: () { this.callback(context, lines[index]); },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } 
      );
  }

}