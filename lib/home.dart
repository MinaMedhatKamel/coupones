import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
        elevation: 50,
        backgroundColor: Color.fromRGBO(224,64, 251, 80),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        //systemOverlayStyle: SystemUiOverlayStyle.light,
      ),

      body:
          //padding: EdgeInsets.all(20.0),
          //margin: EdgeInsets.all(20.0),
          ListView.builder(
         padding: const EdgeInsets.all(12),
          //margin: EdgeInsets.all(10),
          itemBuilder: (context,index){ return card_builder(index);},
          //separatorBuilder: (context,index){ return const SizedBox(height: 5);},
          itemCount: 100,
          )

    );
  }
  Widget card_builder(int index)=> ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      /*ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
       trailing: Icon(    // NEW from here ...
           alreadySaved ? Icons.favorite : Icons.favorite_border,
         color: alreadySaved ? Colors.red : null,
       semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
     ),*/
      //width: double.infinity,
      child: ElevatedButton(
        child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
              decoration: BoxDecoration(//imagebox
                border: Border.all(width: 1.5,color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(25), // Image radius
                  child: Image(image:AssetImage("images/images (8).jpg"),
                      height: 25,
                      width: 25,
                      fit: BoxFit.cover
                  ),
                ),
              ),
            ),
              Container(
                /*decoration: const BoxDecoration(//boxshadow
                  boxShadow: [
                  BoxShadow(
                  blurRadius: 150,
                )
            ],
        ),*/
                padding: EdgeInsets.all(20),
                  child: Column(
                children: [
                  Text("Brand $index",
                      style:TextStyle( fontWeight: FontWeight.bold,fontSize:20,
                          shadows: [Shadow(
                            blurRadius: 6.0,
                            color: Colors.blue,
                            offset: Offset(2.0, 2.0),)])),
                  Text("20%",
                      style: TextStyle(fontSize: 12,
                          shadows: [Shadow(
                            blurRadius: 4.0,
                            color: Colors.blue,
                            offset: Offset(1.5, 1.5),)]))
                ],
              ))
            ]
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 70),
          primary://Colors.transparent,
          // Color.fromARGB(200, 200, 200, 200),
          Color.fromRGBO(255,64, 251, 200)
          //Colors.purpleAccent.withOpacity(0.8),
           /* shadowColor: Colors.transparent.withOpacity(0.1),
            side: BorderSide(
            width: 2,
           color: Colors.blue,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),*/
        ),
        onPressed: () {
          //addItemToList();
        },
       //)
      ),
    )
  //)
  );
}
