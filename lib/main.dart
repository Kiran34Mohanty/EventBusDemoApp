import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'eventBusUtils.dart';
import 'eventBusRouteDemo.dart';

void main() {
  runApp(
    MaterialApp(
      home: EventBusDemo(),
    )
  );
}

class EventBusDemo extends StatefulWidget {
  const EventBusDemo({Key? key}) : super(key: key);

  @override
  _EventBusDemoState createState() => _EventBusDemoState();
}

class _EventBusDemoState extends State<EventBusDemo> {

  String _content = 'I am data of the past';
  double _max = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EventBusDemo'),
          actions: [
            IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  EventBusUtils.getInstance().on().listen((event) {
                    print(event.str);
                    setState(() {
                      _content = event.str;
                    });
                  });
                  EventBusUtils.getInstance().on().listen((event) {
                    print(event.max);
                    setState(() {
                      _max = event.max;
                    });
                  });
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new EventBusRouteDemo()));
                })
          ],
        ),
        body: Center(
          child: Text(_content + _max.toString()),
        ),
    );
  }
}
