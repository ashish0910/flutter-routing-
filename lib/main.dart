import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'page_one.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Routing",
      theme: new ThemeData(
        primarySwatch: Colors.pink ,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null ,
      ),
      home: new HomePage(),
      // routes: <String , WidgetBuilder>{
      //   "/a" : (BuildContext context) => new NewPage("New Page"),
      // }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Routing in Flutter"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0 ,
      ),
         drawer: new Drawer(
           child: new ListView(
             children: <Widget>[
               new UserAccountsDrawerHeader(
                 accountName: new Text("Ashish Aggarwal"),
                 accountEmail: new Text("ashish09101998@gmail.com"),
                 currentAccountPicture: new CircleAvatar(
                   backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.pink : Colors.white,
                   child: new Text("A"),
                 ),
                 otherAccountsPictures: <Widget>[
                   new CircleAvatar(
                     backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.pink : Colors.white,
                   child: new Text("A"),
                   )
                 ],
               ),
               new ListTile(
                title: new Text("Page One"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () { 
                  Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed("/a") ;
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage("Page One")
                  )); 
                  },
               ),
               new Divider(),
               new ListTile(
                title: new Text("Page Two"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () { 
                  Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed("/a") ; 
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage("Page Two")
                  ));
                  },
               ),
               new Divider(),
               new ListTile(
                title: new Text("Close"),
                trailing: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
               ),
             ],
           ),
         ),
         body: new Container(
           child: new Center(
             child: new Text("Welcome To HomePage" , style: new TextStyle(
               color: Colors.black,
             ),),
           ),
         ),
    );
  }
}