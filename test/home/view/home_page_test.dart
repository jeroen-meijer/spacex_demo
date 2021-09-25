import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_demo/home/home.dart';
import 'package:spacex_demo/home/widgets/home_page_content.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('HomePage', () {
    testWidgets(
      'renders HomeView',
      (tester) async {
        await tester.pumpApp(const HomePage());
        expect(find.byType(HomeView), findsOneWidget);
      },
    );
  });
  group('HomeView', () {
    testWidgets(
      'renders HomePageContent',
      (tester) async {
        await tester.pumpApp(const HomePageContent());
        expect(find.byType(HomePageContent), findsOneWidget);
      },
    );
  });
}
