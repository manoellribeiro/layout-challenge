import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:first_desafio/app/modules/home/pages/itemPage/itemPage_page.dart';

main() {
  testWidgets('ItemPagePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ItemPagePage(title: 'ItemPage')));
    final titleFinder = find.text('ItemPage');
    expect(titleFinder, findsOneWidget);
  });
}
