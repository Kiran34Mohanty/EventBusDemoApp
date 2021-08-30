import 'package:event_bus/event_bus.dart';

class EventBusUtils {
   static late EventBus _instance = new EventBus();

   static EventBus getInstance() {
     return _instance;
   }
}