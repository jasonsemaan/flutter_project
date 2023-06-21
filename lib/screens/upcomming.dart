import 'package:assessment_flutter/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'item_details.dart';

class UpcommingPage extends StatefulWidget {
  const UpcommingPage({super.key});

  @override
  State<UpcommingPage> createState() => _UpcommingPageState();
}

class _UpcommingPageState extends State<UpcommingPage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<WeatherProvider>(context, listen: false).getAllItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WeatherProvider>(builder: (context, value, child) {
        if (value.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final listJson = value.weathers;
        return ListView.builder(
          itemCount: listJson.length,
          itemBuilder: (context, index) {
            final todo = listJson[index];
            return ListTile(
              onTap: () {
                !todo.completed
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListItem(todo.title),
                        ),
                      )
                    : null;
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static-00.iconduck.com/assets.00/flutter-icon-512x512-k9y8x41t.png'),
              ),
              title: Text(
                todo.title,
                style: TextStyle(
                  color: todo.completed ? Colors.grey : Colors.black,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
