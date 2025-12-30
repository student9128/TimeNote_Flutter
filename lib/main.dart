import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:timenote_flutter/core/AppRouter.gr.dart';
import 'core/AppRouter.dart';
void main() {
  runApp(ProviderScope(child: TimeNoteApp()));
}

class TimeNoteApp extends StatelessWidget {
  TimeNoteApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
    );
  }
}
@RoutePage()
class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [HomeRoute(), MineRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        //在这里处理相关 index
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Mine'),
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
@RoutePage()
class CountdownEditPage extends ConsumerStatefulWidget {
  const CountdownEditPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CountdownEditPageState();
}

class _CountdownEditPageState extends ConsumerState<CountdownEditPage> {

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
