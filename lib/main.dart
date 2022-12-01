import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calendar Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body: SafeArea(
            child: SfCalendar(
              view: CalendarView.day,
              allowedViews: const <CalendarView>[
                CalendarView.day,
                CalendarView.week,
                CalendarView.workWeek
              ],
              timeSlotViewSettings: const TimeSlotViewSettings(timeIntervalHeight: -1),
            )) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
