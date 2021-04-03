import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges_okcodex/providers/contents_provider.dart';
import 'package:flutter_ui_challenges_okcodex/screens/authscreen.dart';
import 'package:flutter_ui_challenges_okcodex/screens/show_code.dart';
import 'package:provider/provider.dart';

import 'models/contents_item_model.dart';

void main() => runApp(
      ChangeNotifierProvider(
          create: (context) => ContentsProvider(),
          child: MaterialApp(
            home: MyApp(),
            debugShowCheckedModeBanner: false,
          )),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final providerContent = Provider.of<ContentsProvider>(context);

    List<Contents> contentsList = providerContent.getContents;

    print('content ${contentsList[0].toString()}');

    List<IconData> iconList = [
      Icons.lock,
      Icons.add,
      Icons.cast

    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
        child: Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: contentsList.length,
            itemBuilder: (context, i) {
              return Card(
                shape: RoundedRectangleBorder(
                  // side: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  child: ExpansionTile(

                    leading:Icon(iconList[i]),

                    title: Text(
                      contentsList[i].title,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    children: <Widget>[
                      Column(
                        children: _buildExpandableContent(contentsList[i],i),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _buildExpandableContent(Contents contentsItems,int i) {
    List<Widget> columnContent = [];

    int contentListIndex=i;

    contentsItems.subContents.asMap().forEach((index, value) {
      columnContent.add(
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> AuthScreen(contentListIndex,index)));
          },
          child: Container(
            child: ListTile(
              title: Text(
                value,
                style: TextStyle(fontSize: 18.0),
              ),
              leading: Icon(contentsItems.icon),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ),
      );
    });

    return columnContent;
  }
}
