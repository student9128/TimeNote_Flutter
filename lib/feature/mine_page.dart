import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunar/calendar/Lunar.dart';
import 'package:lunar/calendar/Solar.dart';
import 'package:timenote_flutter/core/app_router.gr.dart';
import 'package:timenote_flutter/core/util/date_utils.dart';
@RoutePage()
class MinePage extends ConsumerStatefulWidget {
  const MinePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MinePageState();
}

class _MinePageState extends ConsumerState<MinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mine Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Mine Page!'),
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
