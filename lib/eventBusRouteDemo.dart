
import 'package:flutter/material.dart';
import 'doubleContentEvent.dart';
import 'stringContentEvent.dart';
import 'eventBusUtils.dart';

class EventBusRouteDemo extends StatefulWidget{
  @override
  State createState() {
    return _EventBusRouteDemoState();
  }
}

class _EventBusRouteDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventBusRouteDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('EventBusRouteDemo'),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
            EventBusUtils.getInstance().fire(DoubleContentEvent(2.2));
            EventBusUtils.getInstance().fire(StringContentEvent('I am data of the future'));
            Navigator.of(context).pop();
          }),
        ),
        body: Center(
          child: Text('EventBusRouteDemo'),
        ),
      ),
    );
  }
}

