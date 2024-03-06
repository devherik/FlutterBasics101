import 'package:basic101/controllers/data_analytics_controller.dart';
import 'package:flutter/material.dart';
import 'package:basic101/config/app_globals.dart' as global;

class DataAnalyticsPage extends StatefulWidget {
  const DataAnalyticsPage({super.key});

  @override
  State<DataAnalyticsPage> createState() => _DataAnalyticsPageState();
}

class _DataAnalyticsPageState extends State<DataAnalyticsPage> {
  final controller = DataAnalyticsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Icon(
              Icons.code,
              color: global.brightGrey,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
