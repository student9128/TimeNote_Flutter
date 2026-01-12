import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunar/calendar/Lunar.dart';
import 'package:lunar/calendar/Solar.dart';
import 'package:timenote_flutter/core/app_router.gr.dart';
import 'package:timenote_flutter/core/util/date_utils.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  Widget build(BuildContext context) {
    var lunar = Lunar.fromDate(DateTime.now());
    var jieqi = lunar.getJieQi();
    var solar = Solar.fromDate(DateTime.now());
    var fes = solar.getFestivals();
    var week = solar.getWeekInChinese();
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(DateTime.now().toString().formatDate('yyyy年MM月dd日')),
          Text('农历 ${lunar.toString()} ${jieqi.isNotEmpty ? '$jieqi' : ''} ${fes.isNotEmpty ? '${fes.first}' : ''} 星期$week',
              style: TextStyle(fontSize: 12))
        ],),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                // Navigate to Countdown Edit Page
                context.pushRoute(const CountdownEditRoute());
              },
              child: const Text('Go to Countdown Edit'),
            ),
          ],
        ),
      ),
    );
  }
}