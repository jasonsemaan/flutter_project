import 'package:assessment_flutter/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({super.key});

  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                height: 150,
                margin: EdgeInsets.all(30),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRavRWJNKFugMpr6FQlwIRtSRxzkQ46oDa7IRWgUYeDEc8KC2lmSThN334luavlsJF5HMA&usqp=CAU'),
                  radius: 220,
                )),
            Container(
              child: Text(
                'Daily',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                '30 °C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(80),
                  child: Column(children: [
                    Container(
                      child: Text(
                        'Location: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Name:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Region:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Country:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        'TimeZone:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Last Update:',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
