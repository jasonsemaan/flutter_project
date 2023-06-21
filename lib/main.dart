import 'package:assessment_flutter/providers/weather_provider.dart';
import 'package:assessment_flutter/screens/daily.dart';
import 'package:assessment_flutter/screens/upcomming.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
  }

  List<Widget> tabsScreens = [DailyPage(), UpcommingPage()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Weather'),
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: 'Daily',
              ),
              Tab(
                text: 'Upcomming 2 weeks',
              ),
            ],
          ),
        ),
        body: TabBarView(children: tabsScreens),
      ),
    );
  }
}
