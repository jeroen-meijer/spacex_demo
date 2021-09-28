import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rocket_repository/rocket_repository.dart';
import 'package:spacex_demo/home/home.dart';
import 'package:spacex_demo/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required RocketRepository rocketRepository,
  })  : _rocketRepository = rocketRepository,
        super(key: key);

  final RocketRepository _rocketRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _rocketRepository),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        dividerTheme: const DividerThemeData(
          indent: 16,
          space: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
