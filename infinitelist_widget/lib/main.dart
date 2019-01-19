import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(
    new MaterialApp(
      home: RandmWords(),
    ),
  );
}

class RandmWords extends StatefulWidget {
  @override
  _RandmWordsState createState() => _RandmWordsState();
}

class _RandmWordsState extends State<RandmWords> {
  final _suggestion = <WordPair>[];
  final _save = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Lista infinita"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list),onPressed:_pushSaved,)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles =_save.map(
            (pair){
              return new ListTile(title: new Text(pair.asPascalCase),);
            }
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Guadadas"),
            ),
            body: new ListView(
              children: divided,
            ),
          );
        }
        ),
    );
  }

  Widget _buildRow(WordPair pair){
    final bool alreadySaved = _save.contains(pair);
    for (var item in _save){
      print(item);
    }
    return ListTile(
      title: new Text(
        pair.asPascalCase,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border , color: Colors.redAccent,),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _save.remove(pair);
          }else{
            _save.add(pair);
          }
          
        });
      },
    );
  }

  Widget _buildSuggestions(){
  return new ListView.builder(
    itemBuilder: (context, i){
      if(i.isOdd) return new Divider();

      final index = i ~/ 2;
      if(index >= _suggestion.length){
        _suggestion.addAll(generateWordPairs().take(10));
      } 
      return _buildRow( _suggestion[index]);
    },
  );
}



}

