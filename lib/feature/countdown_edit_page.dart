import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunar/calendar/Lunar.dart';
import 'package:lunar/calendar/Solar.dart';
import 'package:timenote_flutter/core/app_router.gr.dart';
import 'package:timenote_flutter/core/util/date_utils.dart';
import 'package:timenote_flutter/feature/providers/countdown_edit_provider.dart';

@RoutePage()
class CountdownEditPage extends ConsumerStatefulWidget {
  const CountdownEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CountdownEditPageState();
}

class _CountdownEditPageState extends ConsumerState<CountdownEditPage> {

  @override
  Widget build(BuildContext context) {
    // final _countdownEditProvider = ref.watch(countdownEditProvider);
     final eventTypesAsync = ref.watch(eventTypeListProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Countdown Edit')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Edit your countdown here'),
            ElevatedButton(
              onPressed: () {
                // Implement your edit logic here
              },
              child: Text('Save Changes'),
            ),
             eventTypesAsync.when(
              data: (list) {
                return Row(children: [
                Text('Event Types: '),
                ...list.map((e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Chip(
                    label: Text(e.name),
                  ),
                )),
                ],);
              
              },
              loading: () => const CircularProgressIndicator(),
              error: (e, s) => Text('Error: $e'),
            ),
          ],
        ),
      ),
    );
  }
}
