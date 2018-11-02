import 'package:flutter/material.dart';
import 'package:sms_parent/phyo/messaging/viewdata.dart';

class MessageView extends StatefulWidget{
  final ReceiveData receiveData;
  final VoidCallback onAction;
  final CurvedAnimation animation;

  MessageView({this.receiveData, this.onAction, this.animation});
StateViewPage createState() => new StateViewPage();
//final ReceiveData mess;
//ReceiveData({this.mess});
  }
  class StateViewPage extends State<MessageView>{

    @override
    Widget build(BuildContext context){
      ReceiveData receiveData = widget.receiveData;
      String title=receiveData.recipient;
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: Text(
                          "Title",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontFamily: "Serif",fontWeight: FontWeight.w600,fontSize: 18.0),
                          overflow: TextOverflow.ellipsis,
                          
                          //style: Theme.of(context).textTheme.body2
                          
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 15.0),
                        child: Text(receiveData.title,
                        style: TextStyle(fontFamily: "Serif",fontSize: 16.0),
                          overflow: TextOverflow.ellipsis,)
                      ),
                      Divider(
                        height: 10.0,
                        indent: 35.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: Text("Description",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: "Serif",fontWeight: FontWeight.w600,fontSize: 18.0),
                          overflow: TextOverflow.ellipsis,
                            //style: Theme.of(context).textTheme.body2
                            ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 14.0, right: 14.0, bottom: 14.0),
                        child: Text(receiveData.message,
                        style: TextStyle(fontFamily: "Serif",fontSize: 16.0),
                          ),
                      ),
                      Divider(
                        height: 10.0,
                        indent: 35.0,
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
  }

