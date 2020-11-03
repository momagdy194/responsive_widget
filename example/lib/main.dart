import 'package:flutter/material.dart';
import 'package:responsive_widget/responsive_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClass(),
    );
  }
}


class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveUi(builder: (context, size) =>ListView(children: [

      Text('title',style: TextStyle(fontSize: size.titleText)),///titleText
      Text('subTitle',style: TextStyle(fontSize: size.normalText))///normal

      ,Icon(Icons.error,size: size.normalIconSize)/// normal iconSize;
      ,Icon(Icons.error,size: size.mediumIconSize,)///medium iconSize;
      ,Icon(Icons.error,size: size.bigIconSize,)///big iconSize;
      ,
      Container(height:size.normalButton,child: RaisedButton(onPressed: (){},child: Text("Normal Button",)))///normalButtotn
      ,SizedBox(height: 15,)
      ,  Container(height:size.largeButton,child: RaisedButton(onPressed: (){},child: Text("large Button",)))///largeButton
      ///
      ,Image(image: AssetImage("assets/images/userImage.png"),height:size.largeImage ,),///large image,
      Image(image: AssetImage("assets/images/userImage.png"),height:size.mediumImage ,),///medium image,
      Image(image: AssetImage("assets/images/userImage.png"),height:size.smallImage  ,),///small image,


      SizedBox(height: 19,)
    ],) ,));
  }
}
